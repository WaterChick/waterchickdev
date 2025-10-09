<template>
  <div
    :class="
      cn(
        'group flex overflow-hidden p-2 [--duration:40s] [--gap:1rem] [gap:var(--gap)]',
        vertical ? 'flex-col' : 'flex-row',
        $props.class,
      )
    "
  >
    <div
      v-for="index in repeat"
      :key="index"
      :class="
        cn(
          'flex shrink-0 justify-around [gap:var(--gap)] pause-on-hover',
          vertical ? 'animate-marquee-vertical flex-col' : 'animate-marquee flex-row',
        )
      "
      :style="{
        animationDirection: reverse ? 'reverse' : 'normal',
      }"
    >
      <slot />
    </div>
  </div>
</template>

<script lang="ts" setup>
import { cn } from "@/Utils";

withDefaults(
  defineProps<{
    class?: string;
    reverse?: boolean;
    pauseOnHover?: boolean;
    vertical?: boolean;
    repeat?: number;
  }>(),
  {
    pauseOnHover: true,
    vertical: false,
    repeat: 4,
  },
);
</script>

<style scoped>
.animate-marquee {
  animation: marquee var(--duration) linear infinite;
}

.animate-marquee-vertical {
  animation: marquee-vertical var(--duration) linear infinite;
}

.pause-on-hover {
  animation-play-state: running;
}

.group:hover .pause-on-hover {
  animation-play-state: paused !important;
}

@keyframes marquee {
  from {
    transform: translateX(0);
  }
  to {
    transform: translateX(calc(-100% - var(--gap)));
  }
}

@keyframes marquee-vertical {
  from {
    transform: translateY(0);
  }
  to {
    transform: translateY(calc(-100% - var(--gap)));
  }
}
</style>