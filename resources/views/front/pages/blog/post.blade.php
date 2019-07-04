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
            <h1>{{$single_post->getTranslatedAttribute('title')}}</h1>
            <p><a href="{{route('home')}}">Home</a> &#8594; <a href="{{route('blog.index')}}">Blogs</a> &#8594; <span>Post</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Blog Section -->
<div class="layer-stretch">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-8 text-center">
                <div class="theme-material-card">
                    <div class="theme-img blog-picture">
                        <img  src="{{Helper::placeholder(Voyager::image($single_post->thumbnail('medium')))}}" alt="{{$single_post->getTranslatedAttribute('title')}}">
                    </div>
                    <h2 class="blog-ttl">{{$single_post->getTranslatedAttribute('title')}}</h2>
                    <ul class="blog-detail">
                        <li><i class="fa fa-user-o"></i>{{$single_post->authorId->name}}</li>
                        <li><i class="fa fa-calendar-o"></i>{{$single_post->created_at->format('d M Y')}}</li>
                        <li><i class="fa fa-comment-o"></i>69</li>
                    </ul>
                    {!! $single_post->getTranslatedAttribute('body') !!}
                    <div class="row blog-meta">
                        <div class="col-sm-7 blog-tag">
                            <p>Tags : </p>
                            <ul>
                                <li><a href="#">Health, </a></li>
                                <li><a href="#">Wellness, </a></li>
                                <li><a href="#">Science </a></li>
                            </ul>
                        </div>
                        <div class="col-sm-5 text-right">
                                <ul class="social-list social-list-sm">
                                    @include('front.common.social-networks')
                                </ul>
                        </div>
                    </div>
                </div>  
                {{-- <div class="theme-material-card">
                    <div class="sub-ttl">About Author</div>
                    <div class="blog-author">
                        <div class="row">
                            <div class="col-3 hidden-xs-down">
                                <div class="theme-img">
                                    <img src="/uploads/doctor-1.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-9 blog-author-details">
                                <h4>Dr. Daniel Barnes</h4>
                                <a>HOD Orthlogy Department</a>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi quaerat quasi eum tempora illum.</p>
                            </div>
                        </div>
                    </div>
                </div> --}}
                <div class="theme-material-card">
                    <div class="sub-ttl">Comments (3)</div>
                    <ul class="comment-list">
                        <li>
                            <div class="row">
                                <div class="col-2 hidden-xs-down pr-0 comment-img">
                                    <div class="theme-img">
                                        <img src="/uploads/comment-2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-10 comment-detail text-left">
                                    <div class="comment-meta">
                                        <span>Micheal Doe</span>
                                        <span>27 June 2017</span>
                                    </div>
                                    <div class="comment-post">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo ad odio, doloribus dicta. Nesciunt odit, sed optio repudiandae.
                                    </div>
                                    <ul class="comment-action">
                                        <li><a><i class="fa fa-thumbs-up"></i>Like</a></li>
                                        <li><a><i class="fa fa-thumbs-down"></i>Dislike</a></li>
                                        <li><a><i class="fa fa-reply"></i>Reply</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-2 hidden-xs-down pr-0 comment-img">
                                    <div class="theme-img">
                                        <img src="/uploads/comment-5.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-10 comment-detail text-left">
                                    <div class="comment-meta">
                                        <span>Meera Reed</span>
                                        <span>27 June 2017</span>
                                    </div>
                                    <div class="comment-post">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo ad odio, doloribus dicta. Nesciunt odit, sed optio repudiandae.
                                    </div>
                                    <ul class="comment-action">
                                        <li><a><i class="fa fa-thumbs-up"></i>Like</a></li>
                                        <li><a><i class="fa fa-thumbs-down"></i>Dislike</a></li>
                                        <li><a><i class="fa fa-reply"></i>Reply</a></li>
                                    </ul>
                                </div>
                            </div>
                            <ul class="comment-list second-comment">
                                <li>
                                    <div class="row">
                                        <div class="col-2 hidden-xs-down pr-0 comment-img">
                                            <div class="theme-img">
                                                <img src="/uploads/comment-6.jpg" alt="">
                                            </div>
                                        </div>
                                        <div class="col-10 comment-detail text-left">
                                            <div class="comment-meta">
                                                <span>Anthony Collins</span>
                                                <span>27 June 2017</span>
                                            </div>
                                            <div class="comment-post">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo ad odio, doloribus dicta. Nesciunt odit, sed optio repudiandae.
                                            </div>
                                            <ul class="comment-action">
                                                <li><a><i class="fa fa-thumbs-up"></i>Like</a></li>
                                                <li><a><i class="fa fa-thumbs-down"></i>Dislike</a></li>
                                                <li><a><i class="fa fa-reply"></i>Reply</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl layer-ttl-white">Leave A Reply</div>
                    <div class="row comment-form">
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="comment-name">
                                <label class="mdl-textfield__label" for="comment-name">Name <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="comment-email">
                                <label class="mdl-textfield__label" for="comment-email">Email <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mdl-textfield mdl-js-textfield form-input">
                                <textarea class="mdl-textfield__input" rows="4" id="comment-message" ></textarea>
                                <label class="mdl-textfield__label" for="comment-message">Your Comment ...</label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-submit">
                                <button type="submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Submit Comment</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
            @include('front.pages.blog.includes.sidebar')
        </div>
    </div>
</div><!-- End Blog Section -->
<!-- Start Emergency Section -->

@endsection

