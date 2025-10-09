<?php

namespace App\Enums;

enum PluginCategory: string
{
    case Java = 'java';
    case Kotlin = 'kotlin';
    case SpringBoot = 'springboot';
    case MySQL = 'mysql';
    case SpigotAPI = 'spigotapi';


    public function defaultValue() {
        return match($this) {
            PluginCategory::Java => 'Java',
            PluginCategory::Kotlin => 'Kotlin',
            PluginCategory::SpringBoot => 'SpringBoot',
            PluginCategory::MySQL => 'MySQL',
            PluginCategory::SpigotAPI => 'Spigot API',
        };
    }
}
