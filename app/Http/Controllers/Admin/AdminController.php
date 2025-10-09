<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\View\Layouts\AdminLayout;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;
use StackTrace\Ui\Breadcrumbs\BreadcrumbItem;

class AdminController extends Controller
{
    public function __invoke() {

        return Inertia::render('Admin/HubPage', AdminLayout::make([

        ])->breadcrumb(BreadcrumbItem::make(__('Panel'))));
    }
}
