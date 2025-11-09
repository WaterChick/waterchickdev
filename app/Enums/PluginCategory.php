<?php

namespace App\Enums;

enum PluginCategory: string
{
    case Java = 'java';
    case Kotlin = 'kotlin';
    case SpringBoot = 'springboot';
    case MySQL = 'mysql';
    case SpigotAPI = 'spigotapi';
    case VueJS = 'vuejs';
    case NextJS = 'nextjs';
    case SupaBase = 'supabase';
    case TypeScript = 'typescript';
    
    public function defaultValue() {
        return match($this) {
            PluginCategory::Java => 'Java',
            PluginCategory::Kotlin => 'Kotlin',
            PluginCategory::SpringBoot => 'SpringBoot',
            PluginCategory::MySQL => 'MySQL',
            PluginCategory::SpigotAPI => 'Spigot API',
            PluginCategory::VueJS => 'VueJS',
            PluginCategory::NextJS => 'NextJS',
            PluginCategory::SupaBase => 'SupaBase',
            PluginCategory::TypeScript => 'TypeScript',
        };
    }
}
