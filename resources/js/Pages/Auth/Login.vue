<template>
  <Head :title="$t('Log In')" />

  <div class="min-h-screen flex items-center justify-center p-4 relative overflow-hidden select-none">
    <div class="relative w-full max-w-md">
      <div class="bg-white/10 backdrop-blur-xl rounded-3xl shadow-2xl border border-white/20 p-8 relative overflow-hidden">
        <div class="absolute inset-0 bg-gradient-to-br from-white/5 to-transparent pointer-events-none"></div>

        <div class="relative z-10">
          <div class="text-center mb-8">
            <h1 class="text-4xl font-bold text-white mb-2">{{ $t('Log In') }}</h1>
            <p class="text-[#32de1b]/80">{{ $t('Welcome back! Log in to your account.') }}</p>
          </div>

          <form @submit.prevent="submit" class="space-y-6">
            <FormControl>
              <Label for="email" class="text-white/90 font-medium mb-2 block">{{ $t('Email') }}</Label>
              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                  <svg class="w-5 h-5" style="color: #32de1b" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M16 12a4 4 0 10-8 0 4 4 0 008 0zm0 0v1.5a2.5 2.5 0 005 0V12a9 9 0 10-9 9m4.5-1.206a8.959 8.959 0 01-4.5 1.207" />
                  </svg>
                </div>
                <Input
                  id="email"
                  v-model="form.email"
                  type="email"
                  required
                  autofocus
                  autocomplete="username"
                  placeholder="email@example.com"
                  class="w-full pl-12 pr-4 py-3 bg-white/10 border-white/20 rounded-xl text-white placeholder:text-[#60A5FA]/50 focus:bg-white/15 transition-all"
                  style="focus:border-color: #32de1b"
                />
              </div>
              <p v-if="form.errors.email" class="mt-2 text-sm" style="color: #32de1b">{{ $t(form.errors.email) }}</p>
            </FormControl>

            <FormControl>
              <Label for="password" class="text-white/90 font-medium mb-2 block">{{ $t('Password') }}</Label>
              <div class="relative">
                <div class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
                  <svg class="w-5 h-5" style="color: #60A5FA" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z" />
                  </svg>
                </div>
                <Input
                  id="password"
                  v-model="form.password"
                  :type="showPassword ? 'text' : 'password'"
                  required
                  autocomplete="current-password"
                  placeholder="••••••••"
                  class="w-full pl-12 pr-12 py-3 bg-white/10 border-white/20 rounded-xl text-white placeholder:text-[#60A5FA]/50 focus:bg-white/15 transition-all"
                />
                <button
                  type="button"
                  @click="showPassword = !showPassword"
                  class="absolute inset-y-0 right-0 pr-4 flex items-center hover:text-white transition-colors"
                  style="color: #60A5FA"
                >
                  <svg v-if="!showPassword" class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                  </svg>
                  <svg v-else class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M13.875 18.825A10.05 10.05 0 0112 19c-4.478 0-8.268-2.943-9.543-7a9.97 9.97 0 011.563-3.029m5.858.908a3 3 0 114.243 4.243M9.878 9.878l4.242 4.242M9.88 9.88l-3.29-3.29m7.532 7.532l3.29 3.29M3 3l3.59 3.59m0 0A9.953 9.953 0 0112 5c4.478 0 8.268 2.943 9.543 7a10.025 10.025 0 01-4.132 5.411m0 0L21 21" />
                  </svg>
                </button>
              </div>
              <p v-if="form.errors.password" class="mt-2 text-sm" style="color: #60A5FA">{{ form.errors.password }}</p>
            </FormControl>

            <Button
              type="submit"
              :disabled="form.processing"
              class="w-full text-black font-semibold py-3 px-6 rounded-xl shadow-lg hover:shadow-xl transform hover:-translate-y-0.5 transition-all duration-200 disabled:opacity-50 disabled:cursor-not-allowed disabled:transform-none"
              style="background: linear-gradient(135deg, #60A5FA 0%, #60A5FA 100%); hover:brightness-110"
            >
              <span v-if="!form.processing" class="flex items-center justify-center gap-2">
                {{ $t('Login') }}
                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
                </svg>
              </span>
              <span v-else class="flex items-center justify-center gap-2">
                <svg class="animate-spin h-5 w-5" fill="none" viewBox="0 0 24 24">
                  <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                  <path class="opacity-75" fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                  </path>
                </svg>
                {{ $t('Logging in...')}}
              </span>
            </Button>
          </form>

          <div class="mt-6 text-center">
            <p class="text-[#60A5FA]/80">
              {{ $t("Don't have an account?") }}
              <Link
                :href="route('register')"
                class="font-semibold hover:text-white transition-colors ml-1"
                style="color: #60A5FA"
              >
                {{ $t('Sign Up') }}
              </Link>
            </p>
          </div>
        </div>
      </div>

      <div class="absolute -bottom-4 -right-4 w-24 h-24 rounded-full blur-2xl opacity-50"
        style="background: linear-gradient(135deg, #60A5FA 0%, #60A5FA 100%)"></div>
      <div class="absolute -top-4 -left-4 w-24 h-24 rounded-full blur-2xl opacity-50"
        style="background: linear-gradient(135deg, #60A5FA 0%, #60A5FA 100%)"></div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { Button } from '@/Components/Button';
import { FormControl } from '@/Components/Form';
import { Input } from '@/Components/Input';
import { Label } from '@/Components/Label';
import { Head, Link, useForm } from '@inertiajs/vue3';
import { ref } from 'vue';

defineProps<{
  canResetPassword?: boolean;
  status?: string;
}>();

const showPassword = ref(false);

const form = useForm({
  email: '',
  password: '',
  remember: false
});

const submit = () => {
  form.post(route('login'), {
    onFinish: () => {
      form.reset('password');
    }
  });
};
</script>
