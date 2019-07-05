
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	
<!--blog-4-->

<!-- Start Page Title Section -->
<div class="page-ttl">
    <div class="layer-stretch">
        <div class="page-ttl-container">
            <h1>{{$city->getTranslatedAttribute('title')}}</h1>
            <p><a href="{{ route('home') }}">Home</a> &#8594; <a href="{{ route('aboutMedical') }}"> Medical Tourism </a> &#8594; <a href="{{ route('aboutMedical.destination.index') }}">Destinations</a> &#8594; <span>{{$city->getTranslatedAttribute('title')}}</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Blog List Section -->
<div class="layer-stretch" id="destination-page">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-8 text-left">
                {!! $city->getTranslatedAttribute('description') !!}
            </div>
            @include('front.pages.blog.includes.sidebar')s
        </div>
    </div>
</div><!-- End Blog List Section -->

<form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
@csrf
@include('front.common.form')
</form>
@endsection


  
  
  
  
  
  
  
