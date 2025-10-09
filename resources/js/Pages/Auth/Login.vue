<template>
    <Head :title="$t('Log In')" />

    <GuestLayout :title="$t('Log In')">
        <Button 
            :as="Link"
            :href="route('register')"
            variant="ghost"
            class="absolute right-4 top-4 md:right-8 md:top-8"
            :label="$t('Register')"
        />

        <div class="mx-auto flex w-full flex-col justify-center space-y-6">
            <Alert v-if="status" variant="positive">
                <AlertDescription>{{ status }}</AlertDescription>
            </Alert>

            <form @submit.prevent="submit" class="grid gap-5">
                <FormControl :label="$t('Email')" :error="form.errors.email" for="email">
                    <Input v-model="form.email" type="email" required />
                </FormControl>

                <FormControl :label="$t('Password')" :error="form.errors.password" for="password" class="relative">
                    <Input v-model="form.password" autocomplete="current-password" type="password" required id="password" />

                    <Link
                        v-if="canResetPassword"
                        :href="route('password.request')"
                        class="hover:text-primary text-sm text-muted-foreground absolute -top-[3px] right-0">
                        {{ $t('Forgot your password?') }}
                    </Link>
                </FormControl>

                <Button 
                    :processing="form.processing"
                    :label="$t('Login')"
                />
            </form>
        </div>
    </GuestLayout>
</template>

<script setup lang="ts">
import { Alert, AlertDescription } from '@/Components/Alert';
import { Button } from '@/Components/Button';
import { Checkbox } from '@/Components/Checkbox';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Label } from '@/Components/Label';
import { GuestLayout } from '@/Layouts';
import { Head, Link, useForm } from '@inertiajs/vue3';
import { ref } from 'vue'

defineProps<{
    canResetPassword?: boolean;
    status?: string;
}>();

const form = useForm({
    email: '',
    password: '',
    remember: false
});

const submit = () => {
    form.post(route('login'), {
        onFinish: () => {
            form.reset('password')
        }
    })
}
</script>
