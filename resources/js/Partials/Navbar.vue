<template>
  <nav
    class="fixed top-0 w-full z-50 transition-all duration-300 border-b"
    :class="isScrolled ? 'bg-[#262626]/98' : 'bg-[#262626]/85 backdrop-blur-lg'"
  >
    <div class="max-w-7xl mx-auto px-6 py-4">
      <div class="flex items-center justify-between">
        <div
          @click="scrollToSection('introduction')"
          class="text-2xl font-bold tracking-widest cursor-pointer hover:scale-105 transition-transform duration-300 uppercase text-white hover:text-[#60A5FA]"
        >
          Kevin Frey
        </div>
        <ul class="hidden md:flex items-center space-x-8">
          <li v-for="link in navLinks" :key="link.id">
            <a
              @click.prevent="scrollToSection(link.id)"
              href="#"
              class="relative text-gray-300 hover:text-[#60A5FA] transition-colors duration-300 group py-2 cursor-pointer font-medium"
            >
              {{ link.name }}
              <span class="absolute bottom-0 left-0 w-0 h-0.5 bg-[#60A5FA] group-hover:w-full transition-all duration-300"></span>
            </a>
          </li>
        </ul>
        <!-- Mobile Menu Button -->
        <button
          @click="isMenuOpen = !isMenuOpen"
          class="md:hidden flex flex-col space-y-1.5 z-50"
        >
          <span
            class="block w-6 h-0.5 bg-white transition-all duration-300"
            :class="isMenuOpen ? 'rotate-45 translate-y-2 bg-[#60A5FA]' : ''"
          ></span>
          <span
            class="block w-6 h-0.5 bg-white transition-all duration-300"
            :class="isMenuOpen ? 'opacity-0' : ''"
          ></span>
          <span
            class="block w-6 h-0.5 bg-white transition-all duration-300"
            :class="isMenuOpen ? '-rotate-45 -translate-y-2 bg-[#60A5FA]' : ''"
          ></span>
        </button>
      </div>
      <!-- Mobile Menu -->
      <div
        class="md:hidden overflow-hidden transition-all duration-300"
        :class="isMenuOpen ? 'max-h-96 mt-6' : 'max-h-0'"
      >
        <ul class="flex flex-col space-y-4 pb-4">
          <li v-for="link in navLinks" :key="link.id">
            <a
              @click.prevent="scrollToSection(link.id); isMenuOpen = false"
              href="#"
              class="block text-gray-300 hover:text-[#60A5FA] transition-colors duration-300 py-2 border-l-2 border-transparent hover:border-[#60A5FA] pl-4 cursor-pointer font-medium"
            >
              {{ link.name }}
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'
import { router } from '@inertiajs/vue3'

const isScrolled = ref<boolean>(false)
const isMenuOpen = ref<boolean>(false)

const navLinks = [
  { name: "Introduction", id: "introduction" },
  { name: "Work", id: "work" },
  { name: "Testimonials", id: "reviews" },
]

const scrollToSection = (id: string): void => {
  const el = document.getElementById(id)
  if (el) {
    el.scrollIntoView({ behavior: 'smooth' })
  } else {
    router.get('/', {}, {
      onSuccess: () => {
        setTimeout(() => {
          const target = document.getElementById(id)
          if (target) target.scrollIntoView({ behavior: 'smooth' })
        }, 100)
      }
    })
  }
}

const handleScroll = (): void => {
  isScrolled.value = window.scrollY > 50
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>