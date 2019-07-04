<?php

namespace App\Http\Controllers\Front;

use App;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use TCG\Voyager\Facades\Voyager;
use View;
use App\Traits\Language;
use App\Helpers\Helper;
// use Webpatser\Uuid\Uuid;
use Illuminate\Support\Facades\Cache;
use DB;

use TCG\Voyager\Models\Page as Page;
use TCG\Voyager\Models\Post as Post;

use App\Models\Category;
use App\Models\Social;
use App\Models\Doctor;
use App\Models\Partner;
use App\Models\Link;
use App\Models\Benefit;
use App\Models\Banner;
use App\Models\Testimonial;
use App\Models\Package;
use App\Models\Hotel;
use App\Models\City;
use App\Models\VideoReview;
use App\Models\Request as Req;

class HomeController extends Controller
{
    
    private $per_page=12;
    private $post_per_home=3;
    private $doctor_per_home=6;
    private $banner_per_home=3;
    private $cache_minutes=1;
    private $testimonial_per_home=5;
    private $package_per_home=3;
    private $package_per_packages=6;
    private $package_per_procedure=2;
    private $post_per_blog=6;
    
    public function __construct() {
       $latest_posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->limit(2)->get();
       $links=Link::all();
       View::share ([
           'socials'=>Social::withTranslations(App::getLocale())->get(),
           'is_rtl'=>Helper::isRtl(),
           'latest_posts'=>$latest_posts,
           'links'=>$links
           ]);
    }
    
   
    public function home_page(){
        $categories=Category::where('parent_id','!=',null)->withTranslations(App::getLocale())->get();
        $benefits=Benefit::withTranslations(App::getLocale())->get();
        $posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->limit($this->post_per_home)->get();
        $packages=Package::where('parent_id',null)->withTranslations(App::getLocale())->orderBy('created_at','desc')->limit($this->package_per_home)->get();
        $banners=Banner::withTranslations(App::getLocale())->limit($this->banner_per_home)->get();
        $partners=Partner::all();

        return view('front.pages.home.home',compact(['categories','benefits','posts','banners','partners','packages']));
    }
    

    public function packages(){
        $categories=Category::where('parent_id','!=',null)->withTranslations(App::getLocale())->get();
        $packages=Package::where('parent_id',null)->withTranslations(App::getLocale())->orderBy('created_at','desc')->paginate($this->package_per_packages);
        return view('front.pages.packages.packages',compact('categories','packages'));
    }

    public function package(Package $package,$slug=""){
        return view('front.pages.packages.package',compact('package'));
    }


    public function hotels($type){
        $hotels=Hotel::where('type',$type)->withTranslations(App::getLocale())->orderBy('created_at','desc')->get();
        if(count($hotels)<1){
            abort(404);
        };
        $cities=City::withTranslations(App::getLocale())->orderBy('created_at','desc')->get();
        return view('front.pages.services.hotels.hotels',compact('hotels','cities'));
    }

    public function hotel($type,Hotel $hotel,$slug=""){
        return view('front.pages.services.hotels.hotel',compact('hotel'));
    }


    public function procedures(){
        $categories=Category::withTranslations(App::getLocale())->get();
        return view('front.pages.procedures.procedures',compact('categories'));
    }
    
    public function procedure(Category $category,$slug=""){
        $categories=Category::where('parent_id',null)->withTranslations(App::getLocale())->get();
        $packages=Package::where('parent_id',null)->withTranslations(App::getLocale())->inRandomOrder()->limit($this->package_per_procedure)->get();
        return view('front.pages.procedures.procedure',compact('category','packages','categories'));
    }


    public function doctors(){
        $doctors=Doctor::withTranslations(App::getLocale())->orderBy('created_at','desc')->paginate($this->doctor_per_home);
        return view('front.pages.services.doctors.doctors',compact('doctors'));
    }
    
    public function doctor(Doctor $doctor, $slug=""){
        return view('front.pages.services.doctors.doctor',compact('doctor'));
    }


    public function blogs(){
        $posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->paginate($this->post_per_blog);
        $recent_posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->limit($this->post_per_blog)->get();
        return view('front.pages.blog.posts',compact('posts','recent_posts'));
    }
    
