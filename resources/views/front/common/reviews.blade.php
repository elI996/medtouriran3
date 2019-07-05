<div class="theme-material-card" id="package-page--reviews">
        <div class="sub-ttl">Reviews ({{count($reviews)}})</div>
        <ul class="comment-list">
            @foreach($reviews as $review)
            <li>
                <div class="row">
                    <div class="col-2 hidden-xs-down pr-0 comment-img">
                        <div class="theme-img">
                            <img src="/uploads/comment-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-10 comment-detail text-left">
                        <div class="comment-meta">
                            <span>{{$review->name}}</span>
                            <span>{{$review->created_at->format('d M Y')}}</span>
                        </div>
                        <div class="comment-post">
                            {{$review->comment}}
                        </div>
                        {{-- <ul class="comment-action">
                            <li><a><i class="fa fa-thumbs-up"></i>Like</a></li>
                            <li><a><i class="fa fa-thumbs-down"></i>Dislike</a></li>
                            <li><a><i class="fa fa-reply"></i>Reply</a></li>
                        </ul> --}}
                    </div>
                </div>
            </li>
            @endforeach
        </ul>
    </div>