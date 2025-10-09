<script setup lang="ts">
import type { HTMLAttributes } from 'vue'
import { reactiveOmit } from '@vueuse/core'
import {
  SwitchRoot,
  type SwitchRootEmits,
  type SwitchRootProps,
  SwitchThumb,
  useForwardPropsEmits,
} from 'reka-ui'
import { cn } from '@/Utils'

const props = defineProps<SwitchRootProps & { class?: HTMLAttributes['class'] }>()
const emits = defineEmits<SwitchRootEmits>()

const delegatedProps = reactiveOmit(props, 'class')
const forwarded = useForwardPropsEmits(delegatedProps, emits)
</script>

<template>
  <SwitchRoot
    data-slot="switch"
    v-bind="forwarded"
    :class="cn(
      'peer inline-flex h-[1.15rem] w-8 items-center rounded-full bg-gray-200 shadow-sm transition-colors duration-200 ease-in-out ' +
      'focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-offset-1 focus-visible:ring-green-400 disabled:cursor-not-allowed disabled:opacity-50 ' +
      'data-[state=checked]:bg-green-500 data-[state=unchecked]:bg-gray-300 dark:data-[state=checked]:bg-green-400 dark:data-[state=unchecked]:bg-gray-700',
      props.class,
    )"
  >
    <SwitchThumb
      data-slot="switch-thumb"
      :class="cn( 
        'block h-4 w-4 bg-white rounded-full shadow-sm transition-transform duration-200 ease-in-out ' +
        'data-[state=checked]:translate-x-[calc(100%-0.25rem)] data-[state=unchecked]:translate-x-0'
      )"
    >
      <slot name="thumb" />
    </SwitchThumb>
  </SwitchRoot>
</template>
