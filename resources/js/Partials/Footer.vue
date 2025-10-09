<template>
  <footer class="bg-[#262626] py-12 select-none">
    <div class="max-w-6xl mx-auto px-6">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-8 items-center">

        <div class="text-center md:text-left flex flex-col items-center md:items-start">
          <h3 class="text-white text-2xl font-extrabold m-0">Kevin Frey</h3>
          <p class="text-xs text-gray-400 mt-1">
            &copy; {{ new Date().getFullYear() }} Kevin Frey. All rights reserved.
          </p>
        </div>

        <div class="flex flex-wrap gap-6 justify-center text-sm sm:text-base font-medium">
          <template v-for="link in navLinks" :key="link.name">
            <a
              @click.prevent="scrollToSection(link.id)"
              class="relative text-gray-300 hover:text-[#60A5FA] transition-colors duration-300
                     after:content-[''] after:absolute after:bottom-0 after:left-0 after:w-0 after:h-0.5
                     after:bg-[#60A5FA] hover:after:w-full after:transition-all after:duration-300 cursor-pointer"
            >
              {{ $t(link.name) }}
            </a>
          </template>
        </div>

        <div class="flex flex-wrap justify-center md:justify-end gap-6">
          <a
            href="https://www.instagram.com/kevionamd/"
            target="_blank"
            class="text-gray-300 hover:text-[#60A5FA] transform hover:scale-110 transition duration-300 h-5 w-5"
          >
            <Instagram />
          </a>
          <a
            href="https://github.com/WaterChick"
            target="_blank"
            class="text-gray-300 hover:text-[#60A5FA] transform hover:scale-110 transition duration-300 h-5 w-5"
          >
            <Github />
          </a>
        </div>

      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
import { router } from "@inertiajs/vue3";
import { Github, Instagram } from "lucide-vue-next";

const navLinks = [
  { name: "Introduction", id: "introduction" },
  { name: "Work", id: "work" },
  { name: "Testimonials", id: "reviews" },
];

const scrollToSection = (id: string) => {
  const el = document.getElementById(id);
  if (el) {
    el.scrollIntoView({ behavior: "smooth" });
  } else {
    router.get("/", {}, {
      onSuccess: () => {
        setTimeout(() => {
          const target = document.getElementById(id);
          if (target) target.scrollIntoView({ behavior: "smooth" });
        }, 100);
      }
    });
  }
};
</script>
