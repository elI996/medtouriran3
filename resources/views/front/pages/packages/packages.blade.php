
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
                <h1>Packages</h1>
                <p><a href="{{route('home')}}">Home</a> &#8594; <span>Packages</span></p>
            </div>
        </div> 
    </div><!-- End Page Title Section -->
    <!-- Start Doctor List Section -->
    <div id="packages-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <div class="filter-menu m-0 mb-5">
                <button class="type-filter active" data-filter="all">All</button>
                @foreach ($categories as $category)
                <button class="type-filter" data-filter="{{Helper::remove_space($category->title)}}">{{$category->getTranslatedAttribute('title')}}</button> 
                @endforeach
            </div>
            <div class="row">
                @foreach ($packages as $package)
                    <div class="col-md-6 col-lg-4 t-filter c-filter {{Helper::remove_space($package->title)}}">
                        <div class="packages-page--price">
                            <span class="packages-page--price-text1">from</span>  
                            <span class="packages-page--price-text2">{{$package->price}}$</span>  
                        </div>
                        <div class="theme-block theme-block-hover">
                            <div class="theme-block-picture">
                            <img src="{{Helper::placeholder(Voyager::image($package->background))}}" alt="{{$package->getTranslatedAttribute('title')}}">
                            </div>
                            <div class="doctor-name packages-page--name">
                                <h4><a href="{{route('package.show',[$package,$package->slug])}}"><b>{{$package->getTranslatedAttribute('title')}}</b></a></h4>
                            </div>
                            <div class="doctor-details packages-page--details">
                                <div class="doctor-specility">
                                    <p>Package In 
                                        @include('front.pages.packages.includes.cities')
                                    </p>
                                </div>
                                <div class="doctor-details-extra">
                                    <div class="doctor-details-extra-3">
                                        @include('front.pages.packages.includes.items')
                                    </div>
                                    <a href="{{route('package.show',[$package,$package->slug])}}">
                                        <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                            <span class="mdl-button__ripple-container">
                                                <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                            </span>
                                        </button>
                                     </a>
                                </div>
                            </div>
                        </div>
                    </div> 
                @endforeach           
            </div>
            {{ $packages->links() }}
            {{-- <ul class="theme-pagination">
                <li><a href="#" class="active">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">...</a></li>
                <li><a href="#">5</a></li>
            </ul> --}}
        </div>
    </div><!-- End Service List Section -->
    <form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
    @csrf
    @include('front.common.form')
    </form>
@endsection

