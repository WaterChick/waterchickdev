<script setup lang="ts">
import { AuthenticatedLayout } from '@/Layouts';

</script>

<template>
    <AuthenticatedLayout title="Panel">
        <div class="text-2xl p-5">
            Welcome, <span class="font-bold">{{ $page.props.auth.user.name }}</span>
        </div>
    </AuthenticatedLayout>
</template>