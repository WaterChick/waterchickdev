<?php

namespace App\Policies;

use App\Enums\PluginStatus;
use App\Models\Plugin;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class PluginPolicy
{
   public function create(User $user) {
      return $user->is_admin;
   }

   public function delete(User $user, Plugin $plugin): bool {
      return $user && $user->is_admin;
   }

   public function view(User $user) {
      if ($user->is_admin) {
         return true;
      }

      return false;
   }

   public function update(User $user, Plugin $plugin): bool {
      if ($user->is_admin) {
         return true;
      }

      return false;
   }

   public function publish(User $user, Plugin $plugin): bool {
      return $user->is_admin && $plugin->status !== PluginStatus::PUBLISHED;
   }

   public function unpublish(User $user, Plugin $plugin): bool {
      return $user->is_admin && $plugin->status === PluginStatus::PUBLISHED;
   }
}
