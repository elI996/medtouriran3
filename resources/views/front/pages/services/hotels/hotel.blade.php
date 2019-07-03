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
            <h1>{{$hotel->getTranslatedAttribute('title')}}</h1>
            <p><a href="#">Home</a> &#8594; <a href="#">Hotels</a> &#8594; <span>hotel felan</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Service Section -->
<div id="hotel-page">
    <div class="layer-stretch">
        <div class="row layer-wrapper">
            <div class="col-lg-8 text-center">
                <div class="theme-material-card">
                    <div class="hotel-page--name">
                        {{$hotel->getTranslatedAttribute('title')}}
                    </div>
                    <div class="hotel-page--location">
                        <i class="fas fa-map-marker-alt"></i>Iran, {{$hotel->city->getTranslatedAttribute('title')}}
                    </div>
                    @include('front.pages.services.hotels.includes.rating-stars')
                    <div class="theme-img theme-img-scalerotate"><img src="{{Voyager::image($hotel->image)}}" alt="{{$hotel->getTranslatedAttribute('title')}}"></div>
                    <div class="service-post">
                        {!! $hotel->getTranslatedAttribute('description') !!}
                    </div>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Gallery</div>
                        <div id="hotel-page--gallery-owl-carousel" class="owl-carousel owl-drag owl-theme theme-owl-dot">
                            @if(!empty($hotel->images))
                            <?php $images = json_decode($hotel->images); ?>
                            @foreach($images as $image)
                            <div class="owl-item">
                                <div class="theme-block">
                                    <div class="gallery-block theme-block-picture doctor-picture-2">
                                        <a href="{{ Voyager::image($image)}}">
                                            <img src="{{ Voyager::image($hotel->getThumbnail($image, 'medium'))}}" alt="image">
                                            <div class="gallery-layer">
                                                <div class="gallery-layer-dark">
                                                    <p><i class="fa fa-search-plus"></i></p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            @endforeach
                            @endif
                        </div>
                    </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Reviews (9)</div>
                    <ul class="comment-list">
                        <li>
                            <div class="row">
                                <div class="col-2 hidden-xs-down pr-0 comment-img">
                                    <div class="theme-img">
                                        <img src="/uploads/comment-1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-10 comment-detail text-left">
                                    <div class="comment-meta">
                                        <span>Jorah Mormant</span>
                                        <span>27 June 2017</span>
                                    </div>
                                    <div class="comment-post">
                                        Laboris nisi ut aliquip ex ea Duis aute irure dolor in reprehenderit in voluptate velit .Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit .
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
                                        <img src="/uploads/comment-3.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-10 comment-detail text-left">
                                    <div class="comment-meta">
                                        <span>Gerry George</span>
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
                                        <img src="/uploads/comment-4.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-10 comment-detail text-left">
                                    <div class="comment-meta">
                                        <span>Samuel Wikensy</span>
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
                    <div class="sub-ttl layer-ttl-white">Write a Review</div>
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
            <div class="col-lg-4">
                <div class="theme-material-card">
                    <div class="sub-ttl">Hotel Facilities</div>
                    <ul class="category-list">
                        <li><span class="fa fa-money"></span>Cost: From {{$hotel->price}}$</li>
                        <li><span class="fa fa-child"></span>Person: {{$hotel->person}}</li>
                        <li><span class="fa fa-bed"></span>Beds: {{$hotel->bed}}</li>
                        @foreach($hotel->items as $item)
                        <li><span class="{{$item->icon}}"></span>{{$item->getTranslatedAttribute('title')}}</li>
                        @endforeach
                    </ul>
                </div>
                <div class="theme-material-card text-center">
                    <div class="sub-ttl">Make A Reservation</div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="sideapnt-name">
                        <label class="mdl-textfield__label" for="sideapnt-name">Name</label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-envelope-o"></i>
                        <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="sideapnt-email">
                        <label class="mdl-textfield__label" for="sideapnt-email">Email</label>
                        <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-phone"></i>
                        <input class="mdl-textfield__input" type="text" pattern="[0-9+]*" id="sideapnt-mobile">
                        <label class="mdl-textfield__label" for="sideapnt-mobile">Mobile Number</label>
                        <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                    </div>
                    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                        <i class="fa fa-suitcase"></i>
                        <select class="mdl-selectfield__select" id="sideapnt-department">
                            <option value=""></option>
                            <option value="bussiness">Bussiness</option>
                            <option value="medical">Medical</option>
                        </select>
                        <label class="mdl-selectfield__label" for="sideapnt-department">Travel Reason</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-calendar-o"></i>
                        <input class="mdl-textfield__input datetimepicker" type="text" id="sideapnt-date" readonly>
                        <label class="mdl-textfield__label" for="sideapnt-date">Date</label>
                    </div>
                    <!--<div class="side-error"></div>-->
                    <button class="btn button-primary button-lg side-appointment" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Processing">Submit</button>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Location</div>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3238.2129912956125!2d51.37930921512576!3d35.745569334048376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8e0719694e4b75%3A0x46a536ae2e926588!2sEsteghlal+Hotel!5e0!3m2!1sen!2snl!4v1559036795442!5m2!1sen!2snl" width="300" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Similar Hotels</div>
                    <a href="" class="row blog-recent">
                        <div class="col-4 blog-recent-img round">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-1.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Esteghlal Hotel</h4>
                            <p>Iran , Tehran</p>
                            <span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </span>
                        </div>
                    </a>
                    <a href="" class="row blog-recent">
                        <div class="col-4 blog-recent-img round">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-1.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Esteghlal Hotel</h4>
                            <p>Iran , Tehran</p>
                            <span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </span>
                        </div>
                    </a>
                    <a href="" class="row blog-recent">
                        <div class="col-4 blog-recent-img round">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-1.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Esteghlal Hotel</h4>
                            <p>Iran , Tehran</p>
                            <span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </span>
                        </div>
                    </a>
                    <a href="" class="row blog-recent">
                        <div class="col-4 blog-recent-img round">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-1.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Esteghlal Hotel</h4>
                            <p>Iran , Tehran</p>
                            <span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Service Section -->
@endsection

   
   
@section('js')

<script type="text/javascript">
    $('#hotel-page--gallery-owl-carousel').owlCarousel({
        loop:true,
        margin:5,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:2
            },
            1000:{
                items:3
            }
        }
    })
</script>
@endsection