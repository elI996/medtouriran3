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
            <h1>Doctors</h1>
            <p><a href="{{route('home')}}">Home</a> &#8594; <span>Doctors</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Doctor List Section -->
<div id="doctors-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        @foreach($doctors as $doctor)
                        <div class="col-md-6">
                            <div class="theme-block theme-block-hover">
                                <a href="">
                                    <div class="theme-block-picture">
                                    <img src="{{Helper::placeholder(Voyager::image($doctor->thumbnail('medium'),'avatar'))}}" alt="{{$doctor->getTranslatedAttribute('name')}}">
                                    </div>
                                    <div class="doctor-name">
                                        <h4><a href={{route('service.doctor.show',[$doctor,$doctor->slug])}}>{{$doctor->getTranslatedAttribute('name')}}</a></h4>
                                    </div>
                                </a> 
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        @include('front.common.rating', ['star' => $doctor->rate/20])
                                        <p>
                                            @include('front.common.items', ['items' => $doctor->categories])
                                        </p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <!--<p><i class="fa fa-shield"></i>CEO &amp; Founder</p>-->
                                        <p><i class="fa fa-mortar-board"></i>{{$doctor->degree}}</p>
                                        <!--<p><i class="fa fa-trophy"></i>Awards: 8</p>-->
                                        <p><i class="fa fa-star"></i>Experience: {{$doctor->experience}} year</p>
                                    </div>
                                </div>
                                <a href={{route('service.doctor.show',[$doctor,$doctor->slug])}}>
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">See profile
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>
                                 </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    {{$doctors->links()}}
                </div>
                <div class="col-lg-4">
                    <div class="theme-material-card text-center">
                        <div class="sub-ttl">Make An Appointment</div>
                        @include('front.pages.services.doctors.includes.appointment-form')
                    </div>
                    <div class="theme-material-card">
                        <div class="sub-ttl">Our Services</div>
                        <div class="flexslider theme-flexslider">
                            <ul class="slides">
                                @foreach($hotels as $hotel)
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="{{Voyager::image($hotel->thumbnail('medium'))}}" alt="{{$hotel->getTranslatedAttribute('title')}}" />
                                        <h4>{{$hotel->getTranslatedAttribute('title')}}</h4>
                                        <a href="{{route('service.hotel.show',[$hotel->type,$hotel,$hotel->slug])}}" class="anchor-icon pull-right">Read More <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor List Section -->
@endsection

