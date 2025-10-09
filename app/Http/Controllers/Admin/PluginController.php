<?php

namespace App\Http\Controllers\Admin;

use App\Enums\PluginCategory;
use App\Enums\PluginStatus;
use App\Http\Controllers\Controller;
use App\Models\Plugin;
use App\Table\Actions\DeleteAction;
use App\View\Layouts\AdminLayout;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Str;
use Inertia\Inertia;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;
use StackTrace\Ui\Link;
use StackTrace\Ui\Table;
use StackTrace\Ui\Table\Columns;
use StackTrace\Ui\Table\Actions;

class PluginController extends Controller
{
    public function index() {
        $user = Auth::user();
        $isAdmin = $user->is_admin;
        
        $table = Table::make(Plugin::query())
            ->searchable(fn (Builder $builder, string $term) => $builder->where('title', 'like', '%'.Str::lower($term).'%')) 
            ->withColumns([
                Columns\Text::make('Title', 'title')
                    ->fontMedium()
                    ->link(fn (Plugin $plugin) => Link::to(route('admin.plugin.edit', $plugin))),
                Columns\Badge::make('Status', function (Plugin $plugin) {
                    return $plugin->status;
                })
                ->label([
                    PluginStatus::PUBLISHED->value => PluginStatus::PUBLISHED->label(),
                    PluginStatus::DRAFT->value     => PluginStatus::DRAFT->label(),
                ])
                ->variant([
                    PluginStatus::PUBLISHED->value => 'positive',
                    PluginStatus::DRAFT->value     => 'destructive',
                ])
                ->width(40),
            ])
            ->withActions([
                Actions\Link::make(__('Edit'), fn(Plugin $plugin) => route('admin.plugin.edit', ['plugin' => $plugin->uuid]) ),

                DeleteAction::make(Plugin::class)
                    ->can(fn (Plugin $plugin) => Gate::allows('delete', $plugin))
                    ->bulk(),
                
            ]);
        
        return Inertia::render('Admin/Plugins/PluginListPage', AdminLayout::make([
            'plugins' => $table,
            'user' => [
                'isAdmin' => $isAdmin
            ]
        ])->breadcrumb(BreadcrumbItem::make(__('Sidebar:Plugins'))));
    }

    public function create(Plugin $plugin) {
        Gate::authorize('create', Plugin::class);

        $plugin = Plugin::create([
            'uuid' => Str::uuid(),
            'title' => 'New Plugin',
            'status' => PluginStatus::DRAFT,
            'plugin_id' => 0,
        ]);

        return to_route('admin.plugin.edit', ['plugin' => $plugin->uuid]);
    }

    public function edit($uuid) {
        Gate::authorize('view', Plugin::class);

        $user = Auth::user();
        $isAdmin = $user->is_admin;

        $plugin = Plugin::query()
            ->where('uuid', $uuid)
            ->firstOrFail();
        
        $categoriesOptions = collect(PluginCategory::cases())->map(function ($case) {
            return [
                'value' => $case->value,
                'label' => $case->defaultValue(),
            ];
        });

        // dd($categoriesOptions->toArray());

        return Inertia::render('Admin/Plugins/PluginFormPage', AdminLayout::make([
            'plugin' => [
                'id' => $plugin->id,
                'slug' => $plugin->slug,
                'uuid' => $plugin->uuid,
                'plugin_id' => $plugin->plugin_id,
                'title' => $plugin->title,
                'description' => $plugin->description,
                'cover_image_path' => $plugin->cover_image_path,
                'cover_image_url' => $plugin->getCoverImageURL(),
                'additional_images' => $plugin->additional_images ?? [],
                'additional_images_urls' => $plugin->getAdditionalImagesURLs(),
                'status' => $plugin->status,
                'tags' => $plugin->tags ?? [],
                'categories' => $plugin->categories ?? [],
            ],
            'categoriesOptions' => $categoriesOptions,
            'user' => [
                'isAdmin' => $isAdmin
            ]
        ])->breadcrumb([
            BreadcrumbItem::make(__('Sidebar:Plugins'), Link::to(route('admin.plugins.index'))),
            BreadcrumbItem::make($plugin->title),
        ]));
    }

    public function update(Request $request, Plugin $plugin) {
        Gate::authorize('update', $plugin);

        $request->validate([
            'title' => 'required|string',
            'description' => 'nullable|min:20|max:1000',
            'cover_image_path' => 'nullable|string',
            'additional_images' => 'nullable|array',
            'additional_images.*' => 'string',
            'tags' => 'nullable|array',
            'tags.*' => 'string',
            'plugin_id' => 'required|integer',
            'categories' => 'nullable|array',
            'categories.*' => 'string',
        ]);

        $plugin->update([
            'title' => $request->input('title'),
            'slug' => Str::slug($request->input('title')),
            'description' => $request->input('description'),
            'cover_image_path' => $request->input('cover_image_path'),
            'additional_images' => $request->input('additional_images') ?? [],
            'tags' => $request->input('tags') ?? [],
            'plugin_id' => $request->input('plugin_id') ?? 0,
            'categories' => $request->input('categories') ?? [],
        ]);

        return to_route('admin.plugins.index');
    }

}
