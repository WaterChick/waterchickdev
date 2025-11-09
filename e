[1mdiff --git a/.editorconfig b/.editorconfig[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.env.example b/.env.example[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.gitattributes b/.gitattributes[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.github/workflows/lint.yml b/.github/workflows/lint.yml[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.github/workflows/tests.yml b/.github/workflows/tests.yml[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.gitignore b/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.prettierignore b/.prettierignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/.prettierrc b/.prettierrc[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Enums/PluginCategory.php b/app/Enums/PluginCategory.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Enums/PluginStatus.php b/app/Enums/PluginStatus.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/AdminController.php b/app/Http/Controllers/Admin/AdminController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/LicenseController.php b/app/Http/Controllers/Admin/LicenseController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/PluginController.php b/app/Http/Controllers/Admin/PluginController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/ReviewController.php b/app/Http/Controllers/Admin/ReviewController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/UploadCoverImageController.php b/app/Http/Controllers/Admin/UploadCoverImageController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Admin/UserController.php b/app/Http/Controllers/Admin/UserController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/AuthenticatedSessionController.php b/app/Http/Controllers/Auth/AuthenticatedSessionController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/ConfirmablePasswordController.php b/app/Http/Controllers/Auth/ConfirmablePasswordController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/EmailVerificationNotificationController.php b/app/Http/Controllers/Auth/EmailVerificationNotificationController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/EmailVerificationPromptController.php b/app/Http/Controllers/Auth/EmailVerificationPromptController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/NewPasswordController.php b/app/Http/Controllers/Auth/NewPasswordController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/PasswordController.php b/app/Http/Controllers/Auth/PasswordController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/PasswordResetLinkController.php b/app/Http/Controllers/Auth/PasswordResetLinkController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/RegisteredUserController.php b/app/Http/Controllers/Auth/RegisteredUserController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Auth/VerifyEmailController.php b/app/Http/Controllers/Auth/VerifyEmailController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Controller.php b/app/Http/Controllers/Controller.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/HomeController.php b/app/Http/Controllers/HomeController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/ProfileController.php b/app/Http/Controllers/ProfileController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Status/PluginPublishController.php b/app/Http/Controllers/Status/PluginPublishController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Controllers/Status/PluginUnpublishController.php b/app/Http/Controllers/Status/PluginUnpublishController.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Middleware/AdminMiddleware.php b/app/Http/Middleware/AdminMiddleware.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Middleware/HandleInertiaRequests.php b/app/Http/Middleware/HandleInertiaRequests.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Requests/Auth/LoginRequest.php b/app/Http/Requests/Auth/LoginRequest.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Http/Requests/Settings/ProfileUpdateRequest.php b/app/Http/Requests/Settings/ProfileUpdateRequest.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Models/License.php b/app/Models/License.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Models/Plugin.php b/app/Models/Plugin.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Models/Review.php b/app/Models/Review.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Models/User.php b/app/Models/User.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Policies/LicensePolicy.php b/app/Policies/LicensePolicy.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Policies/PluginPolicy.php b/app/Policies/PluginPolicy.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Policies/ReviewPolicy.php b/app/Policies/ReviewPolicy.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Providers/AppServiceProvider.php b/app/Providers/AppServiceProvider.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/Table/Actions/DeleteAction.php b/app/Table/Actions/DeleteAction.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/View/Layout.php b/app/View/Layout.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/View/Layouts/AdminLayout.php b/app/View/Layouts/AdminLayout.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/View/Layouts/ProfileLayout.php b/app/View/Layouts/ProfileLayout.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/View/Models/PluginUIViewModel.php b/app/View/Models/PluginUIViewModel.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/app/View/Models/ReviewUIViewModel.php b/app/View/Models/ReviewUIViewModel.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/artisan b/artisan[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/bootstrap/app.php b/bootstrap/app.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/bootstrap/cache/.gitignore b/bootstrap/cache/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/bootstrap/providers.php b/bootstrap/providers.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/components.json b/components.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/composer.json b/composer.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/composer.lock b/composer.lock[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/app.php b/config/app.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/auth.php b/config/auth.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/cache.php b/config/cache.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/database.php b/config/database.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/filesystems.php b/config/filesystems.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/inertia.php b/config/inertia.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/logging.php b/config/logging.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/mail.php b/config/mail.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/queue.php b/config/queue.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/sanctum.php b/config/sanctum.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/services.php b/config/services.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/config/session.php b/config/session.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/.gitignore b/database/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/factories/UserFactory.php b/database/factories/UserFactory.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/0001_01_01_000000_create_users_table.php b/database/migrations/0001_01_01_000000_create_users_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/0001_01_01_000001_create_cache_table.php b/database/migrations/0001_01_01_000001_create_cache_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/0001_01_01_000002_create_jobs_table.php b/database/migrations/0001_01_01_000002_create_jobs_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/2025_10_05_230337_create_plugins_table.php b/database/migrations/2025_10_05_230337_create_plugins_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/2025_10_05_231623_create_reviews_table.php b/database/migrations/2025_10_05_231623_create_reviews_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/2025_10_05_231628_create_licenses_table.php b/database/migrations/2025_10_05_231628_create_licenses_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/2025_10_06_083449_create_personal_access_tokens_table.php b/database/migrations/2025_10_06_083449_create_personal_access_tokens_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/migrations/2025_10_22_211717_remove_unique_from_ip_in_licenses_table.php b/database/migrations/2025_10_22_211717_remove_unique_from_ip_in_licenses_table.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/database/seeders/DatabaseSeeder.php b/database/seeders/DatabaseSeeder.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/eslint.config.js b/eslint.config.js[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/lang/en.json b/lang/en.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/lang/sk.json b/lang/sk.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/package.json b/package.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/phpunit.xml b/phpunit.xml[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/.htaccess b/public/.htaccess[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/android-chrome-192x192.png b/public/android-chrome-192x192.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/android-chrome-512x512.png b/public/android-chrome-512x512.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/apple-touch-icon copy.png b/public/apple-touch-icon copy.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/apple-touch-icon.png b/public/apple-touch-icon.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/favicon copy.ico b/public/favicon copy.ico[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/favicon-16x16.png b/public/favicon-16x16.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/favicon-32x32.png b/public/favicon-32x32.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/favicon.ico b/public/favicon.ico[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/favicon.svg b/public/favicon.svg[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/index.php b/public/index.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/robots.txt b/public/robots.txt[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/public/site.webmanifest b/public/site.webmanifest[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/assets/Banner.png b/resources/assets/Banner.png[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/css/app.css b/resources/css/app.css[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Alert/Alert.vue b/resources/js/Components/Alert/Alert.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Alert/AlertDescription.vue b/resources/js/Components/Alert/AlertDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Alert/AlertTitle.vue b/resources/js/Components/Alert/AlertTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Alert/index.ts b/resources/js/Components/Alert/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialog.vue b/resources/js/Components/AlertDialog/AlertDialog.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogAction.vue b/resources/js/Components/AlertDialog/AlertDialogAction.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogCancel.vue b/resources/js/Components/AlertDialog/AlertDialogCancel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogContent.vue b/resources/js/Components/AlertDialog/AlertDialogContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogDescription.vue b/resources/js/Components/AlertDialog/AlertDialogDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogFooter.vue b/resources/js/Components/AlertDialog/AlertDialogFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogHeader.vue b/resources/js/Components/AlertDialog/AlertDialogHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogTitle.vue b/resources/js/Components/AlertDialog/AlertDialogTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/AlertDialogTrigger.vue b/resources/js/Components/AlertDialog/AlertDialogTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/AlertDialog/index.ts b/resources/js/Components/AlertDialog/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/App/AppContent.vue b/resources/js/Components/App/AppContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/App/AppShell.vue b/resources/js/Components/App/AppShell.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/App/AppSidebarHeader.vue b/resources/js/Components/App/AppSidebarHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/App/index.ts b/resources/js/Components/App/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Badge/Badge.vue b/resources/js/Components/Badge/Badge.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Badge/index.ts b/resources/js/Components/Badge/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/Breadcrumb.vue b/resources/js/Components/Breadcrumb/Breadcrumb.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbEllipsis.vue b/resources/js/Components/Breadcrumb/BreadcrumbEllipsis.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbItem.vue b/resources/js/Components/Breadcrumb/BreadcrumbItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbLink.vue b/resources/js/Components/Breadcrumb/BreadcrumbLink.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbList.vue b/resources/js/Components/Breadcrumb/BreadcrumbList.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbNavigation.vue b/resources/js/Components/Breadcrumb/BreadcrumbNavigation.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbPage.vue b/resources/js/Components/Breadcrumb/BreadcrumbPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/BreadcrumbSeparator.vue b/resources/js/Components/Breadcrumb/BreadcrumbSeparator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Breadcrumb/index.ts b/resources/js/Components/Breadcrumb/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Button/Button.vue b/resources/js/Components/Button/Button.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Button/LinkButton.vue b/resources/js/Components/Button/LinkButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Button/index.ts b/resources/js/Components/Button/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/Card.vue b/resources/js/Components/Card/Card.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardAction.vue b/resources/js/Components/Card/CardAction.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardContent.vue b/resources/js/Components/Card/CardContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardDescription.vue b/resources/js/Components/Card/CardDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardFooter.vue b/resources/js/Components/Card/CardFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardHeader.vue b/resources/js/Components/Card/CardHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/CardTitle.vue b/resources/js/Components/Card/CardTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Card/index.ts b/resources/js/Components/Card/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/Carousel.vue b/resources/js/Components/Carousel/Carousel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/CarouselContent.vue b/resources/js/Components/Carousel/CarouselContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/CarouselItem.vue b/resources/js/Components/Carousel/CarouselItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/CarouselNext.vue b/resources/js/Components/Carousel/CarouselNext.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/CarouselPrevious.vue b/resources/js/Components/Carousel/CarouselPrevious.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/index.ts b/resources/js/Components/Carousel/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/interface.ts b/resources/js/Components/Carousel/interface.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Carousel/useCarousel.ts b/resources/js/Components/Carousel/useCarousel.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Checkbox/Checkbox.vue b/resources/js/Components/Checkbox/Checkbox.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Checkbox/CheckboxControl.vue b/resources/js/Components/Checkbox/CheckboxControl.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Checkbox/index.ts b/resources/js/Components/Checkbox/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Collapsible/Collapsible.vue b/resources/js/Components/Collapsible/Collapsible.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Collapsible/CollapsibleContent.vue b/resources/js/Components/Collapsible/CollapsibleContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Collapsible/CollapsibleTrigger.vue b/resources/js/Components/Collapsible/CollapsibleTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Collapsible/index.ts b/resources/js/Components/Collapsible/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/Command.vue b/resources/js/Components/Command/Command.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandDialog.vue b/resources/js/Components/Command/CommandDialog.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandEmpty.vue b/resources/js/Components/Command/CommandEmpty.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandGroup.vue b/resources/js/Components/Command/CommandGroup.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandInput.vue b/resources/js/Components/Command/CommandInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandItem.vue b/resources/js/Components/Command/CommandItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandList.vue b/resources/js/Components/Command/CommandList.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandSeparator.vue b/resources/js/Components/Command/CommandSeparator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/CommandShortcut.vue b/resources/js/Components/Command/CommandShortcut.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Command/index.ts b/resources/js/Components/Command/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/ConfirmationDialog/ConfirmationDialog.vue b/resources/js/Components/ConfirmationDialog/ConfirmationDialog.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/ConfirmationDialog/index.ts b/resources/js/Components/ConfirmationDialog/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Badge.vue b/resources/js/Components/DataTable/Columns/Badge.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Icon.vue b/resources/js/Components/DataTable/Columns/Icon.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Image.vue b/resources/js/Components/DataTable/Columns/Image.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Link.vue b/resources/js/Components/DataTable/Columns/Link.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Text.vue b/resources/js/Components/DataTable/Columns/Text.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Columns/Toggle.vue b/resources/js/Components/DataTable/Columns/Toggle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTable.vue b/resources/js/Components/DataTable/DataTable.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableActionButton.vue b/resources/js/Components/DataTable/DataTableActionButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableActionDialog.vue b/resources/js/Components/DataTable/DataTableActionDialog.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableActionDropdownMenuItem.vue b/resources/js/Components/DataTable/DataTableActionDropdownMenuItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableBulkActions.vue b/resources/js/Components/DataTable/DataTableBulkActions.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableCell.vue b/resources/js/Components/DataTable/DataTableCell.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableClearSelectionButton.vue b/resources/js/Components/DataTable/DataTableClearSelectionButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableEmpty.vue b/resources/js/Components/DataTable/DataTableEmpty.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableFilter.vue b/resources/js/Components/DataTable/DataTableFilter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableIcon.vue b/resources/js/Components/DataTable/DataTableIcon.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTablePagination.vue b/resources/js/Components/DataTable/DataTablePagination.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableProvider.vue b/resources/js/Components/DataTable/DataTableProvider.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableResourceActions.vue b/resources/js/Components/DataTable/DataTableResourceActions.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableRowActions.vue b/resources/js/Components/DataTable/DataTableRowActions.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableSearch.vue b/resources/js/Components/DataTable/DataTableSearch.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/DataTableViewSettings.vue b/resources/js/Components/DataTable/DataTableViewSettings.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Filters/Checkbox.vue b/resources/js/Components/DataTable/Filters/Checkbox.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Filters/DateRange.vue b/resources/js/Components/DataTable/Filters/DateRange.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Filters/MultiSelect.vue b/resources/js/Components/DataTable/Filters/MultiSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/Filters/NumberValue.vue b/resources/js/Components/DataTable/Filters/NumberValue.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/index.ts b/resources/js/Components/DataTable/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/internal.ts b/resources/js/Components/DataTable/internal.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DataTable/messages.ts b/resources/js/Components/DataTable/messages.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/Dialog.vue b/resources/js/Components/Dialog/Dialog.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogClose.vue b/resources/js/Components/Dialog/DialogClose.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogContent.vue b/resources/js/Components/Dialog/DialogContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogDescription.vue b/resources/js/Components/Dialog/DialogDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogFooter.vue b/resources/js/Components/Dialog/DialogFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogHeader.vue b/resources/js/Components/Dialog/DialogHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogOverlay.vue b/resources/js/Components/Dialog/DialogOverlay.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogScrollContent.vue b/resources/js/Components/Dialog/DialogScrollContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogTitle.vue b/resources/js/Components/Dialog/DialogTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/DialogTrigger.vue b/resources/js/Components/Dialog/DialogTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dialog/index.ts b/resources/js/Components/Dialog/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenu.vue b/resources/js/Components/DropdownMenu/DropdownMenu.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuCheckboxItem.vue b/resources/js/Components/DropdownMenu/DropdownMenuCheckboxItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuContent.vue b/resources/js/Components/DropdownMenu/DropdownMenuContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuGroup.vue b/resources/js/Components/DropdownMenu/DropdownMenuGroup.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuItem.vue b/resources/js/Components/DropdownMenu/DropdownMenuItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuLabel.vue b/resources/js/Components/DropdownMenu/DropdownMenuLabel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuLink.vue b/resources/js/Components/DropdownMenu/DropdownMenuLink.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuRadioGroup.vue b/resources/js/Components/DropdownMenu/DropdownMenuRadioGroup.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuRadioItem.vue b/resources/js/Components/DropdownMenu/DropdownMenuRadioItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuSeparator.vue b/resources/js/Components/DropdownMenu/DropdownMenuSeparator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuShortcut.vue b/resources/js/Components/DropdownMenu/DropdownMenuShortcut.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuSub.vue b/resources/js/Components/DropdownMenu/DropdownMenuSub.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuSubContent.vue b/resources/js/Components/DropdownMenu/DropdownMenuSubContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuSubTrigger.vue b/resources/js/Components/DropdownMenu/DropdownMenuSubTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/DropdownMenuTrigger.vue b/resources/js/Components/DropdownMenu/DropdownMenuTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/DropdownMenu/index.ts b/resources/js/Components/DropdownMenu/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dropzone/Dropzone.vue b/resources/js/Components/Dropzone/Dropzone.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Dropzone/index.ts b/resources/js/Components/Dropzone/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/EmptyState/EmptyPattern.vue b/resources/js/Components/EmptyState/EmptyPattern.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/EmptyState/EmptyState.vue b/resources/js/Components/EmptyState/EmptyState.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/EmptyState/index.ts b/resources/js/Components/EmptyState/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterCheckbox.vue b/resources/js/Components/Filter/FilterCheckbox.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterDateRange.vue b/resources/js/Components/Filter/FilterDateRange.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterMultiSelect.vue b/resources/js/Components/Filter/FilterMultiSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterNumberInput.vue b/resources/js/Components/Filter/FilterNumberInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterResetButton.vue b/resources/js/Components/Filter/FilterResetButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/FilterSearchInput.vue b/resources/js/Components/Filter/FilterSearchInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Filter/index.ts b/resources/js/Components/Filter/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormCombobox.vue b/resources/js/Components/Form/FormCombobox.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormControl.vue b/resources/js/Components/Form/FormControl.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormDescription.vue b/resources/js/Components/Form/FormDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormItem.vue b/resources/js/Components/Form/FormItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormLabel.vue b/resources/js/Components/Form/FormLabel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormMessage.vue b/resources/js/Components/Form/FormMessage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/FormSelect.vue b/resources/js/Components/Form/FormSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Form/index.ts b/resources/js/Components/Form/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Input/DebouncedInput.vue b/resources/js/Components/Input/DebouncedInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Input/Input.vue b/resources/js/Components/Input/Input.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Input/index.ts b/resources/js/Components/Input/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Label/Label.vue b/resources/js/Components/Label/Label.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Label/index.ts b/resources/js/Components/Label/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Logo/Logo.vue b/resources/js/Components/Logo/Logo.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Logo/index.ts b/resources/js/Components/Logo/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Marquee/Marquee.vue b/resources/js/Components/Marquee/Marquee.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Marquee/ReviewCard.vue b/resources/js/Components/Marquee/ReviewCard.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Marquee/index.ts b/resources/js/Components/Marquee/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/MultiSelect/MultiSelect.vue b/resources/js/Components/MultiSelect/MultiSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/Panel.vue b/resources/js/Components/Panel/Panel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/PanelContent.vue b/resources/js/Components/Panel/PanelContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/PanelFooter.vue b/resources/js/Components/Panel/PanelFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/PanelHeader.vue b/resources/js/Components/Panel/PanelHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/PanelItem.vue b/resources/js/Components/Panel/PanelItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/PanelTitle.vue b/resources/js/Components/Panel/PanelTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Panel/index.ts b/resources/js/Components/Panel/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Popover/Popover.vue b/resources/js/Components/Popover/Popover.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Popover/PopoverAnchor.vue b/resources/js/Components/Popover/PopoverAnchor.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Popover/PopoverContent.vue b/resources/js/Components/Popover/PopoverContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Popover/PopoverTrigger.vue b/resources/js/Components/Popover/PopoverTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Popover/index.ts b/resources/js/Components/Popover/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendar.vue b/resources/js/Components/RangeCalendar/RangeCalendar.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarCell.vue b/resources/js/Components/RangeCalendar/RangeCalendarCell.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarCellTrigger.vue b/resources/js/Components/RangeCalendar/RangeCalendarCellTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarGrid.vue b/resources/js/Components/RangeCalendar/RangeCalendarGrid.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarGridBody.vue b/resources/js/Components/RangeCalendar/RangeCalendarGridBody.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarGridHead.vue b/resources/js/Components/RangeCalendar/RangeCalendarGridHead.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarGridRow.vue b/resources/js/Components/RangeCalendar/RangeCalendarGridRow.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarHeadCell.vue b/resources/js/Components/RangeCalendar/RangeCalendarHeadCell.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarHeader.vue b/resources/js/Components/RangeCalendar/RangeCalendarHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarHeading.vue b/resources/js/Components/RangeCalendar/RangeCalendarHeading.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarNextButton.vue b/resources/js/Components/RangeCalendar/RangeCalendarNextButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/RangeCalendarPrevButton.vue b/resources/js/Components/RangeCalendar/RangeCalendarPrevButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/RangeCalendar/index.ts b/resources/js/Components/RangeCalendar/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/Select.vue b/resources/js/Components/Select/Select.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectContent.vue b/resources/js/Components/Select/SelectContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectGroup.vue b/resources/js/Components/Select/SelectGroup.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectItem.vue b/resources/js/Components/Select/SelectItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectItemText.vue b/resources/js/Components/Select/SelectItemText.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectLabel.vue b/resources/js/Components/Select/SelectLabel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectScrollDownButton.vue b/resources/js/Components/Select/SelectScrollDownButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectScrollUpButton.vue b/resources/js/Components/Select/SelectScrollUpButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectSeparator.vue b/resources/js/Components/Select/SelectSeparator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectTrigger.vue b/resources/js/Components/Select/SelectTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/SelectValue.vue b/resources/js/Components/Select/SelectValue.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Select/index.ts b/resources/js/Components/Select/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Separator/Separator.vue b/resources/js/Components/Separator/Separator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Separator/index.ts b/resources/js/Components/Separator/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/Sheet.vue b/resources/js/Components/Sheet/Sheet.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetClose.vue b/resources/js/Components/Sheet/SheetClose.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetContent.vue b/resources/js/Components/Sheet/SheetContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetDescription.vue b/resources/js/Components/Sheet/SheetDescription.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetFooter.vue b/resources/js/Components/Sheet/SheetFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetHeader.vue b/resources/js/Components/Sheet/SheetHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetOverlay.vue b/resources/js/Components/Sheet/SheetOverlay.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetTitle.vue b/resources/js/Components/Sheet/SheetTitle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/SheetTrigger.vue b/resources/js/Components/Sheet/SheetTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sheet/index.ts b/resources/js/Components/Sheet/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/Sidebar.vue b/resources/js/Components/Sidebar/Sidebar.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarContent.vue b/resources/js/Components/Sidebar/SidebarContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarFooter.vue b/resources/js/Components/Sidebar/SidebarFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarGroup.vue b/resources/js/Components/Sidebar/SidebarGroup.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarGroupAction.vue b/resources/js/Components/Sidebar/SidebarGroupAction.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarGroupContent.vue b/resources/js/Components/Sidebar/SidebarGroupContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarGroupLabel.vue b/resources/js/Components/Sidebar/SidebarGroupLabel.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarHeader.vue b/resources/js/Components/Sidebar/SidebarHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarInput.vue b/resources/js/Components/Sidebar/SidebarInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarInset.vue b/resources/js/Components/Sidebar/SidebarInset.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenu.vue b/resources/js/Components/Sidebar/SidebarMenu.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuAction.vue b/resources/js/Components/Sidebar/SidebarMenuAction.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuBadge.vue b/resources/js/Components/Sidebar/SidebarMenuBadge.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuButton.vue b/resources/js/Components/Sidebar/SidebarMenuButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuButtonChild.vue b/resources/js/Components/Sidebar/SidebarMenuButtonChild.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuItem.vue b/resources/js/Components/Sidebar/SidebarMenuItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuSkeleton.vue b/resources/js/Components/Sidebar/SidebarMenuSkeleton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuSub.vue b/resources/js/Components/Sidebar/SidebarMenuSub.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuSubButton.vue b/resources/js/Components/Sidebar/SidebarMenuSubButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarMenuSubItem.vue b/resources/js/Components/Sidebar/SidebarMenuSubItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarNavigation.vue b/resources/js/Components/Sidebar/SidebarNavigation.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarNavigationButton.vue b/resources/js/Components/Sidebar/SidebarNavigationButton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarProvider.vue b/resources/js/Components/Sidebar/SidebarProvider.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarRail.vue b/resources/js/Components/Sidebar/SidebarRail.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarSeparator.vue b/resources/js/Components/Sidebar/SidebarSeparator.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/SidebarTrigger.vue b/resources/js/Components/Sidebar/SidebarTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/index.ts b/resources/js/Components/Sidebar/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sidebar/utils.ts b/resources/js/Components/Sidebar/utils.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Skeleton/Skeleton.vue b/resources/js/Components/Skeleton/Skeleton.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Skeleton/index.ts b/resources/js/Components/Skeleton/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sonner/Sonner.vue b/resources/js/Components/Sonner/Sonner.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Sonner/index.ts b/resources/js/Components/Sonner/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Spinner/Spinner.vue b/resources/js/Components/Spinner/Spinner.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Spinner/index.ts b/resources/js/Components/Spinner/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Switch/Switch.vue b/resources/js/Components/Switch/Switch.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Switch/SwitchControl.vue b/resources/js/Components/Switch/SwitchControl.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Switch/SwitchToggle.vue b/resources/js/Components/Switch/SwitchToggle.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Switch/index.ts b/resources/js/Components/Switch/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/BulkSelect.vue b/resources/js/Components/Table/BulkSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/RowSelect.vue b/resources/js/Components/Table/RowSelect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/SelectableTableRow.vue b/resources/js/Components/Table/SelectableTableRow.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/Sorting.vue b/resources/js/Components/Table/Sorting.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/Table.vue b/resources/js/Components/Table/Table.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableBody.vue b/resources/js/Components/Table/TableBody.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableCaption.vue b/resources/js/Components/Table/TableCaption.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableCell.vue b/resources/js/Components/Table/TableCell.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableEmpty.vue b/resources/js/Components/Table/TableEmpty.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableFooter.vue b/resources/js/Components/Table/TableFooter.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableHead.vue b/resources/js/Components/Table/TableHead.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableHeader.vue b/resources/js/Components/Table/TableHeader.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/TableRow.vue b/resources/js/Components/Table/TableRow.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Table/index.ts b/resources/js/Components/Table/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tabs/Tabs.vue b/resources/js/Components/Tabs/Tabs.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tabs/TabsContent.vue b/resources/js/Components/Tabs/TabsContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tabs/TabsList.vue b/resources/js/Components/Tabs/TabsList.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tabs/TabsTrigger.vue b/resources/js/Components/Tabs/TabsTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tabs/index.ts b/resources/js/Components/Tabs/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/TagsInput.vue b/resources/js/Components/TagsInput/TagsInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/TagsInputInput.vue b/resources/js/Components/TagsInput/TagsInputInput.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/TagsInputItem.vue b/resources/js/Components/TagsInput/TagsInputItem.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/TagsInputItemDelete.vue b/resources/js/Components/TagsInput/TagsInputItemDelete.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/TagsInputItemText.vue b/resources/js/Components/TagsInput/TagsInputItemText.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/TagsInput/index.ts b/resources/js/Components/TagsInput/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Textarea/Textarea.vue b/resources/js/Components/Textarea/Textarea.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Textarea/index.ts b/resources/js/Components/Textarea/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tooltip/Tooltip.vue b/resources/js/Components/Tooltip/Tooltip.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tooltip/TooltipContent.vue b/resources/js/Components/Tooltip/TooltipContent.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tooltip/TooltipProvider.vue b/resources/js/Components/Tooltip/TooltipProvider.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tooltip/TooltipTrigger.vue b/resources/js/Components/Tooltip/TooltipTrigger.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Components/Tooltip/index.ts b/resources/js/Components/Tooltip/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Composables/index.ts b/resources/js/Composables/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Composables/useAppearance.ts b/resources/js/Composables/useAppearance.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Composables/useInitials.ts b/resources/js/Composables/useInitials.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Composables/useKeyboard.ts b/resources/js/Composables/useKeyboard.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Layouts/AuthenticatedLayout.vue b/resources/js/Layouts/AuthenticatedLayout.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Layouts/GuestLayout.vue b/resources/js/Layouts/GuestLayout.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Layouts/ProfileLayout.vue b/resources/js/Layouts/ProfileLayout.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Layouts/index.ts b/resources/js/Layouts/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/HubPage.vue b/resources/js/Pages/Admin/HubPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Licenses/LicenseFormPage.vue b/resources/js/Pages/Admin/Licenses/LicenseFormPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Licenses/LicenseListPage.vue b/resources/js/Pages/Admin/Licenses/LicenseListPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Plugins/PluginFormPage.vue b/resources/js/Pages/Admin/Plugins/PluginFormPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Plugins/PluginListPage.vue b/resources/js/Pages/Admin/Plugins/PluginListPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Reviews/ReviewFormPage.vue b/resources/js/Pages/Admin/Reviews/ReviewFormPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Reviews/ReviewListPage.vue b/resources/js/Pages/Admin/Reviews/ReviewListPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Users/UserFormPage.vue b/resources/js/Pages/Admin/Users/UserFormPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Admin/Users/UserListPage.vue b/resources/js/Pages/Admin/Users/UserListPage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/ConfirmPassword.vue b/resources/js/Pages/Auth/ConfirmPassword.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/ForgotPassword.vue b/resources/js/Pages/Auth/ForgotPassword.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/Login.vue b/resources/js/Pages/Auth/Login.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/Register.vue b/resources/js/Pages/Auth/Register.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/ResetPassword.vue b/resources/js/Pages/Auth/ResetPassword.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Auth/VerifyEmail.vue b/resources/js/Pages/Auth/VerifyEmail.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/FadeOverlay/FadeOverlay.vue b/resources/js/Pages/Home/Components/FadeOverlay/FadeOverlay.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/FadeOverlay/index.ts b/resources/js/Pages/Home/Components/FadeOverlay/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/Heading/Heading.vue b/resources/js/Pages/Home/Components/Heading/Heading.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/Heading/index.ts b/resources/js/Pages/Home/Components/Heading/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/Hero.vue b/resources/js/Pages/Home/Components/Hero.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/StarsBackground/StarsBackground.vue b/resources/js/Pages/Home/Components/StarsBackground/StarsBackground.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/TextGenerateEffect/TextGenerateEffect.vue b/resources/js/Pages/Home/Components/TextGenerateEffect/TextGenerateEffect.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/Components/TextGenerateEffect/index.ts b/resources/js/Pages/Home/Components/TextGenerateEffect/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Home/HomePage.vue b/resources/js/Pages/Home/HomePage.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Profile/Edit.vue b/resources/js/Pages/Profile/Edit.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Profile/Partials/DeleteUserForm.vue b/resources/js/Pages/Profile/Partials/DeleteUserForm.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Profile/Partials/UpdatePasswordForm.vue b/resources/js/Pages/Profile/Partials/UpdatePasswordForm.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Profile/Partials/UpdateProfileInformationForm.vue b/resources/js/Pages/Profile/Partials/UpdateProfileInformationForm.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Pages/Welcome.vue b/resources/js/Pages/Welcome.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Partials/Footer.vue b/resources/js/Partials/Footer.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Partials/Navbar.vue b/resources/js/Partials/Navbar.vue[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Types/globals.d.ts b/resources/js/Types/globals.d.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Types/index.d.ts b/resources/js/Types/index.d.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Types/ziggy.d.ts b/resources/js/Types/ziggy.d.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/Utils/index.ts b/resources/js/Utils/index.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/app.ts b/resources/js/app.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/js/ssr.ts b/resources/js/ssr.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/resources/views/app.blade.php b/resources/views/app.blade.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/routes/api.php b/routes/api.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/routes/auth.php b/routes/auth.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/routes/console.php b/routes/console.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/routes/web.php b/routes/web.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/app/.gitignore b/storage/app/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/app/private/.gitignore b/storage/app/private/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/app/public/.gitignore b/storage/app/public/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/.gitignore b/storage/framework/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/cache/.gitignore b/storage/framework/cache/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/cache/data/.gitignore b/storage/framework/cache/data/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/sessions/.gitignore b/storage/framework/sessions/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/testing/.gitignore b/storage/framework/testing/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/framework/views/.gitignore b/storage/framework/views/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/storage/logs/.gitignore b/storage/logs/.gitignore[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/tests/Feature/ExampleTest.php b/tests/Feature/ExampleTest.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/tests/Pest.php b/tests/Pest.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/tests/TestCase.php b/tests/TestCase.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/tests/Unit/ExampleTest.php b/tests/Unit/ExampleTest.php[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/tsconfig.json b/tsconfig.json[m
[1mold mode 100644[m
[1mnew mode 100755[m
[1mdiff --git a/vite.config.ts b/vite.config.ts[m
[1mold mode 100644[m
[1mnew mode 100755[m
