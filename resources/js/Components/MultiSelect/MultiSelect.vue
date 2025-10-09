<template>
  <div class="relative" ref="container">
    <div
      @click="toggleDropdown"
      class="min-h-[36px] w-full rounded-md border border-input bg-transparent dark:bg-input/30 px-3 py-1 text-base md:text-sm shadow-xs transition-[color,box-shadow] cursor-pointer outline-none"
      :class="{ 
        'border-ring ring-ring/50 ring-[3px]': isOpen,
        'hover:border-ring/60': !isOpen
      }"
      tabindex="0"
      @keydown.enter.prevent="toggleDropdown"
      @keydown.space.prevent="toggleDropdown"
    >
      <div class="flex flex-wrap gap-1.5 min-h-[28px] items-center">
        <span
          v-for="value in modelValue"
          :key="value"
          class="inline-flex items-center gap-1 px-2 py-0.5 rounded-md bg-muted text-foreground text-xs font-medium border border-border"
        >
          {{ getLabelByValue(value) }}
          <button
            @click.stop="removeItem(value)"
            class="hover:bg-muted-foreground/10 rounded-full p-0.5 transition-colors"
            type="button"
          >
            <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </span>
        
        <span
          v-if="modelValue.length === 0"
          class="text-muted-foreground text-sm"
        >
          {{ placeholder }}
        </span>
      </div>

      <div class="absolute right-3 top-1/2 -translate-y-1/2 pointer-events-none">
        <svg
          class="w-4 h-4 text-muted-foreground transition-transform"
          :class="{ 'rotate-180': isOpen }"
          fill="none"
          stroke="currentColor"
          viewBox="0 0 24 24"
        >
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
        </svg>
      </div>
    </div>

    <Transition
      enter-active-class="transition ease-out duration-100"
      enter-from-class="transform opacity-0 scale-95"
      enter-to-class="transform opacity-100 scale-100"
      leave-active-class="transition ease-in duration-75"
      leave-from-class="transform opacity-100 scale-100"
      leave-to-class="transform opacity-0 scale-95"
    >
      <div
        v-if="isOpen"
        class="absolute z-50 mt-1 w-full rounded-md border border-border bg-background shadow-lg max-h-60 overflow-auto"
      >
        <div class="p-2">
          <input
            ref="searchInput"
            v-model="searchQuery"
            type="text"
            :placeholder="searchPlaceholder"
            class="w-full h-9 rounded-md border border-input bg-transparent dark:bg-input/30 px-3 py-1 text-base md:text-sm shadow-xs text-foreground placeholder:text-muted-foreground transition-[color,box-shadow] outline-none focus-visible:border-ring focus-visible:ring-ring/50 focus-visible:ring-[3px]"
            @keydown.esc="isOpen = false"
          />
        </div>

        <div class="py-1">
          <div
            v-for="option in filteredOptions"
            :key="option.value"
            @click="toggleItem(option.value)"
            class="flex items-center gap-2 px-3 py-2 text-sm cursor-pointer transition-colors hover:bg-muted text-foreground"
            :class="{
              'bg-muted/50': isSelected(option.value)
            }"
          >
            <div
              class="w-4 h-4 rounded border-2 flex items-center justify-center transition-colors flex-shrink-0"
              :class="
                isSelected(option.value)
                  ? 'bg-primary border-primary'
                  : 'border-input'
              "
            >
              <svg
                v-if="isSelected(option.value)"
                class="w-3 h-3 text-primary-foreground"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M5 13l4 4L19 7" />
              </svg>
            </div>
            <span>{{ option.label }}</span>
          </div>

          <div
            v-if="filteredOptions.length === 0"
            class="px-3 py-6 text-sm text-center text-muted-foreground"
          >
            {{ noResultsText }}
          </div>
        </div>

        <div
          v-if="modelValue.length > 0"
          class="border-t border-border p-2"
        >
          <button
            @click.stop="clearAll"
            type="button"
            class="w-full px-3 py-1.5 text-xs font-medium text-muted-foreground hover:text-foreground hover:bg-muted rounded transition-colors"
          >
            {{ clearAllText }}
          </button>
        </div>
      </div>
    </Transition>
  </div>
</template>

<script setup lang="ts">
import { ref, computed, watch, nextTick, onMounted, onUnmounted } from 'vue';

interface Option {
  value: string | number;
  label: string;
}

interface Props {
  modelValue: (string | number)[];
  options: Option[];
  placeholder?: string;
  searchPlaceholder?: string;
  noResultsText?: string;
  clearAllText?: string;
}

const props = withDefaults(defineProps<Props>(), {
  placeholder: 'Vybrať katerógie...',
  searchPlaceholder: 'Hľadaj...',
  noResultsText: 'Nenašli sa žiadne výsledky',
  clearAllText: 'Vymazať všetky'
});

const emit = defineEmits<{
  'update:modelValue': [value: (string | number)[]]
}>();

const isOpen = ref(false);
const searchQuery = ref('');
const container = ref<HTMLElement | null>(null);
const searchInput = ref<HTMLInputElement | null>(null);

const filteredOptions = computed(() => {
  if (!searchQuery.value) return props.options;
  
  const query = searchQuery.value.toLowerCase();
  return props.options.filter(option => 
    option.label.toLowerCase().includes(query)
  );
});

const toggleDropdown = () => {
  isOpen.value = !isOpen.value;
  if (isOpen.value) {
    nextTick(() => {
      searchInput.value?.focus();
    });
  }
};

const isSelected = (value: string | number) => {
  return props.modelValue.includes(value);
};

const toggleItem = (value: string | number) => {
  const newValue = isSelected(value)
    ? props.modelValue.filter(v => v !== value)
    : [...props.modelValue, value];
  
  emit('update:modelValue', newValue);
};

const removeItem = (value: string | number) => {
  emit('update:modelValue', props.modelValue.filter(v => v !== value));
};

const clearAll = () => {
  emit('update:modelValue', []);
};

const getLabelByValue = (value: string | number) => {
  return props.options.find(opt => opt.value === value)?.label || value;
};

const handleClickOutside = (event: MouseEvent) => {
  if (container.value && !container.value.contains(event.target as Node)) {
    isOpen.value = false;
  }
};

watch(isOpen, (newValue) => {
  if (!newValue) {
    searchQuery.value = '';
  }
});

onMounted(() => {
  document.addEventListener('click', handleClickOutside);
});

onUnmounted(() => {
  document.removeEventListener('click', handleClickOutside);
});
</script>