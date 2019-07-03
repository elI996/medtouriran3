<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Spatial;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Hotel extends Model
{
    use Translatable,
        Resizable,
        Spatial;

    protected $spatial = ['location'];
        
    protected $translatable = ['title','description'];

    public function city(){
        return $this->belongsTo('App\Models\City');
    }

    public function items(){
        return $this->belongsToMany('App\Models\HotelItem','hotel_hotel_item','hotel_id','hotel_item_id');
    }
}
