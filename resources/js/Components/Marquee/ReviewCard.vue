<template>
  <figure
    class="relative w-80 cursor-pointer overflow-hidden rounded-lg border border-gray-950/[.1] bg-gray-950/[.02] p-5 hover:border-[#60A5FA] hover:shadow-[0_0_12px_3px_rgba(96,165,250,0.4)] hover:bg-gray-950/[.05] dark:border-gray-50/[.1] dark:bg-gray-50/[.08] dark:hover:border-[#60A5FA] transition-all duration-300"
    @click="handleClick"
  >
    <div class="flex flex-row items-center gap-3">
      <div v-if="userAvatarUrl" class="w-9 h-9 rounded-full overflow-hidden">
        <img
          :src="userAvatarUrl"
          class="w-full h-full object-cover"
          width="36"
          height="36"
          alt=""
        />
      </div>
      <div
        v-else
        class="w-9 h-9 rounded-full bg-[#60A5FA] flex items-center justify-center text-sm text-white font-bold"
      >
        {{ initials }}
      </div>

      <div class="flex flex-col leading-tight">
        <span class="text-sm font-medium text-white">
          {{ name }}
        </span>
        <p class="text-[12px] text-white/40">
          {{ handleUsername }}
        </p>
      </div>
    </div>

    <blockquote class="mt-2 text-sm line-clamp-3 text-white/80">
      {{ description }}
    </blockquote>
  </figure>
</template>


<script lang="ts" setup>
import { computed } from "vue";
import { useInitials } from "@/Composables";

interface Props {
  name: string;
  description: string;
  userAvatarUrl?: string | null;
  rating: number;
}

const props = defineProps<Props>();
const emit = defineEmits(["click"]);

const { getInitials } = useInitials();

const initials = computed(() => getInitials(props.name));

const handleClick = () => {
  console.log("[ReviewCard] Clicked review:", props);
  emit("click", { ...props });
};

const handleUsername = computed(() => {
  return "@" + props.name
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/\s+/g, "");
})
</script>
