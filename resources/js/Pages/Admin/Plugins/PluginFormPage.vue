<template>
  <AuthenticatedLayout>
    <Head :title="plugin.title" />

    <article>
      <div class="p-6 sm:p-10 flex justify-between">

        <Tabs default-value="general" class="w-full">
          <TabsList>
            <TabsTrigger value="general">{{ $t('General') }}</TabsTrigger>
            <TabsTrigger value="content">{{ $t('Content') }}</TabsTrigger>
          </TabsList>

          <TabsContent value="general" class="mt-6">
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-10">
              <div class="lg:col-span-2 space-y-8">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                  <FormControl for="title" :label="$t('Plugin:Title')" :error="form.errors.title" required>
                    <Input type="text" v-model="form.title" />
                  </FormControl>

                  <FormControl for="plugin_id" label="Plugin ID" :error="form.errors.plugin_id" required>
                    <Input type="text" v-model="form.plugin_id" />
                  </FormControl>

                  <FormControl v-if="props.plugin.title && props.plugin.slug" for="slug" label="Slug" :error="form.errors.slug" required>
                    <Input type="text" v-model="form.slug" disabled />
                  </FormControl>

                  <FormControl for="categories" label="Kategórie">
                    <MultiSelect
                      v-model="form.categories"
                      :options="props.categoriesOptions"
                      placeholder="Vyberte kategórie"
                    />
                  </FormControl>

                </div>

                <FormControl for="description" :label="$t('Plugin:Description')" :error="form.errors.description" required>
                  <Textarea v-model="form.description" rows="4" />
                </FormControl>

                <FormControl for="cover_image_path" :label="$t('Plugin:Cover Image')" :error="form.errors.cover_image_path">
                  <Dropzone
                    :multiple="false"
                    :allowed="['image/*']"
                    @files="handleFileUpload"
                  />
                </FormControl>

                <FormControl for="tags" :label="$t('Tags')">
                  <TagsInput v-model="form.tags">
                    <TagsInputItem
                      v-for="item in form.tags"
                      :key="item"
                      :value="item"
                    >
                      <TagsInputItemText />
                      <TagsInputItemDelete />
                    </TagsInputItem>

                    <TagsInputInput :placeholder="$t('Add a tag...')" />
                  </TagsInput>
                </FormControl>

                <FormControl for="link" label="Link" :errors="form.errors.link">
                  <Input v-model="form.link" />
                </FormControl>

                <Button
                  :disabled="!user.isAdmin"
                  :icon="Save"
                  :label="$t('Save')"
                  @click="saveChanges"
                  variant="outline"
                  :processing="form.processing"
                  :recently-successful="form.recentlySuccessful"
                />
              </div>

              <div class="flex items-start justify-center lg:justify-end">
                <img
                  v-if="previewImage || form.cover_image_path"
                  :src="previewImage || props.plugin.coverImageUrl"
                  class="w-full max-w-sm rounded-xl shadow-md object-cover cursor-pointer hover:opacity-90 transition"
                  alt="Cover preview"
                  @click="isImageOpen = true"
                />
              </div>
            </div>
          </TabsContent>

          <TabsContent value="content" class="mt-6">
            <div class="space-y-8">
              <FormControl for="additional_images" :label="$t('Additional images')">
                <Dropzone
                  :multiple="true"
                  :allowed="['image/*']"
                  @files="handleAdditionalImagesUpload"
                />
              </FormControl>

              <div v-if="additionalImagesPreview.length > 0" class="space-y-4">
                <h3 class="text-lg font-semibold text-gray-800 dark:text-gray-200">
                  {{ $t('Uploaded Images') }} ({{ additionalImagesPreview.length }})
                </h3>
                
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-6">
                  <div 
                    v-for="(image, index) in additionalImagesPreview" 
                    :key="index" 
                    class="group relative bg-white dark:bg-gray-800 rounded-lg shadow-sm border border-gray-200 dark:border-gray-700 overflow-hidden hover:shadow-md transition-all duration-200"
                  >
                    <div class="aspect-square overflow-hidden">
                      <img
                        :src="image"
                        class="w-full h-full object-cover cursor-pointer group-hover:scale-105 transition-transform duration-200"
                        @click="openImage(image)"
                        :alt="`Additional image ${index + 1}`"
                      />
                    </div>
                    
                    <div class="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 transition-opacity duration-200 flex items-center justify-center">
                      <div class="flex space-x-2">
                        <button
                          @click="openImage(image)"
                          class="p-2 bg-white/20 hover:bg-white/30 rounded-full text-white transition-colors"
                          title="Preview"
                        >
                          <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                          </svg>
                        </button>
                        
                        <button
                          @click="removeImage(index)"
                          class="p-2 bg-red-500/80 hover:bg-red-500 rounded-full text-white transition-colors"
                          title="Remove"
                        >
                          <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                          </svg>
                        </button>
                      </div>
                    </div>
                    
                    <div class="absolute top-2 left-2 bg-black/70 text-white text-xs px-2 py-1 rounded-full">
                      {{ index + 1 }}
                    </div>
                  </div>
                </div>
              </div>

              <EmptyState
                v-else
                :title="$t('No additional images yet')"
                :message="$t('Upload some images using the dropzone above')"
              />
            </div>
          </TabsContent>

        </Tabs>

        <DropdownMenu>
          <DropdownMenuTrigger as-child>
            <Button class="relative" :disabled="!user.isAdmin" plain>
              <CheckIcon class="mr-2" />
              {{ form.status === 'published' ? $t('Published') : $t('Draft') }}
              <ChevronDownIcon class="ml-2" />
            </Button>
          </DropdownMenuTrigger>

          <DropdownMenuContent class="min-w-[160px]" align="end">
            <DropdownMenuItem
              v-if="form.status === 'published'"
              @click="unpublishPlugin"
            >
              {{ $t('Unpublish') }}
            </DropdownMenuItem>

            <DropdownMenuItem
              v-else
              @click="publishPlugin"
            >
              {{ $t('Publish') }}
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      </div>
    </article>

    <div v-if="isImageOpen" class="fixed inset-0 bg-black/90 flex items-center justify-center z-50 p-4" @click.self="isImageOpen = false">
      <div class="relative max-h-[90vh] max-w-[90vw]">
        <img
          :src="previewImage || props.plugin.coverImageUrl"
          class="max-h-full max-w-full rounded-lg shadow-2xl"
          alt="Full image"
          draggable="false"
        />
        <button
          class="absolute -top-2 -right-2 bg-white text-gray-800 rounded-full p-2 shadow-lg hover:bg-gray-100 transition-colors"
          @click="isImageOpen = false"
        >
          <X class="w-5 h-5" />
        </button>
      </div>
    </div>
  </AuthenticatedLayout>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { Dropzone } from '@/Components/Dropzone';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/Components/Tabs';
