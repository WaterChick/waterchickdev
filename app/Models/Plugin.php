<?php

namespace App\Models;

use App\Enums\PluginStatus;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Facades\Storage;

class Plugin extends Model
{
    protected $guarded = false;
    protected $casts = [
        'status' => PluginStatus::class,
        'additional_images' => 'array',
        'tags' => 'array',
        'plugin_id' => 'string',
        'categories' => 'array',
    ];

    public function getCoverImageURL(): ?string {
        if ($this->cover_image_path) {
            return Storage::disk(config('filesystems.content_disk'))->url($this->cover_image_path);
        }
        return null;
    }

    public function getAdditionalImagesURLs(): array
    {
        if (!$this->additional_images) {
            return [];
        }

        return array_map(function ($path) {
            return Storage::disk(config('filesystems.content_disk'))->url($path);
        }, $this->additional_images);
    }

    /**
     * Publish a plugin
     */
    public function publish(): void {
        if ($this->status !== PluginStatus::DRAFT) {
            return; 
        }

        $this->update([
            'status' => PluginStatus::PUBLISHED
        ]);
    }

    /**
     * Statements which saying if the plugin can be published or not
     * @return bool
     */
    public function canBePublished(): bool {
        if ($this->status === PluginStatus::DRAFT) {
            if (!$this->title || !$this->slug) {
                return false;
            }

            return true;
        }

        return false; 
    }

    public function canBeUnpublished(): bool {
        return $this->status === PluginStatus::PUBLISHED;
    }

    public function unpublish(): void {
        $this->update([
            'status' => PluginStatus::DRAFT
        ]);
    }

}