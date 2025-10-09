<?php

namespace App\Http\Controllers;

use App\Enums\PluginStatus;
use App\Models\Plugin;
use App\Models\Review;
use App\View\Models\PluginUIViewModel;
use App\View\Models\ReviewUIViewModel;
use Inertia\Inertia;

class HomeController extends Controller
{
    public function __invoke() {
        $plugins = Plugin::query()
            ->where('status', PluginStatus::PUBLISHED)
            ->get()
            ->map(fn(Plugin $plugin) => (new PluginUIViewModel($plugin)));

        $reviews = Review::all()->map(fn (Review $review) => (new ReviewUIViewModel($review)));

        // dd($plugins->toArray());
        return Inertia::render('Home/HomePage', [
            'plugins' => $plugins,
            'reviews' => $reviews,
        ]);
    }
}
