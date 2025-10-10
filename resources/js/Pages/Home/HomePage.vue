<template>
  <Navbar />
  <div>
    <Hero />

    <section id="work" class="relative px-6 py-40 md:px-16 bg-[#262626] select-none">
      <FadeOverlay position="top" />
      <div class="max-w-6xl w-full mx-auto">
        <Heading title="Completed Projects" />

        <article class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8 text-white">
          <div v-for="plugin in plugins" :key="plugin.id" @click="openPluginDialog(plugin)" class="rounded-lg overflow-hidden group shadow-lg hover:shadow-2xl transition cursor-pointer">
            <img
              :src="plugin.coverImageUrl"
              :alt="plugin.title"
              class="w-full group-hover:scale-105 transition-transform duration-500"
            />
            <div class="p-4">
              <h2 class="font-extrabold text-xl">
                {{ plugin.title }}
              </h2>
            </div>

            <div>
              <div class="flex gap-2 mt-2 p-4">
                <button
                  v-for="(category, index) in plugin.categories"
                  :key="category.value"
                  :aria-label="category.label"
                  :class="[
                    'inline-flex items-center gap-2 px-3 py-1 text-xs font-semibold rounded-full border-1 transition-shadow shadow-sm focus:outline-none focus:ring-1',
                    categoryColors[category.label] || 'bg-gray-500/10 text-gray-200 border-gray-500 hover:bg-gray-500/20 focus:ring-gray-400/40'
                  ]"
                  type="button"
                >
                  {{ category.label }}
                </button>
              </div>
            </div>

          </div>
        </article>

        <EmptyState 
          v-if="props.plugins.length === 0"
          :title="$t('Nothing to see there.')"
          :message="$t('The table is empty.')"
        />
      </div>
      <Dialog v-model:open="isPluginDialogOpen" :trap-focus="false">
        <DialogContent class="select-none">
          <DialogHeader>
            <DialogTitle>{{ selectedPlugin?.title }}</DialogTitle>
            <DialogDescription>{{ selectedPlugin?.description }}</DialogDescription>
          </DialogHeader>
  
          <article>
            <Carousel
              class="relative w-full"
              :plugins="[plugin]"
              :options="{ loop: false }" 
              @mouseenter="plugin.stop"
              @mouseleave="() => { plugin.reset(); plugin.play(); }"
              tabindex="-1"
            >
              <CarouselContent>
                <CarouselItem
                  v-for="(image, index) in allPluginImages"
                  :key="index"
                  class="w-full"
                  tabindex="-1"
                  aria-hidden="true"
                >
                  <img
                    :src="image"
                    class="w-full h-[400px] object-contain mb-4 rounded"
                    loading="lazy"
                  />
                </CarouselItem>
              </CarouselContent>
            </Carousel>

            <div class="flex flex-wrap gap-2">
              <Badge
                v-for="(tag, index) in selectedPlugin?.tags"
                :key="index"
                variant="primary"
                class="px-3 py-1 rounded-full bg-white/10 text-white text-sm font-medium border border-white/20 hover:bg-white/20 transition"
              >
                {{ tag }}
              </Badge>
            </div>

            <div v-if="selectedPlugin?.link" class="mt-5">
              <a :href="selectedPlugin?.link" target="_blank" class="cursor-pointer">
                <Button variant="outline" class="w-full mt-2">
                  More Informations
                </Button>
              </a>
            </div>
          </article>
        </DialogContent>
      </Dialog>
    </section>

    <section id="reviews" class="relative px-6 py-40 md:px-16 bg-[#262626]" v-if="props.reviews.length >= 1">
      <div class="max-w-6xl w-full mx-auto">
        <Heading title="What people say about me" />

        <article class="relative flex h-[500px] w-full flex-col items-center justify-center overflow-hidden">
          <Marquee :repeat="40" pause-on-hover class="[--duration:10s]">
            <ReviewCard
              v-for="review in firstRowReviews"
              :key="review.name"
              :name="review.name"
              :userAvatarUrl="review.userAvatarUrl"
              :description="review.description"
              :rating="review.rating"
              @click="openModal(review)"
            />
          </Marquee>

          <Marquee reverse :repeat="40" pause-on-hover class="[--duration:10s]">
            <ReviewCard
              v-for="review in secondRowReviews"
              :key="review.name"
              :name="review.name"
              :userAvatarUrl="review.userAvatarUrl"
              :description="review.description"
              :rating="review.rating"
              @click="openModal(review)"
            />
          </Marquee>

          <div class="pointer-events-none absolute inset-y-0 left-0 w-32 bg-gradient-to-r from-[#262626] to-transparent z-20" />
          <div class="pointer-events-none absolute inset-y-0 right-0 w-32 bg-gradient-to-l from-[#262626] to-transparent z-20" />
        </article>
      </div>
    </section>
  </div>

  <Dialog v-model:open="isDialogOpen">
    <DialogContent class="max-w-xl w-[90vw] max-h-[80vh] p-6 flex flex-col overflow-hidden lg:max-w-3xl lg:p-8">
        <DialogHeader>
          <DialogTitle class="text-lg sm:text-xl text-center font-bold mb-4">
            {{ selectedReview?.name }}
          </DialogTitle>
        </DialogHeader>

        <DialogDescription
          class="whitespace-pre-line leading-relaxed text-justify mb-4 text-xs sm:text-base
                overflow-y-auto flex-grow pr-2
                scrollbar-thin scrollbar-thumb-gray-400 scrollbar-track-gray-200
                dark:scrollbar-thumb-gray-600 dark:scrollbar-track-gray-700
                max-h-[calc(80vh-6rem)]"
        >
          {{ selectedReview?.description }}
        </DialogDescription>

        <div class="mb-4 flex items-center justify-center gap-2 text-yellow-400 text-xl sm:text-2xl">
          <span v-for="i in 5" :key="i" :class="i <= (selectedReview?.rating ?? 0) ? 'text-yellow-400' : 'text-gray-300'">★</span
          >
          <span class="ml-2 text-sm sm:text-base capitalize text-muted-foreground dark:text-gray-300">
            ({{ selectedReview?.rating ?? '-' }})
          </span>
        </div>
    </DialogContent>
  </Dialog>

  <Footer />

