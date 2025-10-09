
<?php

use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\LicenseController;
use App\Http\Controllers\Admin\PluginController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\Admin\UploadCoverImageController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\Status\PluginPublishController;
use App\Http\Controllers\Status\PluginUnpublishController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

Route::get('/', HomeController::class)->name('home');

Route::middleware('auth')->group(function() {
    Route::get('profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::prefix('admin')
    ->middleware('auth')
    ->group(function() {
        Route::get('/', AdminController::class)->name('dashboard');

        Route::get('plugins', [PluginController::class, 'index'])->name('admin.plugins.index');
        Route::post('plugins', [PluginController::class, 'create'])->name('admin.plugins.create');
        Route::get('plugin/{plugin:uuid}/editor', [PluginController::class, 'edit'])->name('admin.plugin.edit');
        Route::patch('plugin/{plugin:uuid}/update', [PluginController::class, 'update'])->name('admin.plugin.update');

        Route::post('plugin/{plugin:uuid}/publish', PluginPublishController::class)->name('admin.plugin.publish');
        Route::post('plugin/{plugin:uuid}/unpublish', PluginUnpublishController::class)->name('admin.plugin.unpublish');

        Route::get('users', [UserController::class, 'index'])->name('admin.users.index');
        Route::get('users/{user}', [UserController::class, 'edit'])->name('admin.users.edit');
        Route::patch('users/{user}', [UserController::class, 'update'])->name('admin.users.update');

        Route::get('reviews', [ReviewController::class, 'index'])->name('admin.reviews.index');
        Route::post('reviews', [ReviewController::class, 'create'])->name('admin.reviews.create');
        Route::get('reviews/{review}', [ReviewController::class, 'edit'])->name('admin.reviews.edit');
        Route::patch('reviews/{review}', [ReviewController::class, 'update'])->name('admin.reviews.update');

        Route::get('licenses', [LicenseController::class, 'index'])->name('admin.licenses.index');
        Route::get('license/{license}/edit', [LicenseController::class, 'edit'])->name('admin.licenses.edit');
        Route::patch('license/{license}/update', [LicenseController::class, 'update'])->name('admin.licenses.update');
        Route::post('licenses', [LicenseController::class, 'create'])->name('admin.licenses.create');
    });

Route::post('/upload-cover', [UploadCoverImageController::class, 'uploadCover']);
Route::post('/upload-additional-images', [UploadCoverImageController::class, 'upload']);
Route::post('/upload-reviews-avatars', [UploadCoverImageController::class, 'uploadUserAvatar']);


require __DIR__.'/auth.php';