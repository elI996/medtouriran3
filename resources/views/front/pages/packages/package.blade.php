
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')
    <!-- Flex timeline Stylesheet CSS -->
    <link rel="stylesheet" href="/css/package-timeline.css"/>
@endsection

@section('content')	
        <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Rhinoplasty</h1>
                <p><a href="{{route('home')}}">Home</a> &#8594; <a href="{{route('package.index')}}">Packages</a> &#8594; <span>Package</span></p>
            </div>
        </div> 
    </div><!-- End Page Title Section -->
    <!-- Start package List Section -->
        <!-- Start Blog Section -->
    <div class="layer-stretch" id="package-page">
        <div class="layer-wrapper">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="theme-material-card">
                        @if(!empty($package->video))
                        <div id="package-page--main-video">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/{{$package->video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        @endif
                        <h2 class="blog-ttl">{{$package->getTranslatedAttribute('title')}}</h2>
                        <div class="blog-post" id="package-page--post">
                            {!!$package->getTranslatedAttribute('description')!!}
                        </div>
                        <div class="row" id="package-page--info">
                            <div class="col-md-4 col-sm-12">
                                <div class="doctor-details package-page--inclusions">
                                    <div class="doctor-specility">
                                        <h3>inclusions</h3>
                                        <p>
                                            @include('front.pages.packages.includes.cities')
                                        </p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <div class="doctor-details-extra-3">
                                            @include('front.pages.packages.includes.items')
                                        </div>
                                    </div>
                                </div>
                                <div class="doctor-details package-page--pricing">
                                    <div class="doctor-specility">
                                        <h3>Pricing</h3>
                                    </div>
                                    <table class="package-page--price-table">
                                        @foreach ($package->prices as $price)
                                            <tr>
                                                <td>{{$price->getTranslatedAttribute('title')}}</td>
                                                <td>from {{$price->price}}$</td>
                                            </tr>
                                        @endforeach
                                        
                                    </table>
                                    <!--<a href="#">-->
                                        <!--<button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3 package-page--book-btn">Book-->
                                        <!--    <span class="mdl-button__ripple-container">-->
                                        <!--        <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>-->
                                        <!--    </span>-->
                                        <!--</button>-->
                                    <!--</a>-->
                                </div>
                            </div>
                            @include('front.pages.packages.includes.timeline')
                        </div>

                        <div class="row blog-meta"  id="package-page--metatags">
                            <div class="col-sm-7 blog-tag">
                                {{-- <p>Tags : </p>
                                <ul>
                                    <li><a href="#">Medical, </a></li>
                                    <li><a href="#">Rhinoplasty </a></li>
                                    <!--<li><a href="#">Science </a></li>-->
                                </ul> --}}
                            </div>
                            <div class="col-sm-5 text-right" >
                                <ul class="social-list social-list-sm">
                                    @include('front.common.social-networks')
                                </ul>
                            </div>
                        </div>
                    </div> 
                    <div class="theme-material-card" id="package-page--testimonial">
                        <div class="sub-ttl">Testimonial</div>
                        <div class="row">
                            @foreach(explode(";",$package->getTranslatedAttribute('testimonial')) as $video)
                            <div class="col-sm-12 col-md-6">
                                <div class="theme-block">
                                    <iframe width="100%" height="275px" src="https://www.youtube.com/embed/{{$video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>    
            </div>    
        </div>
    </div>
    <div class="parallax-background parallax-background-2" id="package-page-packages">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Our Offers</h3>
                </div>
                <div class="layer-container">
                    <div id="package-page--packages-slider" class="owl-carousel owl-theme theme-owl-dot">
                        @foreach($package->children as $child)
                        <div class="package-page--packages package-page--packages-box" style="background-image: url({{Voyager::image($child->background)}})">
                            <div class="package-page--packages-title">
                                <h3>{{$child->getTranslatedAttribute('title')}}</h3>
                                <p>{{$child->getTranslatedAttribute('subtitle')}}</p>
                            </div>
                            <div class="package-page--packages-price">
                                <p>{{$package->getTranslatedAttribute('before_price')}}</p>
                                <h3>{{$package->getTranslatedAttribute('price')}}$</h3>
                            </div>
                            <ul class="package-page--packages-list">
                                @foreach($package->items as $item)
                                <li>{{$item->getTranslatedAttribute('title')}}</li>
                                @endforeach
                            </ul>
                            <a>
                                <button class="package-page--book-btn mdl-button mdl-js-button mdl-js-ripple-effect button button-primary mt-3 mb-1">Book
                                    <span class="mdl-button__ripple-container">
                                        <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                    </span>
                                </button>
                            </a>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor Section -->
    <div class="layer-stretch">
        <div class="layer-wrapper">
            <div class="row">
                <div class="col-lg-12 text-center">    
                    <div class="theme-material-card" id="package-page--gallery">
                        <div class="sub-ttl">Gallery</div>
                        <div id="package-page--gallery-owl-carousel" class="owl-carousel owl-drag owl-theme theme-owl-dot">
                            @if(!empty($package->images))
                            <?php $images = json_decode($package->images); ?>
                            @foreach($images as $image)
                            
                            <div class="owl-item">
                                <div class="theme-block">
                                    <div class="gallery-block theme-block-picture package-picture-2">
                                        <a href="{{ Voyager::image($image)}}">
                                            <img src="{{ Voyager::image($package->getThumbnail($image, 'medium'))}}" alt="image">
                                            <div class="gallery-layer">
                                                <div class="gallery-layer-dark">
                                                    <p><i class="fa fa-search-plus"></i></p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            @endif
                        </div>
                    </div>                    
                    @include('front.common.reviews',["reviews"=>$package->reviews])
                    <form action="{{route('comment_store')}}" class="form-horizontal cform-2" method="post">
                    @csrf
                    <input type="hidden" value="{{get_class($package)}}" name="reviewable_type">
                    <input type="hidden" value="{{$package->id}}" name="reviewable_id">
                    @include('front.common.review-form')
                    </form>
                </div>
            </div>    
        </div>    
    </div>
    
    <!-- PACKAGE BOOK MODAL -->
    <form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
    @csrf
    <input type="hidden" name="package_id" value={{$package->id}} >
    <div id="package-page--book-modal" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title">Package Book</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="package-page--book-error"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-user-o"></i>
                                <input class="mdl-textfield__input" type="text" name="first_name" id="hm-booking-form--name" required>
                                <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                <span class="mdl-textfield__info">For Example: Elham Jafari</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-envelope-o"></i>
                                <input class="mdl-textfield__input" type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="hm-booking-form--email">
                                <label class="mdl-textfield__label" for="comment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-phone"></i>
                                <input class="mdl-textfield__input" type="text" name="phone" pattern="[0-9+-]*" id="hm-booking-form--number" required>
                                <label class="mdl-textfield__label" for="booking-form--number">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
                                <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-map-marker-alt"></i>
                                <input class="mdl-textfield__input" type="text" name="country_code" id="hm-booking-form--country" required>
                                <label class="mdl-textfield__label" for="comment-name">Country <em> *</em></label>
                                <span class="mdl-textfield__info">For Example: Iran</span>
                            
                            </div>
                        </div>
                    </div>
                    <div class="text-center pt-4">
                        <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <!-- End Make an Appointment Modal -->
@endsection

@section('js')

<script type="text/javascript">
    $('#package-page--gallery-owl-carousel').owlCarousel({
        loop:true,
        // margin:5,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
    
    $("#package-page--packages-slider").owlCarousel({
        center: true,
        autoplay: true,
        items: 5,
        margin: 10,
        loop: true,
        smartSpeed: 1000,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: false
            },
            600: {
                items: 1,
                nav: false
            },
            992: {
                items: 3,
                nav: false
            }
        }
    });
    
    //Package book Tag
    $('body').on('click', 'button.package-page--book-btn', function () {
        $('#package-page--book-modal').modal('show');
    });
    
    
</script>
@endsection