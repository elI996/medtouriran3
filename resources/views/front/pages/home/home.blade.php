
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	

<!-- Start Slider Section -->
    @include('front.pages.home.includes.slider')
<!-- End Slider Section -->

<!-- Start treatment Section -->
    @include('front.pages.home.includes.treatment')
<!-- End treatment Section -->

<!-- Start Video Review Section -->
    @include('front.pages.home.includes.video_review')
<!-- End Video Review Section -->

<!-- Start Service Section -->
    @include('front.pages.home.includes.service')
<!-- End Service Section -->

<!-- Start hm-packages Section -->
    @include('front.pages.home.includes.package')
<!-- End hm-packages Section -->

<!-- Start Feature Section -->
    @include('front.pages.home.includes.feature')
<!-- End Feature Section -->

<!-- Start About Section -->
    @include('front.pages.home.includes.about')
<!-- End About Section -->

<!-- Start Blog Section -->
    @include('front.pages.home.includes.blog')
<!-- End Blog Section -->

<!-- Start Testimonial Section -->
    @include('front.pages.home.includes.testimonial')
<!-- End Testimonial Section -->

<!-- Start Form Section -->
    @include('front.pages.home.includes.form')
<!-- End Form Section -->

@endsection

