<template>
  <Head :title="title || undefined" />

  <SidebarProvider>
    <Sidebar collapsible="icon" variant="inset">
      <SidebarHeader>
        <SidebarMenu>
          <SidebarMenuItem>
            <Link
              :href="route('home')"
              size="lg"
              class="cursor-pointer flex gap-3 items-center"
            >
              <Logo class="shrink-0" />

              <div class="grid flex-1 text-left text-sm leading-tight">
                <span class="truncate font-semibold">{{ $page.props.app.name }}</span>
              </div>
            </Link>
          </SidebarMenuItem>
        </SidebarMenu>
      </SidebarHeader>

      <SidebarContent>
        <SidebarNavigation
          :menu="page.props.sidebar ?? []"
        />
      </SidebarContent>

      <Link :href="route('home')" class="flex text-center mx-auto text-muted-foreground mb-2 items-center gap-2">
        <StepBack class="w-5 h-5" />
        Návrat na stránku
      </Link>

      <SidebarFooter>
        <SidebarGroup class="p-0">
          <SidebarGroupContent>
            <SidebarMenu>
              <DropdownMenu>
                <DropdownMenuTrigger as-child>
                  <Button variant="outline" class="inline-flex flex-row items-center gap-2">
                        {{ $page.props.auth.user.name }}
                        <ChevronDownIcon class="w-4 h-4" />
                    </Button>
                </DropdownMenuTrigger>
                <DropdownMenuContent class="w-48">
                    <DropdownMenuLink :href="route('logout')" method="post" as="button">
                        <LogOut />
                        {{ $t('Log Out') }}
                    </DropdownMenuLink>
                </DropdownMenuContent>
            </DropdownMenu>
            </SidebarMenu>
          </SidebarGroupContent>
        </SidebarGroup>
      </SidebarFooter>
    </Sidebar>

    <SidebarInset>
      <header class="flex h-16 shrink-0 items-center gap-2 border-b border-sidebar-border/70 px-6 transition-[width,height] ease-linear group-has-data-[collapsible=icon]/sidebar-wrapper:h-12 md:px-4">
        <div class="flex items-center gap-2">
          <SidebarTrigger class="-ml-1" />
        </div>

        <BreadcrumbNavigation
          v-if="page.props.breadcrumbs"
          :list="page.props.breadcrumbs"
        />
      </header>

      <div class="flex h-full flex-1 flex-col gap-4 rounded-xl p-4 overflow-x-auto">
        <slot />
      </div>
    </SidebarInset>
  </SidebarProvider>
</template>

<script setup lang="ts">
import { Head, Link, usePage } from '@inertiajs/vue3'
import { type AppPageProps } from '@/Types'
import { type Menu } from '@stacktrace/ui'
import {
  Sidebar, SidebarContent, SidebarNavigation, SidebarProvider, SidebarInset, SidebarTrigger,
  SidebarFooter, SidebarGroup, SidebarGroupContent, SidebarMenu, SidebarMenuItem, SidebarMenuButton,
  SidebarHeader,
} from '@/Components/Sidebar'
import { BreadcrumbNavigation } from '@/Components/Breadcrumb'
import { ChevronDownIcon, LogOut, StepBack, SunMoonIcon, User } from 'lucide-vue-next'
import { Logo } from '@/Components/Logo'
import { DropdownMenu, DropdownMenuContent, DropdownMenuTrigger, DropdownMenuLink, DropdownMenuSeparator, DropdownMenuLabel, DropdownMenuCheckboxItem, DropdownMenuSub, DropdownMenuSubTrigger, DropdownMenuSubContent } from '@/Components/DropdownMenu';
import { useAppearance } from '@/Composables/useAppearance'
import { Button } from '@/Components/Button'

const { appearance, updateAppearance } = useAppearance();

const tabs = [
    { value: 'dark', label: 'Dark' },
    { value: 'light', label: 'Light' },
    { value: 'system', label: 'System' },
] as const;

defineProps<{
  title?: string | null | undefined
}>()

const page = usePage<AppPageProps & {
  sidebar: Menu
  breadcrumbs: Menu
}>()
</script>
