
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
            <h1>Destinations</h1>
            <p><a href="#">Home</a> &#8594; <a href="">Medical Tourism</a> &#8594; <span>Destinations</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Doctor List Section -->
<div id="doctor-page" class="layer-stretch">
    <div class="layer-wrapper layer-bottom-10">
        <div class="row">
            <div class="col-md-4">
                <div class="theme-block theme-block-hover text-left">
                    <div class="theme-block-picture">
                        <img class="card-img-top" src="/uploads/service-1.jpg" alt="">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Tehran</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae sunt vero, vitae optio porro animi corporis.</p>
                        <a href="{{ route('aboutMedical.destination.show') }}" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="theme-block theme-block-hover text-left">
                    <div class="theme-block-picture">
                        <img class="card-img-top" src="/uploads/service-2.jpg" alt="">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Mashhad</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae sunt vero, vitae optio porro animi corporis.</p>
                        <a href="{{ route('aboutMedical.destination.show') }}" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary">Read More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="theme-block theme-block-hover text-left">
                    <div class="theme-block-picture">
                        <img class="card-img-top" src="/uploads/service-3.jpg" alt="">
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Shiraz</h4>
                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae sunt vero, vitae optio porro animi corporis.</p>
                        <a href="{{ route('aboutMedical.destination.show') }}" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary">Read More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Doctor List Section -->

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

   
