
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	
        <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Hotels</h1>
                <p><a href="{{route('home')}}">Home</a> &#8594; <a href="{{route('service')}}">Services</a> &#8594; <span>Hotels</span></p>
            </div>
        </div> 
    </div><!-- End Page Title Section -->
    <!-- Start Doctor List Section -->
    <div id="hotels-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <!--<div class="row">-->
                <div class="text-center p-2 pt-4 pb-4">
                    <div class="filter-menu">
                        <button class="city-filter active" data-filter="all">All</button>
                        @foreach ($cities as $city)
                            <button class="city-filter" data-filter="{{Helper::remove_space($city->title)}}">{{$city->getTranslatedAttribute('title')}}</button>  
                        @endforeach
                        
                    </div>
                </div>
            <!--</div>-->
            <div class="row">
                @foreach ($hotels as $hotel)
                <div class="col-md-6 col-lg-4 c-filter {{Helper::remove_space($city->title)}}">
                        @include('front.pages.services.hotels.includes.rating-stars')
                        <div class="theme-block theme-block-hover">
                            <div class="theme-block-picture">
                                <img src="{{Voyager::image($hotel->thumbnail('medium'))}}" alt="{{$hotel->getTranslatedAttribute('title')}}">
                            </div>
                            <div class="doctor-name">
                            <h4><a href="{{route('service.hotel.show',[$hotel,$hotel->slug])}}">{{$hotel->getTranslatedAttribute('title')}}</a></h4>
                            </div>
                            <div class="doctor-details">
                                <div class="doctor-specility">
                                    <p>{{$hotel->city->getTranslatedAttribute('title')}}</p>
                                </div>
                              
                                <div class="doctor-details-extra">
                                    <div class="doctor-details-extra-3">
                                        <p><b><span class="fa fa-money"></span>Cost: From {{$hotel->price}}$</b></p>
                                        <p><span class="fa fa-child"></span>Person: {{$hotel->person}}</p>
                                        <p><span class="fa fa-bed"></span>Beds: {{$hotel->bed}}</p>
                                        @foreach($hotel->items as $item)
                                        <p><span class="{{$item->icon}}"></span>{{$item->getTranslatedAttribute('title')}}</p>
                                        @endforeach
                                    </div>
                                </div>
                                <a href="{{route('service.hotel.show',[$hotel,$hotel->slug])}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">More Info
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>
                                 </a>
                            </div>
                        </div>
                    </div>  
                @endforeach
                
            </div>
            {{-- <ul class="theme-pagination">
                <li><a href="#" class="active">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">...</a></li>
                <li><a href="#">10</a></li>
            </ul> --}}
        </div>
    </div><!-- End Doctor List Section -->
    
<div id="hm-booking-form" class="layer-stretch">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-12 text-center">    
                <div class="theme-material-card">
                    <div class="sub-ttl layer-ttl-white">Contact Us</div>
                    <div class="row comment-form">
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="hm-booking-form--name">
                                <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                <span class="mdl-textfield__info">For Example: Elham Jafari</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[0-9+-]*" id="hm-booking-form--number">
                                <label class="mdl-textfield__label" for="booking-form--number">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
                                <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="hm-booking-form--country">
                                <label class="mdl-textfield__label" for="comment-name">Country <em> *</em></label>
                                <span class="mdl-textfield__info">For Example: Iran</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="hm-booking-form--email">
                                <label class="mdl-textfield__label" for="comment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                <span class="mdl-textfield__info">For Example: example@gmail.com</span>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mdl-textfield mdl-js-textfield form-input">
                                <textarea class="mdl-textfield__input" rows="4" id="hm-booking-form--comment-message"></textarea>
                                <label class="mdl-textfield__label" for="comment-message">How can we help you...?</label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-submit">
                                <button type="submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" id="hm-booking-form--submit-btn">Submit</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>    
    </div>    
</div>
@endsection
