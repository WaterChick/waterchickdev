<!-- FadeOverlay.vue -->
<template>
  <div
    :class="[
      'absolute w-full h-40 pointer-events-none',
      position === 'top' ? 'top-0 left-0 bg-gradient-to-b from-[#262626] to-transparent' : '',
      position === 'bottom' ? 'bottom-0 left-0 bg-gradient-to-t from-[#262626] to-transparent' : ''
    ]"
  ></div>
</template>

<script setup lang="ts">
interface Props {
  position?: 'top' | 'bottom'
}

const props = defineProps<Props>()
const position = props.position || 'bottom'
</script>
