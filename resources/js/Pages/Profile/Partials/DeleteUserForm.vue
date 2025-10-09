<template>
    <Card>
        <CardHeader>
            <CardTitle>{{ $t('Delete Account?') }}</CardTitle>
            <CardDescription>{{ $t('Are you sure you want to permanently delete your account? This action cannot be undone.') }}</CardDescription>
        </CardHeader>
        <CardContent>
            <Button @click="confirmModal.activate" variant="destructive">{{ $t('Delete Account') }}</Button>

            <AlertDialog :control="confirmModal">
                <AlertDialogContent>
                    <AlertDialogHeader>
                        <AlertDialogTitle>
                            {{ $t('Are you sure you want to delete your account?') }}
                        </AlertDialogTitle>
                        <AlertDialogDescription>
                            {{ $t('Once deleted, your account and all related data will be permanently removed. This action cannot be undone.') }}
                        </AlertDialogDescription>
                    </AlertDialogHeader>

                    <FormControl :error="form.errors.password">
                        <Input id="password" v-model="form.password" type="password" :placeholder="$t('Password')" @keyup.enter="deleteUser" />
                    </FormControl>

                    <AlertDialogFooter>
                        <AlertDialogCancel>{{ $t('Cancel') }}</AlertDialogCancel>

                        <Button 
                            @click="deleteUser"
                            variant="destructive"
                            :processing="form.processing"
                            :label="$t('Delete Account')"
                        />
                    </AlertDialogFooter>
                </AlertDialogContent>
            </AlertDialog>
        </CardContent>
    </Card>
</template>

<script setup lang="ts">
import { AlertDialog, AlertDialogCancel, AlertDialogContent, AlertDialogDescription, AlertDialogFooter, AlertDialogHeader, AlertDialogTitle } from '@/Components/AlertDialog';
import { Button } from '@/Components/Button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/Components/Card';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { useForm } from '@inertiajs/vue3';
import { useToggle } from "@stacktrace/ui";

const confirmModal = useToggle();

const form = useForm({
    password: '',
});

const deleteUser = () => {
    form.delete(route('profile.destroy'), {
        preserveScroll: true,
        onSuccess: () => confirmModal.deactivate(),
        onFinish: () => {
            form.reset();
        }
    })
}
</script>
