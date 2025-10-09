<template>
    <AuthenticatedLayout :title="$t('Profile')">
        <template #header>
            <h2 class="font-semibold text-xl-leading-tight">{{ $t('Profile') }}</h2>
        </template>

        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
                <UpdateProfileInformationForm 
                    :must-verify-email="mustVerifyEmail"
                    :status="status"
                />

                <UpdatePasswordForm />

                <DeleteUserForm />
            </div>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { AuthenticatedLayout } from '@/Layouts';
import { Head } from '@inertiajs/vue3';
import UpdateProfileInformationForm from './Partials/UpdateProfileInformationForm.vue';
import UpdatePasswordForm from './Partials/UpdatePasswordForm.vue';
import DeleteUserForm from './Partials/DeleteUserForm.vue';

defineProps<{
  mustVerifyEmail?: boolean;
  status?: string;
}>()
</script>