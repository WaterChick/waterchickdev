<!DOCTYPE html>
<html lang="sk" class="dark">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        html {
            background-color: oklch(1 0 0);
        }
        html.dark {
            background-color: oklch(0.145 0 0);
        }
    </style>

    <title inertia>Kevin Frey</title>

    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Figtree:wght@300;400;600;700&display=swap" rel="stylesheet">

    <!-- SEO -->
    <meta name="description" content="Kevin Frey je Java developer špecializujúci sa na vývoj Minecraft Spigot pluginov a serverových riešení. Tvorím moderné a optimalizované pluginy pre komunitu aj komerčné projekty.">
    <meta name="keywords" content="Kevin Frey, Java developer, Spigot developer, Minecraft pluginy, Bukkit, Paper, Minecraft vývoj, Minecraft server, backend developer, plugin developer, Minecraft Java vývojár">
    <meta name="author" content="Adrián Ondik">
    <meta name="robots" content="index, follow">
    <link rel="canonical" href="https://waterchick.dev/">

    <!-- Open Graph (pre sociálne siete) -->
    <meta property="og:title" content="Kevin Frey">
    <meta property="og:site_name" content="Kevin Frey">
    <meta property="og:description" content="Spigot Java developer so skúsenosťami vo vývoji Minecraft pluginov, API integrácií a backend riešení.">
    <meta property="og:url" content="https://waterchick.dev/">
    <meta property="og:type" content="website">
    <meta property="og:image" content="https://waterchick.dev/storage/partials/logo.png">

    @routes
    @vite(['resources/js/app.ts', "resources/js/Pages/{$page['component']}.vue"])
    @inertiaHead
</head>
<body class="font-sans antialiased">
    @inertia
</body>
</html>
