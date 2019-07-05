
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
                <h1>Contact Us</h1>
                <p><a href="#">Home</a> &#8594; <span>Contact Us</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start Contact Detail Section -->
    <div id="contact-page" class="layer-stretch">
        <div class="layer-wrapper">
            <div class="row text-center">
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-plus-square-o"></i>
                        <span>APPOINTMENT</span>
                        <p class="paragraph-medium paragraph-black">setting('site.phone')/p>
                        <p>setting('site.email')</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-phone"></i>
                        <span>Call Us</span>
                        <p class="paragraph-medium paragraph-black">{{setting('site.phone')}}</p>
                        <p>{{setting('site.phone')}}</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-envelope"></i>
                        <span>Email Us</span>
                        <p class="paragraph-medium paragraph-black">{{setting('site.email')}}</p>
                        <p>{{setting('site.email')}}</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 contact-info-block">
                    <div class="contact-info-inner">
                        <i class="fa fa-map-marker"></i>
                        <span>Location</span>
                        <p class="paragraph-medium paragraph-black">{{setting(App::getLocale().'.address')}}</p>
                        {{-- <p class="paragraph-medium paragraph-black">Country, Pincode</p> --}}
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Contact Detail Section -->
    <!-- Start Request Form Section -->
    <form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
    @csrf
    @include('front.common.form')
    </form>
    <!-- Start Google Map Section -->
    <div id="map">
        <div class="map-wrapper">
            <div id="map-container"></div>
        </div>
        <div class="map-address">
            <div class="map-icon"><i class="fa fa-map-marker"></i></div>
            <div class="map-address-ttl">Our Location</div>
            <div class="paragraph-medium paragraph-black">Street name, City, Country</div>
        </div>
    </div><!-- End Google Map Section -->
    <!-- Start Emergency Section -->
@endsection

