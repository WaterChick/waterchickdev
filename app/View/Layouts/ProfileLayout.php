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

class ProfileLayout extends Layout
{
    /**
     * The Breadcrumb navigation.
     */
    protected BreadcrumbList $breadcrumbs;

    public function __construct(array $props = [])
    {
        parent::__construct($props);

        $this->breadcrumbs = new BreadcrumbList;

        $this->breadcrumbs->append(BreadcrumbItem::make(__('User Dashboard'), Link::to(route('profile.edit'))));
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
                            title: __('Profile'),
                            action: Link::to(route('profile.edit')),
                            icon: new Icon('user'),
                        )->active(routes: [
                            'profile.edit',
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
