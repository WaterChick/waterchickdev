<template>
    <Head :title="$t('Register')" />

    <GuestLayout :title="$t('Create an account')">
        <Button 
            :as="Link"
            :href="route('login')"
            variant="ghost"
            class="absolute right-4 top-4 md:right-8 md:top-8"
            :label="$t('Log In')"
        />

        <div class="mx-auto flex w-full flex-col justify-center space-y-6">
            <form @submit.prevent="submit" class="grid gap-5">
                <FormControl :label="$t('Name')" :error="form.errors.name" for="name">
                    <Input v-model="form.name" autocomplete="name" required autofocus id="name" />
                </FormControl>

                <FormControl :label="$t('Email')" :error="form.errors.email" for="email">
                    <Input v-model="form.email" autocomplete="username" type="email" required id="email" />
                </FormControl>

                <FormControl :label="$t('Password')" :error="form.errors.password" for="password">
                    <Input v-model="form.password" autocomplete="new-password" type="password" required id="password" />
                </FormControl>

                <FormControl :label="$t('Confirm Password')" :error="form.errors.password_confirmation" for="password_confirmation">
                    <Input v-model="form.password_confirmation" autocomplete="new-password" type="password" required id="password_confirmation" />
                </FormControl>

                <Button 
                    :processing="form.processing"
                    :label="$t('Register')"
                />
            </form>
        </div>
    </GuestLayout>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { GuestLayout } from '@/Layouts';
import { Head, Link, useForm } from '@inertiajs/vue3';
import { ref } from 'vue'
  
const form = useForm({
    name: '',
    email: '',
    password: '',
    password_confirmation: '',
})

const submit = () => {
    form.post(route('register'), {
        onFinish: () => {
            form.reset('password', 'password_confirmation')
        }
    })
}
</script>
