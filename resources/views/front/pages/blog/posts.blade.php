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

<form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
@csrf
@include('front.common.form')
</form>
@endsection



