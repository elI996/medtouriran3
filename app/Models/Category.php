<?php

namespace App\Models;

use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Models\Category as Cat;

class Category extends Cat
{
    use Resizable;

    protected $translatable = ['slug', 'title', 'excerpt', 'body'];

    protected $fillable = ['slug', 'title' , 'excerpt', 'body'];

    public function doctors(){
          return $this->belongsToMany('App\Models\Doctor','doctor_category');
      }  


    public function parent(){
        return $this->belongsTo(Voyager::modelClass('Category'), 'parent_id');
    }
    
    public function link($absolute = false)
    {
        return route('category.show',[$this->id,$this->getTranslatedAttribute('slug')]);
    }

    public function children()
    {
        return $this->hasMany(Voyager::modelClass('Category'), 'parent_id')
            ;
    }
    
    public function parent_items()
    {
        return $this->hasMany(Voyager::modelClass('Category'))
            ->whereNull('parent_id');
    }
}
