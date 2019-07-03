
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

@section('content')	
<!--blog-4-->

<!-- Start Page Title Section -->
<div class="page-ttl">
    <div class="layer-stretch">
        <div class="page-ttl-container">
            <h1>Tehran</h1>
            <p><a href="{{ route('home') }}">Home</a> &#8594; <a href="{{ route('aboutMedical') }}"> Medical Tourism </a> &#8594; <a href="{{ route('aboutMedical.destination.index') }}">Destinations</a> &#8594; <span>Tehran</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Blog List Section -->
<div class="layer-stretch" id="destination-page">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-8 text-left">
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-1.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">Which Healthy Food Fads Should You Follow? Lorem ipsum dolor sit amet</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Daniel Barnes On 27 Apr 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-2.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">A Broken Heart Can Hurt More Than You Think, Lorem ipsum dolor sit amet</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Jiya Shen On 29 Jan 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-3.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3>
                            <a href="#">Keep it Clean: Make Sure Your Fruits and Veggies Are Safe and Healthy</a>
                        </h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Micheal On 24 Jan 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-4.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">What steps can I take as a parent to ensure my child stays healthy during the school year?</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Cheri Aria On 15 Jan 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-5.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">Should I bring my child in for a routine physical prior to school starting?</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Theodore Bennett On 15 Jan 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-6.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">Why Food Poisoning happened and How To  – Home Remedy</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Melissa Bates On 08 Jun 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-7.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">All you need to know about Chinese Food, Is it good or bad?</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Cheri Aria On 05 Jun 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-12 blog-block-3">
                    <div class="blog-list-picture">
                        <div class="theme-img">
                            <img src="/uploads/blog-8.jpg" alt="">
                        </div>
                    </div>
                    <div class="blog-list-ttl">
                        <h3><a href="#">Keep it Clean: Make Sure Your Fruits and Veggies Are Safe and Healthy</a></h3>
                    </div>
                    <div class="blog-list-meta">
                        <p>Posted By Micheal On 27 Apr 2017</p>
                    </div>  
                    <div class="blog-list-post">
                        <p class="paragraph-medium paragraph-black">
                            <span>Restinguet citius, si ardentem acceperit. Non est enim vitium in oratione solum, sed etiam in moribus. In schola desinis. An haec ab eo non dicuntur? Longum est enim ad omnia respondere, quae a te dicta sunt. Cetera illa adhibebat, quibus demptis negat se Epicurus intellegere quid sit bonum.</span>
                            <a href="#">(Read More)</a>
                        </p>
                    </div>
                </div>
                <ul class="theme-pagination">
                    <li><a href="#" class="active">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">...</a></li>
                    <li><a href="#">10</a></li>
                </ul>
            </div>
            <div class="col-lg-4">
                <div class="sidebar text-center">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                        <input class="mdl-textfield__input" type="text" id="sidebar-search">
                        <label class="mdl-textfield__label" for="sidebar-search">Enter Any Keyword</label>
                        <button class="fa fa-search search-button"></button>
                    </div>
                </div>
                <div class="sidebar">
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
                <div class="sidebar">
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
                <div class="sidebar">
                    <div class="sub-ttl">Categories</div>
                    <ul class="category-list">
                        <li><a href="#"><i class="fa fa-hotel"></i>Hotels</a><span>(10)</span></li>
                        <li><a href="#"><i class="fa fa-user-md"></i>Doctors</a><span>(20)</span></li>
                        <li><a href="#"><i class="fa fa-hospital"></i>Medical Centers</a><span>(9)</span></li>
                        <!--<li><a href="#"><i class="fa fa-cloud"></i>Technology</a><span>(21)</span></li>-->
                        <!--<li><a href="#"><i class="fa fa-flask"></i>Science</a><span>(13)</span></li>-->
                        <!--<li><a href="#"><i class="fa fa-info-circle"></i>New Disese</a><span>(7)</span></li>-->
                        <!--<li><a href="#"><i class="fa fa-hospital-o"></i>Health</a><span>(5)</span></li>-->
                        <!--<li><a href="#"><i class="fa fa-wheelchair-alt"></i>wellness</a><span>(8)</span></li>-->
                    </ul>
                </div>
                <div class="sidebar">
                    <div class="sub-ttl">Popular Tags</div>
                    <a href="#" class="theme-tag theme-tag-2">Tag</a>
                    <a href="#" class="theme-tag theme-tag-2">Wellness</a>
                    <a href="#" class="theme-tag theme-tag-2 theme-tag-colored">Science</a>
                    <a href="#" class="theme-tag theme-tag-2">Doctor</a>
                    <a href="#" class="theme-tag theme-tag-2 theme-tag-colored">Clinic</a>
                </div>
            </div>
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


  
  
  
  
  
  
  
