<?php

namespace App\View\Models;

use App\Enums\PluginCategory;
use App\Models\License;
use App\Models\Plugin;
use StackTrace\Ui\ViewModel;

class PluginUIViewModel extends ViewModel {
    public function __construct(
        protected Plugin $plugin
    ) {}

    public function toView(): array {
        return [
            'id' => $this->plugin->id,
            'title' => $this->plugin->title,
            'description' => $this->plugin->description,
            'cover_image_url' => $this->plugin->getCoverImageURL(),
            'additional_images' => $this->plugin->getAdditionalImagesURLs(),
            'tags' => $this->plugin->tags ?? [],
            'link' => $this->plugin->link,
            'categories' => collect($this->plugin->categories ?? [])
                ->map(function ($cat) {
                    if (is_string($cat) && PluginCategory::tryFrom($cat)) {
                        $enum = PluginCategory::from($cat);
                        return [
                            'value' => $enum->value,
                            'label' => $enum->defaultValue(),
                        ];
                    }
                    return $cat;
                })
                ->toArray(),
        ];
    }
}