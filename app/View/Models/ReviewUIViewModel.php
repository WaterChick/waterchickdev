<?php

namespace App\View\Models;

use App\Models\Review;
use StackTrace\Ui\ViewModel;

class ReviewUIViewModel extends ViewModel {
    public function __construct(
        protected Review $review
    ) {}

    public function toView(): array {
        return [
            'name' => $this->review->name,
            'user_avatar_url' => $this->review->getUserAvatarURL(),
            'description' => $this->review->description,
            'rating' => $this->review->rating
        ];
    }
}