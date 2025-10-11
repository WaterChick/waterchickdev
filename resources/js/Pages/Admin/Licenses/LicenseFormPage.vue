<template>
    <AuthenticatedLayout :title="$t('License for :username', { username: props.license.discordUser || 'Undefined User' })">
        <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-7 overflow-x-auto">
            <h1 class="text-xl font-extrabold uppercase">{{ $t('License for :username', { username: props.license.discordUser || 'Undefined User' }) }}</h1>
            <div class="max-w-xl mt-10 space-y-6">
                <FormControl :label="$t('Name')" :error="form.errors.discord_user">
                    <Input type="text" v-model="form.discord_user" />
                </FormControl>

                <FormControl :label="$t('IP Address')" :error="form.errors.ip" required>
                    <Input type="text" v-model="form.ip" />
                </FormControl>

                <FormControl :label="$t('Domain')" :error="form.errors.domain" required>
                    <Input type="text" v-model="form.domain" />
                </FormControl>

                <FormControl :label="$t('License ID')" :error="form.errors.license_id">
                    <div class="flex gap-2">
                        <Input type="text" v-model="form.license_id" class="flex-1" />
                        <Button 
                            @click="generateLicenseId"
                            variant="secondary"
                            :disabled="props.license.licenseId"
                        >
                            {{ $t('Generate License Code') }}
                        </Button>
                    </div>
                </FormControl>


                <FormControl :label="$t('Select on which plugin would you like to register this license')" :error=form.errors.plugin_id>
                    <Select v-model="form.plugin_id">
                        <SelectTrigger class="w-full">
                            <SelectValue :placeholder="form.plugin_id"/>
                        </SelectTrigger>
                        <SelectContent>
                            <SelectGroup>   
                                <SelectItem v-for="item in plugins" :key="item.plugin_id" :value="item.plugin_id">
                                    {{ item.title }}
                                </SelectItem>
                            </SelectGroup>
                        </SelectContent>
                    </Select>
                </FormControl>

                <Button 
                    @click="save"
                    :label="$t('Save')"
                    variant="outline"
                    :processing="form.processing"
                    :recently-successful="form.recentlySuccessful"
                    :icon="SaveAllIcon"
                />
            </div>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Select, SelectContent, SelectGroup, SelectItem, SelectLabel, SelectTrigger, SelectValue } from '@/Components/Select';
import { useSaveShortcut } from '@/Composables';
import { AuthenticatedLayout } from '@/Layouts';
import { router, useForm } from '@inertiajs/vue3';
import { SaveAllIcon } from 'lucide-vue-next';

const props = defineProps<{
    license: {
        id: number;
        ip: string;
        domain: string;
        licenseId: string;
        discordUser: string;
        pluginId: string;
    },
    plugins: {
        plugin_id: number;
        title: string;
    }[]
}>();

console.log(props.license)
console.log(props.plugins)

const form = useForm({
    ip: props.license.ip,
    domain: props.license.domain,
    discord_user: props.license.discordUser,
    plugin_id: props.license.pluginId,
    license_id: props.license.licenseId,
})

const save = () => {
    form.patch(route('admin.licenses.update', props.license.id), {
        preserveScroll: true,
    });
}

const generateLicenseId = () => {
    router.post(route('admin.licenses.generate', props.license.id), {}, {
        preserveState: true,
        preserveScroll: true,
        onSuccess: page => {
            form.license_id = page.props.license.licenseId
        }
    })
}


useSaveShortcut(() => save());
</script>