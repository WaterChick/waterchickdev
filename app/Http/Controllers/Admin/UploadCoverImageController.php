<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UploadCoverImageController extends Controller
{
    public function uploadCover(Request $request) {
        $request->validate([
            'file' => 'required|image|max:5120',
        ]);

        $file = $request->file('file');
        $path = $file->store('plugin-covers', 'public');

        return response()->json([
            'path' => $path
        ]);
    }

    public function upload(Request $request) {
        $request->validate([
            'file' => 'required|image|max:5120',
        ]);

        $file = $request->file('file');
        $path = $file->store('plugin-additional', 'public');

        return response()->json([
            'path' => $path
        ]);
    }

    public function uploadUserAvatar(Request $request) {
        $request->validate([
            'file' => 'required|image|max:5120',
        ]);

        $file = $request->file('file');
        $path = $file->store('reviews_avatars', 'public');

        return response()->json([
            'path' => $path
        ]);
    }

}
