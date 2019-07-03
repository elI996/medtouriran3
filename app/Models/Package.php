<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class Package extends Model
{
    use Translatable,
        Resizable;
        
        
    protected $translatable = ['title', 'subtitle', 'timeline','description','before_price','after_price','options','testimonial'];
    
    public function children()
    {
        return $this->hasMany('App\Models\Package', 'parent_id')
            ->with('children');
    }
    
    public function parent_items()
    {
        return $this->hasMany('App\Models\Package')
            ->whereNull('parent_id');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
    
    public function items(){
        return $this->belongsToMany('App\Models\PackageItem','package_package_item','package_id','package_item_id');
    }

    public function timelines(){
        return $this->belongsToMany('App\Models\Timeline','package_timeline','package_id','timeline_id');
    }
    public function cities(){
        return $this->belongsToMany('App\Models\City','package_city');
    }

    public function prices(){
        return $this->belongsToMany('App\Models\PackagePrice','package_package_price','package_id','package_price_id');
    }

    public function categories(){
        return $this->belongsToMany('App\Models\Category','package_category');
    }
}
