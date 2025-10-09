<template>
    <AuthenticatedLayout :title="$t('Sidebar:Licenses')">
        <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-7 overflow-x-auto">
            <h1 class="text-xl font-extrabold uppercase">{{ $t('Sidebar:Licenses') }}</h1>

            <DataTable 
                :table="licenses"
                :empty-table-message="$t('No Licenses Found')"
                :empty-table-description="$t('Get started by creating first license')"
            >
                <template #empty-table>
                    <Button 
                        :icon="PlusIcon"
                        @click="createLicense"
                        :label="$t('Create License')"
                        variant="outline"
                        class="mt-3"
                    />
                </template>

                <template #actions>
                    <Button
                        :icon="PlusIcon"
                        @click="createLicense"
                        :label="$t('Create License')"
                    />
                </template>
            </DataTable>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { DataTable, DataTableValue } from '@/Components/DataTable';
import { AuthenticatedLayout } from '@/Layouts';
import { router } from "@inertiajs/vue3";
import { PlusIcon } from 'lucide-vue-next';

defineProps<{
    licenses: DataTableValue;
}>();

function createLicense() {
    router.post(route('admin.licenses.create'));
}
</script>
