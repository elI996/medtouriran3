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
            <h1>Doctors</h1>
            <p><a href="{{route('home')}}">Home</a> &#8594; <span>Doctors</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Doctor List Section -->
<div id="doctors-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        @foreach($doctors as $doctor)
                        <div class="col-md-6">
                            <div class="theme-block theme-block-hover">
                                <a href="">
                                    <div class="theme-block-picture">
                                    <img src="{{Helper::placeholder(Voyager::image($doctor->thumbnail('medium'),'avatar'))}}" alt="{{$doctor->getTranslatedAttribute('name')}}">
                                    </div>
                                    <div class="doctor-name">
                                        <h4><a href={{route('service.doctor.show',[$doctor,$doctor->slug])}}>{{$doctor->getTranslatedAttribute('name')}}</a></h4>
                                    </div>
                                </a> 
                                <div class="doctor-details">
                                    <div class="doctor-specility">
                                        @include('front.common.rating', ['star' => $doctor->rate/20])
                                        <p>
                                            @include('front.common.items', ['items' => $doctor->categories])
                                        </p>
                                    </div>
                                    <div class="doctor-details-extra">
                                        <!--<p><i class="fa fa-shield"></i>CEO &amp; Founder</p>-->
                                        <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                        <!--<p><i class="fa fa-trophy"></i>Awards: 8</p>-->
                                        <p><i class="fa fa-star"></i>Experience: 17 year</p>
                                    </div>
                                </div>
                                <a href={{route('service.doctor.show',[$doctor,$doctor->slug])}}>
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">See profile
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>
                                 </a>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    {{$doctors->links()}}
                </div>
                <div class="col-lg-4">
                    <div class="theme-material-card text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                            <input class="mdl-textfield__input" type="text" id="sidebar-search">
                            <label class="mdl-textfield__label" for="sidebar-search">Enter Any Keyword</label>
                            <button class="fa fa-search search-button"></button>
                        </div>
                    </div>
                    <div class="theme-material-card text-center">
                        <div class="sub-ttl">Make An Appointment</div>
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
                            <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="sideapnt-mobile">
                            <label class="mdl-textfield__label" for="sideapnt-mobile">Mobile Number</label>
                            <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                        </div>
                        <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                            <i class="fa fa-hospital-o"></i>
                            <select class="mdl-selectfield__select" id="sideapnt-department">
                                <option value=""></option>
                                <option value="Gynaecology">Gynaecology</option>
                                <option value="Orthology">Orthology</option>
                                <option value="Dermatologist">Dermatologist</option>
                                <option value="Anaesthesia">Anaesthesia</option>
                                <option value="Ayurvedic">Ayurvedic</option>
                            </select>
                            <label class="mdl-selectfield__label" for="sideapnt-department">Choose Department</label>
                        </div>
                        <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                            <i class="fa fa-user-md"></i>
                            <select class="mdl-selectfield__select" id="sideapnt-doctor">
                                <option value=""></option>
                                <option value="Daniel Barnes">Dr. Daniel Barnes</option>
                                <option value="Steve Soeren">Dr. Steve Soeren</option>
                                <option value="Barbara Baker">Dr. Barbara Baker</option>
                                <option value="Melissa Bates">Dr. Melissa Bates</option>
                                <option value="Linda Adams">Dr. Linda Adams</option>
                            </select>
                            <label class="mdl-selectfield__label" for="sideapnt-doctor">Choose Doctor</label>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-calendar-o"></i>
                            <input class="mdl-textfield__input" type="text" id="sideapnt-date" onfocus="(this.type='date')" onblur="(this.type='text')">
                            <label class="mdl-textfield__label" for="sideapnt-date">Date</label>
                            <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                        </div>
                        <div class="side-error"></div>
                        <button class="btn button-primary button-lg side-appointment" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Processing">Submit</button>
                    </div>
                    <div class="theme-material-card">
                        <div class="sub-ttl">Our Services</div>
                        <div class="flexslider theme-flexslider">
                            <ul class="slides">
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="/uploads/service-3.jpg" alt="" />
                                        <h4>Cardiovascular centre</h4>
                                        <a href="#" class="anchor-icon pull-right">Read More <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="/uploads/service-4.jpg" alt="" />
                                        <h4>Childbirth Center</h4>
                                        <a href="#" class="anchor-icon pull-right">Read More <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="/uploads/service-8.jpg" alt="" />
                                        <h4>Cardiology</h4>
                                        <a href="#" class="anchor-icon pull-right">Read More <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="theme-flexslider-container">
                                        <img src="/uploads/service-5.jpg" alt="" />
                                        <h4>Laboratory Services</h4>
                                        <a href="#" class="anchor-icon pull-right">Read More <i class="fa fa-arrow-right"></i></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Doctor List Section -->
@endsection

