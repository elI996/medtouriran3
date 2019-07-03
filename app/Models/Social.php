<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Social extends Model
{
    use Translatable;

    protected $translatable = ['link'];

    protected $fillable = ['link'];
}
