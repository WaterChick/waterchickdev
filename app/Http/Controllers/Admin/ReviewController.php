<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Review;
use App\Table\Actions\DeleteAction;
use App\View\Layouts\AdminLayout;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Str;
use Inertia\Inertia;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;
use StackTrace\Ui\Table;
use StackTrace\Ui\Table\Columns;
use StackTrace\Ui\Table\Actions;
use StackTrace\Ui\Link;


class ReviewController extends Controller
{
    public function index() {
        $user = Auth::user();
        $isAdmin = $user->is_admin;

        $table = Table::make(Review::query())
            ->searchable(fn (Builder $builder, string $term) => $builder->where('name', 'like', '%'.Str::lower($term).'%')) 
            ->withColumns([
                Columns\Text::make(__('Name'), 'name')
                    ->fontMedium()
                    ->link(fn (Review $review) => Link::to(route('admin.reviews.edit', $review))),

                Columns\Text::make(__('Rating'), 'rating')
                    ->alignCenter()
                    ->width(60),

                Columns\DateTime::make(__('Created At'), 'created_at')
                    ->sortable(using: 'created_at', default: Table\Direction::Desc),
            ])

            ->withActions([
                Actions\Link::make('Edit', fn(Review $review) => Link::to(route('admin.reviews.edit', $review))),

                DeleteAction::make(Review::class)
                    ->can(fn (Review $review) => Gate::allows('delete', $review))
                    ->bulk()
            ]);

        return Inertia::render('Admin/Reviews/ReviewListPage', AdminLayout::make([
            'reviews' => $table,
            'user' => [
                'isAdmin' => $isAdmin
            ]
        ])->breadcrumb(BreadcrumbItem::make(__('Sidebar:Reviews'))));
    }

    public function create(Review $review) {
        $review = Review::create([
            'name' => __('New Review'),
        ]);

        return to_route('admin.reviews.edit', $review);
    }

    public function edit(Review $review) {
        return Inertia::render('Admin/Reviews/ReviewFormPage', AdminLayout::make([
            'review' => [
                'id' => $review->id,
                'name' => $review->name,
                'description' => $review->description,
                'rating' => $review->rating,
                'user_avatar_path' => $review->user_avatar_path,
                'user_avatar_url' => $review->getUserAvatarURL(),
            ]
        ])->breadcrumb([
            BreadcrumbItem::make(__('Sidebar:Reviews'), Link::to(route('admin.reviews.index'))),
            BreadcrumbItem::make($review->name),
        ]));
    }

    public function update(Request $request, Review $review) {
        $request->validate([
            'name' => ['required', 'string'],
            'description' => ['nullable', 'string', 'max:1000'],
            'rating' => ['nullable', 'integer'],
            'user_avatar_path' => ['nullable', 'string']
        ]);

        $review->update([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'rating' => $request->input('rating'),
            'user_avatar_path' => $request->input('user_avatar_path'),
        ]);

        $review->save();

        return to_route('admin.reviews.index');
    }
}
