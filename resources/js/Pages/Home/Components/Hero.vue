<template>
  <div id="introduction" class="relative h-screen w-full overflow-clip flex flex-col items-center justify-center select-none">
    <StarsBackground
      :factor="0.05"
      :speed="50"
      star-color="#fff"
    />

    <main class="absolute text-center space-y-4">
      <img 
        :src="Banner" 
        class="w-40 h-40 sm:w-52 sm:h-52 md:w-64 md:h-64 lg:w-72 lg:h-72 rounded-full object-cover mx-auto mb-8 sm:mb-10 md:mb-12 glow" 
      />
      <TextGenerateEffect 
          class="text-4xl font-bold text-white font-mono"
          words="Hi, I am Kevin"
      />
      <p class="text-lg text-zinc-300 max-w-md leading-relaxed font-poppins">
        I made custom Spigot plugins in Java, adding unique gameplay mechanics and server management features.
      </p>
    </main>

    <FadeOverlay position="bottom" />
  </div>
</template>

<script setup lang="ts">
import Banner from "../../../../assets/Banner.png";
import { FadeOverlay } from "./FadeOverlay";
import StarsBackground from "./StarsBackground/StarsBackground.vue";
import { TextGenerateEffect } from "./TextGenerateEffect";
</script>

<style scoped>
.glow {
  box-shadow: 0 0 20px rgba(255, 255, 255, 0.4), 
              0 0 40px rgba(200, 200, 200, 0.3), 
              0 0 60px rgba(255, 255, 255, 0.2);
  transition: box-shadow 0.3s ease-in-out;
}

.glow:hover {
  box-shadow: 0 0 30px rgba(255, 255, 255, 0.6), 
              0 0 60px rgba(200, 200, 200, 0.4), 
              0 0 90px rgba(255, 255, 255, 0.3);
}
</style>
