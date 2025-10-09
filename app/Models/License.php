<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class License extends Model
{
    protected $guarded = false;


    protected $casts = [
        'plugin_id' => 'string'
    ];
}
