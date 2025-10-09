<template>
    <AuthenticatedLayout :title="$t('Review by :name', { name: review.name })">
        <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-7 overflow-x-auto">
            <h1 class="text-xl font-extrabold uppercase">{{ $t('Review by :name', { name: review.name }) }}</h1>
            <div class="max-w-xl mt-10 space-y-6">
                <FormControl :label="$t('Name')" :error="form.errors.name">
                    <Input type="text" v-model="form.name" />
                </FormControl>

                <FormControl :label="$t('Description')" :error="form.errors.description">
                    <Textarea v-model="form.description" rows="4" />
                </FormControl>

                <FormControl :label="$t('Rating')" :error="form.errors.rating">
                    <Select v-model="form.rating">
                        <SelectTrigger class="w-full">
                            <SelectValue :placeholder="$t('Select a rating')" />
                        </SelectTrigger>
                        <SelectContent>
                            <SelectGroup>
                                <SelectLabel>{{ $t('Rating') }}</SelectLabel>
                                <SelectItem v-for="n in 5" :key="n" :value="n">
                                    {{ n }}
                                </SelectItem>
                            </SelectGroup>
                        </SelectContent>
                    </Select>
                </FormControl>

                <FormControl :label="$t('User Avatar')" :errors="form.errors.user_avatar_path">
                    <Dropzone
                        :multiple="false"
                        :allowed="['image/*']"
                        @files="handleUserAvatarUpload"
                    />
                </FormControl>

                <FormControl :label="$t('Image Preview')" v-if="previewImage || form.user_avatar_path">
                    <div class="flex items-start justify-center lg:justify-end">
                    <img
                    v-if="previewImage || form.user_avatar_path"
                    :src="previewImage || props.review.userAvatarUrl"
                    alt="Cover preview"
                    />
                </div>
                </FormControl>

                <Button 
                    variant="outline" 
                    :label="$t('Save')" 
                    @click="save" 
                    :processing="form.processing" 
                    :recently-successful="form.recentlySuccessful" 
                    :icon="SaveAllIcon"
                />

            </div>
        </div>
    </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Textarea } from '@/Components/Textarea';
import { AuthenticatedLayout } from '@/Layouts';
import { useForm } from '@inertiajs/vue3';
import {
  Select,
  SelectContent,
  SelectGroup,
  SelectItem,
  SelectLabel,
  SelectTrigger,
  SelectValue,
} from '@/Components/Select'
import { Button } from '@/Components/Button';
import { useSaveShortcut } from '@/Composables/useKeyboard';
import axios from 'axios';
import { ref } from 'vue';
import { Dropzone } from '@/Components/Dropzone';
import { SaveAllIcon } from 'lucide-vue-next';

const previewImage = ref<string | null>(null);

const props = defineProps<{
    review: {
        id: number;
        name: string;
        description: string;
        rating: number;
        userAvatarPath: string;
        userAvatarUrl: string;
    }
}>();

const form = useForm({
    name: props.review.name,
    description: props.review.description,
    rating: props.review.rating,
    user_avatar_path: props.review.userAvatarPath
});

const save = () => {
    form.patch(route('admin.reviews.update', props.review.id), {
        preserveScroll: true,
    });
}

async function handleUserAvatarUpload(files: File[]) {
  if (!files || files.length === 0) return;
  const file = files[0];

  previewImage.value = URL.createObjectURL(file);

  const formData = new FormData();
  formData.append('file', file);

  try {
    const response = await axios.post<{ path: string }>(
      '/upload-reviews-avatars',
      formData
    );
    form.user_avatar_path = response.data.path;
  } catch (error) {
    console.error('Error uploading image:', error);
  }
}

useSaveShortcut(() => save());
</script>