    public function blog(Post $single_post,$slug=""){
        $recent_posts=Post::withTranslations(App::getLocale())->orderBy('created_at','desc')->limit($this->post_per_blog)->get();
        return view('front.pages.blog.post',compact('single_post','recent_posts'));
    }

    public function patient_review(){
        $videos=VideoReview::withTranslations(App::getLocale())->orderBy('created_at','desc')->get();
        $testimonials=Testimonial::withTranslations(App::getLocale())->orderBy('created_at','desc')->get();
        return view('front.pages.single.patientReview.index',compact('videos','testimonials'));
    }

    
    public function pages_show($slug){
        $page=Page::where('slug',$slug)->firstOrFail();
        
        if (view()->exists('front.pages.single.'.$slug.'.index')) {
            return view('front.pages.single.'.$slug.'.index',compact('page'));
        } 
        // else {
        //     return view('front.pages.single.default',compact('page'));
        // }
    }
    
    
    
    // public function blog_index(){
    //     $posts=Post::with('authorId')->withTranslations(App::getLocale())->paginate($this->per_page);
    //     return view('front.pages.blog.posts',compact('posts'));
    // }
    // public function blog_show(Post $post, $slug){
    //     return view('front.pages.blog.post',compact('post'));
    // }
    
    
    // public function doctor_index(){
    //     $doctors=Doctor::with(['networks','categories'])->withTranslations(App::getLocale())->orderBy('order')->paginate($this->per_page);
    //     $categories= Category::withCount('doctors')->withTranslations()->get();
    //     return view('front.doctor.index',compact(['doctors','categories']));
    // }
    // public function doctor_show(Doctor $doctor,$slug=''){
    //     return view('front.doctor.show',compact(['doctor']));
    // }
    // public function doctor_category_index(Category $category, $slug=''){
    //     $doctors=$category->doctors;
    //     $categories= Category::withCount('doctors')->withTranslations()->get();
    //     return view('front.doctor.index',compact(['doctors','categories']));
    // }
    
    
    
    
    public function home_search(){
        return view('front.pages.single.search.homeSearch');
    }

    public function medicalTourism(){
        return view('front.pages.medicalTourism.about.aboutMedicalTourism');
    }
    
    public function destinations(){
        return view('front.pages.medicalTourism.destinations.destinations');
    }
    
    public function destination(){
        return view('front.pages.medicalTourism.destinations.destination');
    }
    

    public function faq(){
        return view('front.pages.single.faq.index');
    }
     
    
    public function aboutUs(){
        return view('front.pages.single.aboutUs.index');
    }
    
    public function contact(){
        return view('front.pages.single.contact.index');
    }
    
    
    
    
    // public function category_show(Category $category, $slug){
    //     return view('front.service.index',compact('category'));
    // }
    public function category_request(Request $request){
        Req::create($request->all());
        
        return redirect()->back()->with([
            'message'=>trans('messages.success_created'),
            'alert-type'=>'success'
        ]);
    }
    
    
    
    // public function package_show(Package $package, $slug=""){
    //     return view('front.packages.index',compact('package'));
    // }
    
    // public function local_switch($local, Request $request){
    //     App::setLocale($local);
        
        
    //     $segments = str_replace(url('/'), '', url()->previous());
    //     $segments = array_filter(explode('/', $segments));
            
    //     array_shift($segments);
    //     array_unshift($segments, $local);
    //     return redirect()->to(implode('/', $segments));
    //     return redirect($local);
    // }
    
    public function test(){
        
        return dd(DB::connection(App::getLocale())->table('wp_posts')->join('wp_postmeta', 'wp_posts.id', '=', 'wp_postmeta.post_id')->where('meta_key','_wp_attached_file')->orderBy('post_date','desc')->limit($this->post_per_home)->get()) ;
        $post=Post::first();
        
        return $post->thumbnail('small');
        // return Uuid::generate();
        $slug='lorem-ipsum-post-trans';
        $post=Post::withTranslations()->where(function ($query) use($slug) {
                dd($query);
            })
            ->get();
        return $post->getTranslatedAttribute('slug');
        // return App::getLocale();
        $categories= Category::withTranslations()->get();
        $menu = Cache::remember('menu'.App::getLocale(), 1, function () use ($categories) {
            
            return menu('front','front.common.menu',['categories'=>$categories]);
        });
        return $menu;
       
       return $categories;
        // dd($categories);
       return view('home',compact('categories')); 
    }
}
            