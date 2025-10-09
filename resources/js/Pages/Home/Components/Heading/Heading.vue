<template>
    <h1 class="text-4xl sm:text-5xl md:text-6xl lg:text-7xl font-extrabold uppercase text-white mb-12">{{ title }}</h1>
</template>

<script setup lang="ts">
defineProps<{
    title: string;
}>()
</script>