<?php

namespace App\View\Layouts;

use App\Enums\Preference;
use App\Facades\Settings;
use App\View\Layout;
use Closure;
use Illuminate\Support\Arr;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;
use StackTrace\Ui\Breadcrumbs\BreadcrumbList;
use StackTrace\Ui\Icon;
use StackTrace\Ui\Link;
use StackTrace\Ui\Menu\Menu;
use StackTrace\Ui\Menu\MenuItem;

class AdminLayout extends Layout
{
    /**
     * The Breadcrumb navigation.
     */
    protected BreadcrumbList $breadcrumbs;

    public function __construct(array $props = [])
    {
        parent::__construct($props);

        $this->breadcrumbs = new BreadcrumbList;

        $this->breadcrumbs->append(BreadcrumbItem::make(__('Admin Panel'), Link::to(route('dashboard'))));
    }

    /**
     * Add a breadcrumb item to the list.
     */
    public function breadcrumb(BreadcrumbItem|array|Closure $item): static
    {
        if ($item instanceof Closure) {
            call_user_func($item, $this->breadcrumbs);
        } else {
            foreach (Arr::wrap($item) as $breadcrumb) {
                $this->breadcrumbs->append($breadcrumb);
            }
        }

        return $this;
    }

    /**
     * The Sidebar menu configuration.
     */
    protected function sidebar(): Menu
    {
        return Menu::make()
            ->add(
                MenuItem::make()
                    ->addChild(
                        MenuItem::make(
                            title: __('Panel'),
                            action: Link::to(route('dashboard')),
                            icon: new Icon('house'),
                        )->active(routes: [
                            'dashboard',
                        ])
                    )
                    ->addChild(
                        MenuItem::make(
                            title: __('Sidebar:Plugins'),
                            action: Link::to(route('admin.plugins.index')),
                            icon: new Icon('package'),
                        )->active(routes: [
                            'admin.plugins.index',
                        ])
                    )
                    ->addChild(
                        MenuItem::make(
                            title: __('Sidebar:Reviews'),
                            action: Link::to(route('admin.reviews.index')),
                            icon: new Icon('star'),
                        )->active(routes: [
                            'admin.reviews.index',
                        ])
                    )
                    ->addChild(
                        MenuItem::make(
                            title: __('Sidebar:Licenses'),
                            action: Link::to(route('admin.licenses.index')),
                            icon: new Icon('key'),
                        )->active(routes: [
                            'admin.licenses.index',
                        ])
                    )
                    ->addChild(
                        MenuItem::make(
                            title: __('Sidebar:Users'),
                            action: Link::to(route('admin.users.index')),
                            icon: new Icon('users'),
                        )->active(routes: [
                            'admin.users.index',
                        ])
                    )
            );
    }

    public function toLayout(): array
    {
        return [
            'sidebar' => $this->sidebar(),
            'breadcrumbs' => $this->breadcrumbs,
        ];
    }

    /**
     * Create a new layout instance.
     */
    public static function make(): static
    {
        return new static(...func_get_args());
    }
}
