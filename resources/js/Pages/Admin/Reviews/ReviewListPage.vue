<template>
    <AuthenticatedLayout :title="$t('Sidebar:Reviews')">
        <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-7 overflow-x-auto">
            <h1 class="text-xl font-extrabold uppercase">{{ $t('Sidebar:Reviews') }}</h1>

            <DataTable 
                :table="reviews"
                :empty-table-message="$t('No Reviews Found')"
                :empty-table-description="$t('Get started by adding first review')"
            >
                <template #empty-table>
                    <Button 
                        :disabled="!user.isAdmin" 
                        @click="createReview"
                        :icon="PlusIcon"
                        :label="$t('Create Review')"
                        variant="outline"
                        class="mt-3"
                    />
                </template>

                <template #actions>
                    <Button
                        :disabled="!user.isAdmin" 
                        @click="createReview"   
                        :icon="PlusIcon" 
                        :label="$t('Create Review')"
                    />
                </template>
            </DataTable>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { DataTable, type DataTableValue } from '@/Components/DataTable';
import { AuthenticatedLayout } from '@/Layouts';
import { router } from "@inertiajs/vue3";
import { PlusIcon } from 'lucide-vue-next';

defineProps<{
    reviews: DataTableValue;
    user: {
        isAdmin: boolean;   
    }
}>()

function createReview() {
    router.post(route('admin.reviews.create'));
}
</script>