<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

class Review extends Model
{
    protected $guarded = false;

    public function getUserAvatarURL(): ?string {
        if ($this->user_avatar_path) {
            return Storage::disk(config('filesystems.content_disk'))->url($this->user_avatar_path);
        }
        return null;
    }
}
