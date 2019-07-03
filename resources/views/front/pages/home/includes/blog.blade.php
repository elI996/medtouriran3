<div id="hm-blog" class="layer-stretch">
    <div class="layer-wrapper layer-bottom-10 text-center">
        <div class="layer-ttl">
            <h3>Latest Posts</h3>
        </div>
        <div class="row">
            @foreach($posts as $post)
            <div class="col-md-6 col-lg-4">
                <div class="theme-block theme-block-hover">
                    <div class="theme-block-picture">
                        <div class="blog-card-date">{{$post->created_at->format('d M Y')}}</div>
                        <img src="{{Helper::placeholder(Voyager::image($post->thumbnail('medium')))}}" alt="{{$post->getTranslatedAttribute('title')}}">
                    </div>
                    <div class="blog-card-ttl">
                        <h3><a href="#">{{$post->getTranslatedAttribute('title')}}</a></h3>
                    </div>
                    <div class="blog-card-details">
                        <p><i class="fa fa-user"></i>{{$post->authorId->name}}</p>
                        <p><a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Read More</a></p>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>