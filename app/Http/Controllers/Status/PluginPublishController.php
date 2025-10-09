<?php

namespace App\Http\Controllers\Status;

use App\Http\Controllers\Controller;
use App\Models\Plugin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class PluginPublishController extends Controller
{
    public function __invoke(Plugin $plugin) {
        Gate::authorize('publish', $plugin);
        
        if ($plugin->canBePublished()) {
            $plugin->publish();
        } 
    }

}
