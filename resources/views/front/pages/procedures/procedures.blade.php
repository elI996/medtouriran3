
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
                <h1>Procedures</h1>
                <p><a href="{{route('home')}}">Home</a> &#8594; <span>Procedures</span></p>
            </div>
        </div> 
    </div><!-- End Page Title Section -->
    <!-- Start Service List Section --> 
    <div id="procedures-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <div class="filter-menu m-0 mb-5">
                <button class="type-filter active" data-filter="all">All</button>
                @foreach($categories->where('parent_id',null) as $category)
                <button class="type-filter" data-filter="{{Helper::remove_space($category->title)}}">{{$category->getTranslatedAttribute('title')}}</button>   
                @endforeach
            </div>
            <div class="row">
                @foreach($categories->where('parent_id','!=',null) as $category)
                    <div class="col-md-4 col-lg-3 t-filter c-filter {{Helper::remove_space($category->parent->title)}}">
                        <div class="theme-block">
                        <a href="{{route('procedure.show',[$category,$category->slug])}}">
                                <div class="theme-block-picture">
                                    <img src="{{Helper::placeholder(Voyager::image($category->thumbnail('medium')))}}" alt="">
                                </div>
                                <div class="theme-block-data service-block-data">
                                    <div class="service-icon"><i class="{{$category->icon}}"></i></div>
                                    <h4>{{$category->getTranslatedAttribute('title')}}</h4>
                                </div>
                            
                                <div class="theme-block-hidden service-hidden-block">
                                    <i class="{{$category->icon}}"></i>
                                    <h4>{{$category->getTranslatedAttribute('title')}}</h4>
                                    <p class="service-description paragraph-small paragraph-black">
                                        <span>
                                            {{$category->getTranslatedAttribute('excerpt')}}
                                        </span>
                                        <b>(Click to Read More)</b>
                                    </p>
                                </div>   
                            </a>
                        </div>
                    </div>  
                @endforeach
            </div>
        </div>
    </div><!-- End Service List Section -->
    
    <form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
        @csrf
        @include('front.common.form')
    </form>
@endsection

