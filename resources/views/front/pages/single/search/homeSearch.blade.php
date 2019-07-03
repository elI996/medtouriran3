
@extends('front.layout.front')

@section('title')
{{setting(App::getLocale().'.title')}}
@endsection

@section('style')

@endsection

<!--<div class="col-offset-6 col-md-6">-->

<!--</div>-->



@section('content')	
    <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <!--<div class="page-ttl-container">-->
                <div class="hms-search" id="hmsearch">
                    <div class="text-center p-3">
                        <div class="hms-searchtext">What are you looking for?</div>
                        <div class="mdl-selectfield mdl-js-selectfield form-input is-upgraded mx-3">
                            <select class="mdl-selectfield__select" id="hms-treatmentlist">
                                <option value=""></option>
                                <option value="1">Rhinoplasty</option>
                                <option value="2">Hair Transplantation</option>
                                <option value="3">Plastic Surgery</option>
                                <option value="4">Infertility Treatment</option>
                                <option value="5">Eye Care</option>
                                <option value="6">Dental Health</option>
                            </select>
                            <i class="fa fa-notes-medical hms-icon"></i><label class="mdl-selectfield__label" for="hms-treatmentlist">Select Treatment</label><i class="fa fa-angle-down hms-angle-down"></i>
                        </div>
                        <div class="mdl-selectfield mdl-js-selectfield form-input is-upgraded mx-3">
                            <select class="mdl-selectfield__select" id="hms-citylist">
                                <option value="">&nbsp;</option>
                                <option value="1">Tehran</option>
                                <option value="2">Shiraz</option>
                                <option value="3">Mashhad</option>
                            </select>
                            
                            <i class="fa fa-map-marker-alt hms-icon"></i><label class="mdl-selectfield__label" for="hms-citylist">Select City</label><i class="fa fa-angle-down hms-angle-down"></i>
                        </div>
                        <a href="{{route('homesearch')}}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-bordered-primary button-hover-primary mx-3">Saerch
                                <span class="mdl-button__ripple-container">
                                    <span class="mdl-ripple is-animating" style="width: 266.913px; height: 266.913px; transform: translate(-50%, -50%) translate(64px, 22px);"></span>
                                </span>
                            </button>
                        </a>
                    </div>
                </div>
            <!--</div>-->
        </div> 
    </div><!-- End Page Title Section -->
    <!-- Start Doctor List Section -->
    <div id="hmsaerch-packages-page" class="layer-stretch">
        <div class="layer-wrapper text-center">
            <!--<div class="filter-menu m-0 mb-5">-->
            <!--    <button class="type-filter active" data-filter="all">All</button>-->
            <!--    <button class="type-filter" data-filter="medical">Medical</button>-->
            <!--    <button class="type-filter" data-filter="cosmetic">Cosmetic</button>-->
            <!--</div>-->
            <div class="filter-menu m-0 mb-5">
                <button class="city-filter active" data-filter="all">All</button>
                <button class="city-filter" data-filter="tehran">Tehran</button>
                <button class="city-filter" data-filter="mashhad">Mashhad</button>
                <button class="city-filter" data-filter="shiraz">Shiraz</button>
            </div>
            <!-- todo: tag haye shahr baraye filtering -->
            <div class="row">
                <div class="col-md-6 col-lg-4 t-filter tehran shiraz mashhad">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">600$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg33.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Rhinoplasty</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Tehran , Mashhad , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>
                                 </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 mashhad shiraz">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">1300$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg22.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Dental Health</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Mashhad , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>   
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 c-filter tehran shiraz">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">700$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg11.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Hair Transplantation</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Tehran , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>   
                                </a>                           
                            </div>
                        </div>
                    </div>
                </div>       
                <div class="col-md-6 col-lg-4 c-filter mashhad shiraz tehran">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">1200$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg33.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Plastic Surgery</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Tehran , Mashhad , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        
                                            <span class="mdl-button__ripple-container">
                                                <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                            </span>
                                       
                                    </button>
                                 </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 c-filter mashhad shiraz">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">1100$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg22.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Eye Care</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Mashhad , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>   
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 c-filter tehran shiraz">
                    <div class="packages-page--price">
                        <span class="packages-page--price-text1">from</span>  
                        <span class="packages-page--price-text2">700$</span>  
                    </div>
                    <div class="theme-block theme-block-hover">
                        <div class="theme-block-picture">
                            <img src="/images/packages/pg11.jpg" alt="">
                        </div>
                        <div class="doctor-name packages-page--name">
                            <h4><a href="{{route('procedure.show')}}"><b>Infertility Treatment</b></a></h4>
                        </div>
                        <div class="doctor-details packages-page--details">
                            <div class="doctor-specility">
                                <p>Package In Tehran , Shiraz</p>
                            </div>
                            <div class="doctor-details-extra">
                                <div class="doctor-details-extra-3">
                                    <p><i class="fa fa-user-md"></i>Clinic & Doctor VIsit</p>
                                    <p><i class="fa fa-x-ray"></i>Medical Photography</p>
                                    <p><i class="fa fa-hotel"></i>Accomodation</p>
                                    <p><i class="fa fa-pills"></i>Medicines</p>
                                    <p><i class="fa fa-taxi"></i>Transfer</p>
                                    <p><i class="fa fa-language"></i>interpreter</p>
                                    <p><i class="fa fa-wifi"></i>Sim card & internet</p>
                                    <p><i class="fa fa-cc-visa"></i>Visa</p>
                                </div>
                                <a href="{{route('package.show')}}">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary my-3">Read More
                                        <span class="mdl-button__ripple-container">
                                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                        </span>
                                    </button>   
                                </a>
                            </div>
                        </div>
                    </div>
                </div>                  
            </div>
            <ul class="theme-pagination">
                <li><a href="#" class="active">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">...</a></li>
                <li><a href="#">5</a></li>
            </ul>
        </div>
    </div><!-- End Service List Section -->
@endsection

