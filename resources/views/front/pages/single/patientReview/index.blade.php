
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>Patient's Review</h1>
                <p><a href="{{route('home')}}">Home</a> &#8594; <span>Patient's Review</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start Faq Section -->
    <div class="layer-stretch my-3" id="patients-review-page">
        <div class="text-center my-4 layer-ttl">
            <h3>Videos</h3>
        </div>
        <div class="layer-container">
            <div class="row">
                <div class="patients-review-page--flex">
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                    <div class="patients-review-page--card">
                        <div class="patients-review-page--media">
                            <div class="patients-review-page--theme-block">
                                <div class="gallery-block theme-block-picture package-picture-2">
                                    <iframe width="100%" height src="https://www.youtube.com/embed/gMccvtUc3B8?start=1" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="patients-review--info">
                            <h3>lorem ipsum</h3>
                            <p>Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layer-ttl">
            <h3>Photos</h3>
        </div>
        <div class="layer-container">
            <div class="patients-review-page--flex">
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
                <div class="patients-review-page--card">
                    <div class="patients-review--media">
                        <!--<img src="/images/"></img>-->
                        <div class="theme-block">
                            <div class="gallery-block theme-block-picture package-picture-2">
                                <a href="/images/packages/1/rhinoplasty-gallery3.jpg">
                                    <img src="/images/packages/1/rhinoplasty-gallery3.jpg" alt="image">
                                    <div class="gallery-layer">
                                        <div class="gallery-layer-dark">
                                            <p><i class="fa fa-search-plus"></i></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="patients-review--info">
                        <h3>lorem ipsum</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad repellat facilis, optio cupiditate. Ab minima qui, maiores delectus. Recusandae, voluptatem.</p>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End FAQ Section -->
    
    <!-- START booking Section -->
    <div class="booking-section">
        
    </div>
    <!-- End booking Section -->
@endsection

