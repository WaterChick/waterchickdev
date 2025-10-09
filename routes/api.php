<?php

use App\Http\Controllers\Admin\LicenseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/license/validate', [LicenseController::class, 'validateLicense']);
