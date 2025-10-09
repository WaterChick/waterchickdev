<?php

namespace App\Http\Controllers\Status;

use App\Http\Controllers\Controller;
use App\Models\Plugin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class PluginUnpublishController extends Controller
{
    public function __invoke(Plugin $plugin) {
        Gate::authorize('unpublish', $plugin);
            
        if($plugin->canBeUnpublished()) {
            $plugin->unpublish();
        }
    }
}
