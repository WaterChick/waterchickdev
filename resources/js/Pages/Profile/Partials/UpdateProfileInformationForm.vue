<template>
    <Card>
        <CardHeader>
            <CardTitle>{{ $t('Profile Information') }}</CardTitle>
            <CardDescription>{{ $t('Manage your personal details and keep your account up to date.') }}</CardDescription>
        </CardHeader>
        <CardContent>
            <form @submit.prevent="form.patch(route('profile.update'))" class="flex flex-col gap-6 items-start max-w-xl">
                <Alert v-show="status === 'verification-link-sent'" class="mt-2" variant="positive">
                    <AlertDescription>{{ $t('A new verification link has been sent to your email address.') }}</AlertDescription>
                </Alert>

                <FormControl :label="$t('Name')" :error="form.errors.name" for="name" class="w-full">
                    <Input v-model="form.name" required id="name" />
                </FormControl>

                <FormControl :label="$t('Email')" :error="form.errors.email" for="email" class="w-full"> 
                    <Input v-model="form.email" required type="email" id="email" />
                </FormControl>

                <div v-if="mustVerifyEmail && user.email_verified_at === null">
                    <p class="text-sm mt-2">
                        {{ $t('Your email address is not verified.') }}
                        <Link
                            :href="route('verification.send')"
                            method="post"
                            as="button"
                            class="underline text-muted-foreground hover:text-foreground transition-colors text-sm rounded-md focus:outline-none"
                        >
                        {{ $t('Click here to re-send the verification email.') }}
                        </Link>
                    </p>
                </div>

                <Button
                    :recently-successful="form.recentlySuccessful"
                    :processing="form.processing"
                    :label="$t('Save')"
                />
            </form>
        </CardContent>
    </Card>
</template>

<script setup lang="ts">
import { Alert, AlertDescription } from '@/Components/Alert';
import { Button } from '@/Components/Button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/Components/Card';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Link, useForm, usePage } from '@inertiajs/vue3'

defineProps<{
    mustVerifyEmail?: Boolean;
    status?: String;
}>();

const user = usePage().props.auth.user;

const form = useForm({
    name: user.name,
    email: user.email,
})

</script>