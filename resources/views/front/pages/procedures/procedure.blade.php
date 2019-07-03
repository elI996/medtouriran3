@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	
    <!-- Start Page Title Section -->
    <div class="page-ttl" id="procedure-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>{{$category->getTranslatedAttribute('title')}}</h1>
                <p><a href="#">Home</a> &#8594; <a href="#">Procedures</a> &#8594; <span>Procedure</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start Blog Section -->
    <div class="layer-stretch" id="procedure-page">
        <div class="layer-wrapper">
            <div class="row">
                <div class="col-lg-8 text-center">
                    <div class="theme-material-card">
                        <div class="theme-img blog-picture" id="procedure-page--main-image">
                            <img class="" src="{{Helper::placeholder($category->image)}}" alt="{{$category->getTranslatedAttribute('title')}}">
                        </div>
                        <h2 class="blog-ttl">{{$category->getTranslatedAttribute('title')}}</h2>
                        <div class="blog-post" id="procedure-page--post">
                            {!! $category->getTranslatedAttribute('body') !!}
                        </div>
                        
                        <div class="row blog-meta"  id="procedure-page--metatags">
                            <div class="col-sm-7 blog-tag">

                            </div>
                            <div class="col-sm-5 text-right" >
                                <ul class="social-list social-list-sm">
                                    @foreach($socials as $social)
                                        <li><a href="{{$social->getTranslatedAttribute('link')}}" target="_blank"><i class="social-pad {{$social->icon}}"></i></a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>
                    </div>  
                </div>
                <div class="col-lg-4">

                    <div class="theme-material-card" id="procedure-page--packages">
                        <div class="sub-ttl">Special Packages</div>
                        <div class="flexslider theme-flexslider" id="procedure-page--packages-slider">
                            <ul class="slides">
                                @foreach ($packages as $package)
                                <li>
                                        <div class="procedure-page--packages procedure-page--packages--box" style="background-image: url(/images/packages/pg3.jpg)">
                                            <div class="procedure-page-packages--title">
                                                <h6>{{$package->getTranslatedAttribute('title')}}</h6>
                                                <p>{{$package->getTranslatedAttribute('subtitle')}}</p>
                                            </div>
                                            <div class="procedure-page--packages--price">
                                                <p>{{$package->getTranslatedAttribute('before_price')}}</p>
                                                <h3>{{$package->getTranslatedAttribute('price')}}$</h3>
                                            </div>
                                            <ul class="procedure-page--packages--list">
                                                @foreach($package->items as $item)
                                                <li>{{$item->getTranslatedAttribute('title')}}</li>
                                                @endforeach
                                            </ul>
                                            <a href="{{route('package.show',[$package,$package->slug])}}">
                                                <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary mt-3 mb-1">Book
                                                    <span class="mdl-button__ripple-container">
                                                        <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                                    </span>
                                                </button>
                                            </a>
                                        </div>
                                    </li>  
                                @endforeach
                                
                            </ul>
                        </div>
                    </div>
                    <div class="theme-material-card" id="procedure-page--categories">
                        <div class="sub-ttl">Procedure Categories</div>
                        <ul class="category-list">
                            @foreach($categories as $category)
                        <li><a href="{{route('procedure.index')}}"><i class="{{$category->icon}}"></i>{{$category->getTranslatedAttribute('title')}}</a><span>({{count($category->children)}})</span></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Blog Section -->
    
    
    
    
<div id="booking-form" class="layer-stretch">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-12 text-center">    
                <div class="theme-material-card">
                    <div class="sub-ttl layer-ttl-white">Contact Us</div>
                    <div class="row comment-form">
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="booking-form--name">
                                <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                <span class="mdl-textfield__info">For Example: Elham Jafari</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[0-9+-]*" id="booking-form--number">
                                <label class="mdl-textfield__label" for="comment-name">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
                                <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="booking-form--country">
                                <label class="mdl-textfield__label" for="comment-name">Country <em> *</em></label>
                                <span class="mdl-textfield__info">For Example: Iran</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="booking-form--email">
                                <label class="mdl-textfield__label" for="comment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                <span class="mdl-textfield__info">For Example: example@gmail.com</span>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mdl-textfield mdl-js-textfield form-input">
                                <textarea class="mdl-textfield__input" rows="4" id="booking-form--comment-message"></textarea>
                                <label class="mdl-textfield__label" for="comment-message">How can we help you...?</label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-submit">
                                <button type="submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" id="booking-form--submit-btn">Submit</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>    
    </div>    
</div>
@endsection