import { Textarea } from '@/Components/Textarea';
import { AuthenticatedLayout } from '@/Layouts';
import { Head, useForm } from '@inertiajs/vue3';
import axios from 'axios';
import { CheckIcon, ChevronDownIcon, Save, X } from 'lucide-vue-next';
import { ref } from 'vue';
import { DropdownMenu, DropdownMenuTrigger, DropdownMenuContent, DropdownMenuItem } from "@/Components/DropdownMenu";
import { EmptyState } from '@/Components/EmptyState';
import { TagsInput, TagsInputInput, TagsInputItem, TagsInputItemDelete, TagsInputItemText } from '@/Components/TagsInput';
import { useSaveShortcut } from '@/Composables';
import MultiSelect from '@/Components/MultiSelect/MultiSelect.vue';

interface Plugin {
  id: number;
  uuid: string;
  pluginId: number;
  title: string;
  description: string;
  coverImagePath: string;
  coverImageUrl: string;
  slug: string;
  additionalImages?: string[];
  additionalImagesUrls?: string[];
  status: 'draft' | 'published'
  tags: string[];
  categories: string[];
  link: string;
}

const props = defineProps<{ 
  plugin: Plugin,
  categoriesOptions: Array<any>,
  user: {
    isAdmin: boolean;
  }
}>();

const form = useForm({
  title: props.plugin.title || '',
  description: props.plugin.description || '',
  cover_image_path: props.plugin.coverImagePath || '',
  slug: props.plugin.slug || '',
  additional_images: props.plugin.additionalImages || [],
  status: props.plugin.status || '',
  tags: props.plugin.tags || [],
  plugin_id: props.plugin.pluginId ?? 0,
  categories: props.plugin.categories || [],
  link: props.plugin.link || ''
});

const previewImage = ref<string | null>(null);
const isImageOpen = ref(false);

const additionalImagesPreview = ref<string[]>([...(props.plugin.additionalImagesUrls || [])]);

const saveChanges = () => {
  form.patch(route('admin.plugin.update', { plugin: props.plugin.uuid }), {
    preserveScroll: true,
    onSuccess: () => {
      console.log('Edited');
    }
  });
};

async function handleFileUpload(files: File[]) {
  if (!files || files.length === 0) return;
  const file = files[0];

  previewImage.value = URL.createObjectURL(file);

  const formData = new FormData();
  formData.append('file', file);

  try {
    const response = await axios.post<{ path: string }>(
      '/upload-cover',
      formData
    );
    form.cover_image_path = response.data.path;
  } catch (error) {
    console.error('Error uploading image:', error);
  }
}

async function handleAdditionalImagesUpload(files: File[]) {
  for (const file of files) {
    const previewUrl = URL.createObjectURL(file);
    additionalImagesPreview.value.push(previewUrl);

    const formData = new FormData();
    formData.append('file', file);

    try {
      const response = await axios.post<{ path: string }>(
        '/upload-additional-images',
        formData
      );
      form.additional_images.push(response.data.path);
    } catch (error) {
      console.error('Error uploading image:', error);
    }
  }
} 

function removeImage(index: number) {
  additionalImagesPreview.value.splice(index, 1);
  form.additional_images.splice(index, 1);
}

function openImage(url: string) {
  previewImage.value = url;
  isImageOpen.value = true;
}

const publishPlugin = () => {
  form.post(route('admin.plugin.publish', { plugin: props.plugin.uuid }), {
    preserveScroll: true,
    onSuccess: () => {
      form.status = props.plugin.status || 'published';
    },
  })
}

const unpublishPlugin = () => {
  form.post(route('admin.plugin.unpublish', { plugin: props.plugin.uuid }), {
    preserveScroll: true,
    onSuccess: () => {
      form.status = props.plugin.status || 'draft';
    },
  })
}

useSaveShortcut(() => saveChanges());
</script>