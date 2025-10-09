<template>
    <AuthenticatedLayout :title="$t('Sidebar:Plugins')">
        <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-7 overflow-x-auto">
            <h1 class="text-xl font-extrabold uppercase">{{ $t('Sidebar:Plugins') }}</h1>

            <DataTable 
                :table="plugins" 
                :empty-table-message="$t('No Plugins Found')"
                :empty-table-description="$t('Get started by creating first plugin')"
            >

                <template #empty-table>
                    <Button 
                        :disabled="!user.isAdmin" 
                        @click="createPlugin"
                        :icon="PlusIcon"
                        :label="$t('Create Plugin')"
                        variant="outline"
                        class="mt-3"
                    />
                </template>

                <template #actions>
                    <Button
                        :disabled="!user.isAdmin" 
                        @click="createPlugin"   
                        :icon="PlusIcon" 
                        :label="$t('Create Plugin')"
                    />
                </template>
            </DataTable>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { DataTable, DataTableValue } from '@/Components/DataTable';
import { AuthenticatedLayout } from '@/Layouts';
import { Button } from '@/Components/Button';
import { PlusIcon } from 'lucide-vue-next';
import { Link, router } from '@inertiajs/vue3';

defineProps<{
    plugins: DataTableValue,
    user: {
        isAdmin: boolean;
    }
}>();

function createPlugin() {
    router.post(route('admin.plugins.create'));
}
</script>