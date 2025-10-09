<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\View\Layouts\AdminLayout;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;
use Inertia\Inertia;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;
use StackTrace\Ui\Link;
use StackTrace\Ui\Table;
use StackTrace\Ui\Table\Columns;
use StackTrace\Ui\Table\Actions;

class UserController extends Controller
{
    public function index() {
        $table = Table::make(User::query())
        ->searchable(function (Builder $builder, string $term) {
            $column = Str::contains($term, '@') ? 'email' : 'name';

            $builder->where(DB::raw("lower({$column})"), 'like', '%'.Str::lower($term).'%');
        })
        ->withColumns([
            Columns\Text::make(__('Name'), 'name')
                ->fontMedium()
                ->link(fn (User $user) => Link::to(route('admin.users.edit', $user))),

            Columns\Text::make(__('Email'), 'email')
                ->width(60),

            Columns\Icon::make(__('Is Admin'), fn(User $user) => $user->is_admin ? 'circle-check' : 'circle-x')
                ->alignCenter()
                ->style(function (Table\Style $style, User $user) {
                    if ($user->is_admin) {
                        $style->color('destructive');
                    } else {
                        $style->color('positive');
                    }
                })
                ->width(10),

            Columns\DateTime::make(__('Created At'), 'created_at')
                ->sortable(using: 'created_at', default: Table\Direction::Desc),
        ])
        ->withActions([
            Actions\Link::make(__('Edit'), fn(User $user) => route('admin.users.edit', $user)),
        ]);


        return Inertia::render('Admin/Users/UserListPage', AdminLayout::make([
            'users' => $table,
        ])->breadcrumb(BreadcrumbItem::make(__('Users'))));
    }

    public function edit(User $user) {
        return Inertia::render('Admin/Users/UserFormPage', AdminLayout::make([
            'user' => [
                'id' => $user->id,
                'name' => $user->name,
                'email' => $user->email,
                'isAdmin' => $user->is_admin
            ],
        ])->breadcrumb([
            BreadcrumbItem::make(__('Users'), Link::to(route('admin.users.index'))),
            BreadcrumbItem::make(__($user->name)),
        ]));
    }

    public function update(Request $request, User $user) {
        $request->validate([
            'name' => ['required', 'string', 'max:191'],
            'email' => ['required', 'string', 'email', 'max:191', Rule::unique(User::class, 'email')->ignoreModel($user)],
            'is_admin' => ['boolean']
        ]);

        $isAdmin = $request->boolean('is_admin');

        if (Auth::user()->is($user) && ! $isAdmin) {
            throw ValidationException::withMessages([
                'is_admin' => __('You cannot remove admin permissions from yourself.'),
            ]);
        }

        $user->fill([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'is_admin' => $isAdmin
        ]);

        $user->save();

        return back();
    }
}
