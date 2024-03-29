<?php 

namespace App\Helpers;

use App;

use Illuminate\Support\Facades\Cache;

use TCG\Voyager\Models\Category as Category;

class Helper
{
    //determine if right align language is used for styling and ordering, RTL language can be added in app/config
    public static function isRtl()
    {
        if(array_key_exists(App::getLocale(), config('app.rtlLocales'))){
            return true;
        }
        
        return false;
    }
    
    //Front end menu view
    public static function menu(){
        $minutes=1;
        $menu = Cache::remember('menu'.App::getLocale(), $minutes, function (){
            $categories= Category::withTranslations()->get();
            return menu('front','front.common.menu',['categories'=>$categories]);
        });
        
        return $menu;
    }
    
    // image handler
    
    public static function placeholder($image){
        if($image){
            if(file_exists(public_path() .$image)){
            return $image;
            }
        }   
        return '/uploads/service-1.jpg';
    }


    public static function remove_space($name){
        return preg_replace('/\s+/', '', $name);
    }

    public static function color_badge($index){

        $colors=array("warning","info","danger","success");

        return $colors[$index%count($colors)];
    }
}