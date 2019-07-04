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
            <h1>Blogs</h1>
            <p><a href="{{route('home')}}">Home</a> &#8594; <span>Blogs</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Blog List Section -->
<div class="layer-stretch">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-8 text-center">
                @foreach($posts as $post)
                <div class="theme-material-card blog-full-block">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="blog-full-date">{{$post->created_at->format('d M Y')}}</div>
                            <div class="theme-img theme-img-scalerotate">
                                <img src="{{Helper::placeholder(Voyager::image($post->thumbnail('medium')))}}" alt="{{$post->getTranslatedAttribute('title')}}">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="blog-full-ttl">
                                <h3><a href="{{route('blog.show',[$post,$post->slug])}}">{{$post->getTranslatedAttribute('title')}}</a></h3>
                            </div>
                            <div class="blog-full-description">{{$post->getTranslatedAttribute('excerpt')}}</div>
                            <div class="blog-full-ftr">
                                <a class="pull-left blog-full-author"><i class="fa fa-user"></i> {{$post->authorId->name}} </a>
                                <a href="{{route('blog.show',[$post,$post->slug])}}" class="pull-right anchor-icon">
                                    Read More <i class="fa fa-arrow-right"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                {{$posts->links()}}
            </div>
            @include('front.pages.blog.includes.sidebar')
        </div>
    </div>
</div><!-- End Blog List Section -->

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
                                    <label class="mdl-textfield__label" for="booking-form--name">Name <em> *</em></label>
                                    <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                    <span class="mdl-textfield__info">For Example: Elham Jafari</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                    <input class="mdl-textfield__input" type="text" pattern="[0-9+-]*" id="booking-form--number">
                                    <label class="mdl-textfield__label" for="booking-form--number">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
                                    <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                    <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="booking-form--country">
                                    <label class="mdl-textfield__label" for="booking-form--country">Country <em> *</em></label>
                                    <span class="mdl-textfield__info">For Example: Iran</span>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                    <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="booking-form--email">
                                    <label class="mdl-textfield__label" for="booking-form--email">Email</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                    <span class="mdl-textfield__info">For Example: example@gmail.com</span>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="mdl-textfield mdl-js-textfield form-input">
                                    <textarea class="mdl-textfield__input" rows="4" id="booking-form--comment-message"></textarea>
                                    <label class="mdl-textfield__label" for="booking-form--comment-message">How can we help you...?</label>
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