</template>

<script setup lang="ts">
import { computed, ref } from "vue";
import Hero from "./Components/Hero.vue";
import {
    Dialog,
    DialogContent,
    DialogHeader,
    DialogTitle,
    DialogDescription
} from "@/Components/Dialog";
import { Carousel, CarouselContent, CarouselItem } from "@/Components/Carousel";
import Autoplay from "embla-carousel-autoplay"
import { Badge } from "@/Components/Badge";
import { FadeOverlay } from "./Components/FadeOverlay";
import { Marquee, ReviewCard } from "@/Components/Marquee";
import { EmptyState } from "@/Components/EmptyState";
import { Heading } from "./Components/Heading";
import Footer from "@/Partials/Footer.vue";
import Navbar from "@/Partials/Navbar.vue";
import { Button } from "@/Components/Button";
import Link from "@/Components/DataTable/Columns/Link.vue";

const plugin = Autoplay({
  delay: 3000,
  stopOnMouseEnter: true,
  stopOnInteraction: false,
})

interface Plugin {
  id: string;
  title: string;
  description: string;
  coverImageUrl: string;
  additionalImages: string[];
  tags: string[];
  categories: Array<any>;
  link: string;
}

interface Review {
  name: string;
  userAvatarUrl: string;
  description: string;
  rating: number;
}

const props = defineProps<{
  plugins: Plugin[];
  reviews: Review[];
}>();

console.log(props.plugins);

const isPluginDialogOpen = ref(false);
const selectedPlugin = ref<Plugin | null>(null);

const openPluginDialog = (plugin: Plugin) => {
    selectedPlugin.value = plugin;
    isPluginDialogOpen.value = true;
}

const allPluginImages = computed(() => {
  if (!selectedPlugin.value) return [];
  return [selectedPlugin.value.coverImageUrl, ...selectedPlugin.value.additionalImages];
});

const firstRowReviews = computed(() => {
  const half = Math.ceil(props.reviews.length / 2);
  return props.reviews.slice(0, half);
});

const secondRowReviews = computed(() => {

  const half = Math.ceil(props.reviews.length / 2);
  return props.reviews.slice(half);
});

const selectedReview = ref<null | any>(null);

const isDialogOpen = computed({
    get: () => selectedReview.value !== null,
    set: (val: boolean) => {
        if (!val) closeModal();
    },
});

const openModal = (review: any) => {
  selectedReview.value = review;
};

const closeModal = () => {
  selectedReview.value = null;
}

const categoryColors: Record<string, string> = {
  Java: 'bg-orange-500/10 text-orange-200 border-orange-500 hover:bg-orange-500/20 focus:ring-orange-400/40',
  Kotlin: 'bg-purple-500/10 text-purple-200 border-purple-500 hover:bg-purple-500/20 focus:ring-purple-400/40',
  SpringBoot: 'bg-green-500/10 text-green-200 border-green-500 hover:bg-green-500/20 focus:ring-green-400/40',
  MySQL: 'bg-sky-500/10 text-sky-200 border-sky-500 hover:bg-sky-500/20 focus:ring-sky-400/40',
};


</script>
