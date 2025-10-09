<template>
    <AuthenticatedLayout :title="$t('User :name', { name: user.name })">
        <Panel class="flex-1 flex flex-col">
            <PanelHeader>
                <PanelTitle>{{ $t('User :name', { name: user.name }) }}</PanelTitle>
            </PanelHeader>
            <PanelContent class="flex-1">
                <PanelItem label="ID">
                    <code class="flex h-9 items-center">{{ user.id }}</code>
                </PanelItem>
                <PanelItem :label="$t('Name')">
                    <FormControl :error="form.errors.name">
                        <Input v-model="form.name" class="sm:max-w-md" />
                    </FormControl>
                </PanelItem>
                <PanelItem :label="$t('Email')">
                    <FormControl :error="form.errors.email">
                        <Input v-model="form.email" class="sm:max-w-md" />
                    </FormControl>
                </PanelItem>
                <PanelItem :label="$t('Is Admin')">
                    <FormControl :error="form.errors.is_admin">
                        <div class="inline-flex h-9 items-center">
                            <Switch v-model="form.is_admin" />
                        </div>
                    </FormControl>
                </PanelItem>
            </PanelContent>
            <PanelFooter class="flex justify-end gap-4">
                <Button
                    @click="save"
                    :recently-successful="form.recentlySuccessful"
                    :processing="form.processing"
                    :label="$t('Save')"
                />
            </PanelFooter>
        </Panel>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { AuthenticatedLayout } from '@/Layouts';
import { useForm } from '@inertiajs/vue3';
import { Panel, PanelContent, PanelFooter, PanelHeader, PanelItem, PanelTitle } from "@/Components/Panel";
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Switch } from '@/Components/Switch';
import { Button } from '@/Components/Button';

const props = defineProps<{
    user: {
        id: number;
        name: string;
        email: string;
        isAdmin: boolean;
    }
}>();

const form = useForm({
    name: props.user.name,
    email: props.user.email,
    is_admin: props.user.isAdmin
});

const save = () => {
    form.patch(route('admin.users.update', props.user.id), {
        preserveScroll: true,
    })
}
</script>