
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')
    <!-- Flex timeline Stylesheet CSS -->
    <link rel="stylesheet" href="/css/services-timeline.css"/>
@endsection

@section('content')	

<!--services-3-->
<!-- Start Page Title Section -->
<div class="page-ttl">
    <div class="layer-stretch">
        <div class="page-ttl-container">
            <h1>Services</h1>
            <p><a href="#">Home</a> &#8594; <span>Services</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Service List Section -->
<div id="services-page" class="layer-stretch">
    <div class="layer-wrapper text-center">
        <!--<div class="theme-material-card">-->
            <div class="services-page--timeline-d">
                <div class="services-page--main-timeline">
                    <div class="services-page--timeline">
                        <a href="#" class="services-page--timeline-content">
                            <span class="icon fa fa-globe"></span>
                            <h3 class="title">Web Designer</h3>
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada tellus lorem, et condimentum neque commodo quis.
                            </p>
                        </a>
                    </div>
                    <div class="services-page--timeline">
                        <a href="#" class="services-page--timeline-content">
                            <span class="icon fa fa-rocket"></span>
                            <h3 class="title">Web Developer</h3>
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada tellus lorem, et condimentum neque commodo quis.
                            </p>
                        </a>
                    </div>
                    <div class="services-page--timeline">
                        <a href="#" class="services-page--timeline-content">
                            <span class="icon fa fa-rocket"></span>
                            <h3 class="title">Web Developer</h3>
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada tellus lorem, et condimentum neque commodo quis.
                            </p>
                        </a>
                    </div>
                    <div class="services-page--timeline">
                        <a href="#" class="services-page--timeline-content">
                            <span class="icon fa fa-rocket"></span>
                            <h3 class="title">Web Developer</h3>
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada tellus lorem, et condimentum neque commodo quis.
                            </p>
                        </a>
                    </div>
                    <div class="services-page--timeline">
                        <a href="#" class="services-page--timeline-content">
                            <span class="icon fa fa-rocket"></span>
                            <h3 class="title">Web Developer</h3>
                            <p class="description">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer malesuada tellus lorem, et condimentum neque commodo quis.
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        <!--</div>-->
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
