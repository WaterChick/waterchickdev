<template>
    <AuthenticatedLayout :title="$t('Users')">
        <DataTable :table="users" />
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { DataTable, DataTableValue } from '@/Components/DataTable';
import { AuthenticatedLayout } from '@/Layouts';

defineProps<{
    users: DataTableValue;
}>()
</script>