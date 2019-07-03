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
            <h1>Post Title</h1>
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
                        <img class="" src="/uploads/blog-2.jpg" alt="">
                    </div>
                    <h2 class="blog-ttl">Why Food Poisoning happened and How To  – Home Remedy</h2>
                    <ul class="blog-detail">
                        <li><i class="fa fa-user-o"></i>Daniel Barnes</li>
                        <li><i class="fa fa-calendar-o"></i>27 June 2017</li>
                        <li><i class="fa fa-comment-o"></i>69</li>
                    </ul>
                    <div class="blog-post">
                        <p class="paragraph-medium paragraph-black">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Exercitationem molestias cumque, dolore assumenda recusandae nobis at harum suscipit temporibus aliquid laudantium, minima aspernatur inventore omnis laboriosam labore, numquam iste earum.</p>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="theme-img">
                                    <img src="/uploads/service-2.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="theme-img theme-img-scale">
                                    <img src="/uploads/service-1.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="theme-img theme-img-scalerotate">
                                    <img src="/uploads/service-5.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <p class="paragraph-medium paragraph-black">Est wisi interpretaris te. Velit oblique vel ex, mea sanctus blandit quaerendum ea, cu movet viris posidonium cum. Ea expetenda repudiandae sit. No animal facilisi conclusionemque pri, cetero reprehendunt te sed. Tale zril veniam pro id, eum eu mucius accusata maluisset. Nemore regione facilisis est te, eius scripta delectus ne eum.</p>
                        <div class="theme-quote">
                            <i class="fa fa-quote-left"></i> Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti ad litora torquent per conubia nostra per inceptos himenaeos.
                        </div>
                        <p class="paragraph-medium paragraph-black">Est wisi interpretaris te. Velit oblique vel ex, mea sanctus blandit quaerendum ea, cu movet viris posidonium cum. Ea expetenda repudiandae sit. No animal facilisi conclusionemque pri, cetero reprehendunt te sed. Tale zril veniam pro id, eum eu mucius accusata maluisset. Nemore regione facilisis est te, eius scripta delectus ne eum.</p>
                        <p class="paragraph-medium paragraph-black">Cu quaeque menandri recusabo duo, ei eum dictas corrumpit sadipscing. Eam tamquam constituam in, iusto tritani id sit. At nobis nominati cum. Sea error vidisse intellegebat ut, adolescens efficiantur ea qui.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="theme-list text-left">
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                    <li><i class="fa fa-hand-o-right color-orange"></i>Asperiores quis voluptates voluptas</li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <div class="theme-img theme-img-scalerotate">
                                    <img src="/uploads/blog-2.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <p class="paragraph-medium paragraph-black">Ullum doming tamquam eu nam, est quaeque constituam inciderint ut. Alii alienum eu mei, evertitur instructior deterruisset et eum. Mel cu causae eirmod scribentur, id habeo brute tempor vim. Duo ignota denique ei, eros perpetua an mei. Bonorum debitis eu quo.</p>
                        <p class="paragraph-medium paragraph-black">An dictas tacimates ius, eum denique laboramus efficiantur an. Ne alterum tibique consequuntur pri, no tractatos scriptorem interpretaris cum. Cu aperiam indoctum sed, vix aliquando temporibus conclusionemque ea. Id nec officiis consectetuer, nec quis homero consetetur no.</p>
                        <p class="paragraph-medium paragraph-black">Tritani labitur epicurei ne per. Enim voluptaria complectitur nec te, aperiri pertinax explicari eu sit, an lucilius quaestio mel. Quas semper invidunt ne sit. Cu eros illud patrioque mea, qui ex luptatum accusamus. Sea ad munere nonumes definitiones, dicit mandamus intellegebat eu nam.</p>
                    </div>
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
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>  
                <div class="theme-material-card">
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
                </div>
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
            <div class="col-lg-4">
                <div class="theme-material-card">
                    <div class="sub-ttl">Recent Post</div>
                    <a href="#" class="row blog-recent">
                        <div class="col-4 blog-recent-img">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-1.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Why Food Poisoning happened and How To</h4>
                            <p>08 Jun 2017</p>
                        </div>
                    </a>
                    <a href="#" class="row blog-recent">
                        <div class="col-4 blog-recent-img">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-2.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Which Healthy Food Fads Should You Follow?</h4>
                            <p>27 Apr 2017</p>
                        </div>
                    </a>
                    <a href="#" class="row blog-recent">
                        <div class="col-4 blog-recent-img">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-3.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>A Broken Heart Can Hurt More Than You Think</h4>
                            <p>29 Jan 2017</p>
                        </div>
                    </a>
                    <a href="#" class="row blog-recent">
                        <div class="col-4 blog-recent-img">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-4.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Keep it Clean: Make Sure Your Fruits and Veggies</h4>
                            <p>24 Jan 2017</p>
                        </div>
                    </a>
                    <a href="#" class="row blog-recent">
                        <div class="col-4 blog-recent-img">
                            <img class="img-responsive img-thumbnail" src="/uploads/recent-5.jpg" alt="">
                        </div>
                        <div class="col-8 blog-recent-post">
                            <h4>Should I bring my child in for a routine physical?</h4>
                            <p>15 Jan 2017</p>
                        </div>
                    </a>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Trending Post</div>
                    <div class="flexslider theme-flexslider">
                        <ul class="slides">
                            <li>
                                <div class="theme-flexslider-container">
                                    <img src="/uploads/blog-1.jpg" alt="" />
                                    <h4 class="font-16 text-left"><a href="#">Why Food Poisoning happened and How To – Home Remedy</a></h4>
                                    <p class="text-left primary-color">24 Aug 2017</p>
                                </div>
                            </li>
                            <li>
                                <div class="theme-flexslider-container">
                                    <img src="/uploads/blog-2.jpg" alt="" />
                                    <h4 class="font-16 text-left"><a href="#">All you need to know about Chinese Food, Is it good or bad?</a></h4>
                                    <p class="text-left primary-color">24 Jul 2017</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Categories</div>
                    <ul class="category-list">
                        <li><a href="#"><i class="fa fa-newspaper-o"></i>News</a><span>(10)</span></li>
                        <li><a href="#"><i class="fa fa-history"></i>History</a><span>(20)</span></li>
                        <li><a href="#"><i class="fa fa-th"></i>Mythology</a><span>(9)</span></li>
                        <li><a href="#"><i class="fa fa-cloud"></i>Technology</a><span>(21)</span></li>
                        <li><a href="#"><i class="fa fa-flask"></i>Science</a><span>(13)</span></li>
                        <li><a href="#"><i class="fa fa-info-circle"></i>New Disese</a><span>(7)</span></li>
                        <li><a href="#"><i class="fa fa-hospital-o"></i>Health</a><span>(5)</span></li>
                        <li><a href="#"><i class="fa fa-wheelchair-alt"></i>wellness</a><span>(8)</span></li>
                    </ul>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Popular Tags</div>
                    <a href="#" class="theme-tag">Health</a>
                    <a href="#" class="theme-tag">Wellness</a>
                    <a href="#" class="theme-tag theme-tag-colored">Science</a>
                    <a href="#" class="theme-tag">Doctor</a>
                    <a href="#" class="theme-tag theme-tag-colored">Clinic</a>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Blog Section -->
<!-- Start Emergency Section -->

@endsection

