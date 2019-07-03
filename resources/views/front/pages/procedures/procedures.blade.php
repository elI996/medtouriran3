
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

