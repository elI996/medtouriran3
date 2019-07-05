
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
            <h1>Destinations</h1>
            <p><a href="#">Home</a> &#8594; <a href="">Medical Tourism</a> &#8594; <span>Destinations</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Doctor List Section -->
<div id="doctor-page" class="layer-stretch">
    <div class="layer-wrapper layer-bottom-10">
        <div class="row">
            @foreach($cities as $city)
            <div class="col-md-4">
                <div class="theme-block theme-block-hover text-left">
                    <div class="theme-block-picture">
                        <img class="card-img-top" src="{{Helper::placeholder(Voyager::image($city->thumbnail('medium')))}}" alt="{{$city->getTranslatedAttribute('title')}}">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">{{$city->getTranslatedAttribute('title')}}</h4>
                        <p class="text-muted">{{$city->getTranslatedAttribute('excerpt')}}</p>
                        <a href="{{ route('aboutMedical.destination.show',[$city,$city->slug]) }}" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary">Read More</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div><!-- End Doctor List Section -->

<form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
@csrf
@include('front.common.form')
</form>
@endsection

   
