<?php

namespace App\Models;

use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Post as VoyagerPost;

class Post extends VoyagerPost
{
    public function reviews()
    {
        return $this->morphMany('App\Models\Review', 'reviewable');
    }
}
