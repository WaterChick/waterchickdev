<?php

namespace App\Enums;

enum PluginStatus: string
{
    case PUBLISHED = 'published';
    case DRAFT = 'draft';

    public function label(): string {
        return match($this) {
            PluginStatus::PUBLISHED => __('Published'),
            PluginStatus::DRAFT => 'Draft',
        };
    }
}
