<template>
    <Card>
        <CardHeader>
            <CardTitle>{{ $t('Change Password') }}</CardTitle>
            <CardDescription>{{ $t('Keep your account secure by choosing a strong, unique password.') }}</CardDescription>
        </CardHeader>
        <CardContent>
            <form @submit.prevent="updatePassword" class="flex flex-col items-start gap-6 max-w-xl">
                <FormControl class="w-full" :label="$t('Current Password')" for="current_password" :error="form.errors.current_password">
                    <Input id="current_password" v-model="form.current_password" type="password" />
                </FormControl>

                <FormControl class="w-full" :label="$t('New Password')" for="password" :error="form.errors.password">
                    <Input id="password" v-model="form.password" type="password" />
                </FormControl>

                <FormControl class="w-full" :label="$t('Confirm Password')" for="password_confirmation" :error="form.errors.password_confirmation">
                    <Input id="password_confirmation" v-model="form.password_confirmation" type="password" />
                </FormControl>

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
import { Button } from '@/Components/Button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/Components/Card';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { useForm } from '@inertiajs/vue3';

const form = useForm({
  current_password: '',
  password: '',
  password_confirmation: '',
});

const updatePassword = () => {
  form.put(route('password.update'), {
    preserveScroll: true,
    onSuccess: () => {
      form.reset();
    },
    onError: () => {
      if (form.errors.password) {
        form.reset('password', 'password_confirmation');
      }
      if (form.errors.current_password) {
        form.reset('current_password');
      }
    },
  });
};
</script>