<?php

namespace App\Policies;

use App\Models\License;
use App\Models\User;

class LicensePolicy
{
    public function delete(User $user, License $license): bool {
      return $user && $user->is_admin;
   }
}
