<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\License;
use App\Models\Plugin;
use App\Table\Actions\DeleteAction;
use App\View\Layouts\AdminLayout;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use Inertia\Inertia;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;
use StackTrace\Ui\Table;
use StackTrace\Ui\Table\Columns;
use StackTrace\Ui\Table\Actions;
use StackTrace\Ui\Link;


class LicenseController extends Controller
{
    public function index() {
        $user = Auth::user();
        $isAdmin = $user->is_admin;

        $table = Table::make(License::query())
            ->searchable(fn (Builder $builder, string $term) => $builder->where('discord_user', 'like', '%'.Str::lower($term).'%'))
            ->withColumns([
                Columns\Text::make('IP', 'ip')
                    ->fontMedium()
                    ->link(fn (License $license) => Link::to(route('admin.licenses.edit', $license)) ),
                Columns\Text::make(__('Domain'), 'domain')
                    ->alignCenter()
                    ->width(60),
                Columns\Text::make(__('License ID'), 'license_id')
                    ->alignCenter(),
                Columns\Text::make(__('Plugin ID'), 'plugin_id')
                    ->alignCenter(),
                Columns\Text::make(__('Name'), 'discord_user')
                    ->alignCenter(),
                Columns\DateTime::make(__('Created At'), 'created_at')
                    ->sortable(using: 'created_at', default: Table\Direction::Desc),
            ])
            ->withActions([
                Actions\Link::make(__('Edit'), fn(License $license) => route('admin.licenses.edit', $license) ),

                DeleteAction::make(License::class)
                    ->can(fn (License $license) => Gate::allows('delete', $license))
                    ->bulk(),
                
            ]);

        return Inertia::render('Admin/Licenses/LicenseListPage', AdminLayout::make([
            'licenses' => $table,
            'user' => [
                'isAdmin' => $isAdmin
            ]
        ])->breadcrumb(BreadcrumbItem::make(__('Sidebar:Licenses'), Link::to(route('admin.licenses.index')))));
    }

    public function create(License $license) {
        $license = License::create([]);

        return to_route('admin.licenses.edit', $license);
    }

    public function edit(License $license) {
        $plugins = Plugin::all();

        return Inertia::render('Admin/Licenses/LicenseFormPage', AdminLayout::make([
            'license' => [
                'id' => $license->id,
                'ip' => $license->ip,
                'domain' => $license->domain,
                'license_id' => $license->license_id,
                'discord_user' => $license->discord_user,
                'plugin_id' => $license->plugin_id,
            ],
            'plugins' => $plugins,
        ])->breadcrumb([
            BreadcrumbItem::make(__('Sidebar:Licenses'), Link::to(route('admin.licenses.index'))),
            BreadcrumbItem::make($license->discord_user ?? 'Undefined User'),
        ]));
    }

    public function update(Request $request, License $license)
    {
        $request->validate([
            'ip' => ['nullable', 'string'],
            'domain' => ['nullable', 'string'],
            'discord_user' => ['nullable', 'string', 'max:191'],
            'plugin_id' => ['nullable', 'string'],
            'license_id' => ['nullable', 'string']
        ]);

        $license->update([
            'discord_user' => $request->input('discord_user'),
            'ip' => $request->input('ip'),
            'domain' => $request->input('domain'),
            'plugin_id' => $request->input('plugin_id'),
            'license_id' => $request->input('license_id'),
        ]);

        return to_route('admin.licenses.index');
    }

    public function generateLicenseId(License $license)
    {
        $license->license_id = (string) Str::uuid();
        $license->save();

        return Inertia::render('Admin/Licenses/LicenseFormPage', AdminLayout::make([
            'license' => [
                'id' => $license->id,
                'ip' => $license->ip,
                'domain' => $license->domain,
                'license_id' => $license->license_id,
                'discord_user' => $license->discord_user,
                'plugin_id' => $license->plugin_id,
            ],
            'plugins' => Plugin::all(),
        ])->breadcrumb([
            BreadcrumbItem::make(__('Sidebar:Licenses'), Link::to(route('admin.licenses.index'))),
            BreadcrumbItem::make($license->discord_user ?? 'Undefined User'),
        ]));
    }

    public function validateLicense(Request $request)
{
    $data = $request->validate([
        'licenseId' => ['required', 'string'],
        'pluginId'  => ['required', 'integer'],
    ]);

    $ip = $request->header('X-Real-Client-IP', $request->ip());

    $license = License::where('license_id', $data['licenseId'])
        ->where('plugin_id', $data['pluginId'])
        ->where(function ($query) use ($ip) {
            $query->whereNull('ip')->orWhere('ip', $ip);
        })
        ->first();

    $exists = $license !== null;

    Log::info('License validation check', [
        'ip'         => $ip,
        'license_id' => $data['licenseId'],
        'plugin_id'  => $data['pluginId'],
        'status'     => $exists ? 'VALID' : 'INVALID',
    ]);

    if (!$exists) {
        return response()->json([
            'message' => 'License not found',
        ], 404);
    }

    // === Generování offline tokenu ===
    $graceDays = 3; // můžeš později dát do configu
    $now = time();
    $validUntil = $now + ($graceDays * 24 * 60 * 60);

    $payload = json_encode([
        'pluginId'   => (string) $data['pluginId'],
        'licenseId'  => $data['licenseId'],
        'iat'        => $now,
        'validUntil' => $validUntil,
    ], JSON_UNESCAPED_SLASHES);

    // Načtení privátního klíče
    $privateKey = openssl_pkey_get_private(
        file_get_contents(storage_path('keys/license_private.pem'))
    );

    if ($privateKey === false) {
        Log::error('Failed to load private key for license signing');
        return response()->json(['message' => 'Server error'], 500);
    }

    $signature = '';
    $success = openssl_sign($payload, $signature, $privateKey, OPENSSL_ALGO_SHA256);

    if (!$success) {
        Log::error('Failed to sign license token');
        return response()->json(['message' => 'Server error'], 500);
    }

    // Token formát: base64url(payload).base64url(signature)
    $token = $this->base64UrlEncode($payload) . '.' . $this->base64UrlEncode($signature);

    // Vrátíme přímo token jako plain text (status 200)
    return response($token, 200)
        ->header('Content-Type', 'text/plain');
}

    /**
     * Base64 URL-safe encode (bez paddingu)
     */
    private function base64UrlEncode(string $data): string
    {
        return rtrim(strtr(base64_encode($data), '+/', '-_'), '=');
    }





}
