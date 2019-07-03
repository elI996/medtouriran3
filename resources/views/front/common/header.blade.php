<!-- Start Header Section -->
<header id="header-1">
    <div class="layer-stretch hdr">
        <div class="tbl animated fadeInDown">
            <div class="tbl-row">
                <!-- Start Header Logo Section -->
                <div class="tbl-cell hdr-menu float">
                    <!-- Start Menu Section -->
                    <ul class="menu">
                        <li>
                            <a href="{{route('home')}}" id="menu-home" class="mdl-button mdl-js-button mdl-js-ripple-effect">Home</a>
                        </li>
                        <li>
                            <a href="{{route('aboutMedical')}}" id="menu-medical-tourism" class="mdl-button mdl-js-button mdl-js-ripple-effect">Medical Tourism <i class="fa fa-chevron-down"></i>
                            </a>
                            <ul class="menu-dropdown menu-dropdown-1">
                                <li>
                                    <a href="{{route('aboutMedical.destination.index')}}" id="menu-destinations">Destinations<i class="fa fa-chevron-rl float-rev" style="line-height: inherit;"></i></a>
                                    <ul class="menu-dropdown menu-dropdown-2">
                                        <li><a href="{{route('aboutMedical.destination.show')}}" id="menu-destinationTehran">Tehran</a></li>
                                        <li><a href="{{route('aboutMedical.destination.show')}}" id="menu-destinationMashhad">Mashhad</a></li>
                                        <li><a href="{{route('aboutMedical.destination.show')}}" id="menu-destinationShiraz">Shiraz</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="{{route('aboutMedical')}}" id="menu-aboutMedicalTourism">About Medical Tourism</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('package.index')}}" class="mdl-button mdl-js-button mdl-js-ripple-effect">Packages</a>
                        </li>
                        <li class="menu-megamenu-li">
                            <a href="{{route('procedure.index')}}" id="menu-procedures" class="mdl-button mdl-js-button mdl-js-ripple-effect">Procedures <i class="fa fa-chevron-down"></i></a>
                            <ul class="menu-megamenu">
                                <li class="row">
                                    <div class="col-lg-6">
                                        <div class="megamenu-ttl">Medical</div>
                                        <ul>
                                            <li><a href="" id="menu-PlasticSurgery">Plastic Surgery</a></li>
                                            <li><a href="" id="menu-Rhinoplasty">Rhinoplasty</a></li>
                                            <li><a href="" id="menu-HairTransplantation">Hair Transplantation</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="megamenu-ttl">Cosmetic</div>
                                        <ul>
                                            <li><a href="">Dental Health</a></li>
                                            <li><a href="">Eye Care</a></li>
                                            <li><a href="">Infertility Treatment</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('service')}}" id="menu-service" class="mdl-button mdl-js-button mdl-js-ripple-effect">Services <i class="fa fa-chevron-down"></i></a>
                            <ul class="menu-dropdown">
                                <li>
                                    <a href="{{route('service.medicalCenter.index')}}">Our Medical Centers</a>
                                </li>
                                <li>
                                    <a href="{{route('service.hotel.index')}}">Our Hotels</a>
                                </li>
                                <li>
                                    <a href="{{route('service.doctor.index')}}">Our Doctors</a>
                                </li>
                                <li>
                                    <a href="{{route('service.hostel.index')}}">Our Hostel & Apartments</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="{{route('patientReview')}}" id="menu-review" class="mdl-button mdl-js-button mdl-js-ripple-effect">Patient's Review</a>
                        </li>
                        <li>
                            <a href="{{route('blog.index')}}" id="menu-blog" class="mdl-button mdl-js-button mdl-js-ripple-effect">Blog</a>
                        </li>
                        
                        <li>
                            <a href="{{route('aboutUs')}}" class="mdl-button mdl-js-button mdl-js-ripple-effect">About Us <i class="fa fa-chevron-down"></i></a>
                            <ul class="menu-dropdown">
                                <!--<li><a href="#">Our Team</a></li>-->
                                <li><a href="{{route('contact')}}">Contact Us</a></li>
                                <li><a href="{{route('faq')}}">FAQ</a></li>
                                <!--&lt;!&ndash;<li><a href="#">Terms &#38; Conditions</a></li>&ndash;&gt;-->
                                <!--&lt;!&ndash;<li><a href="#">Privacy Policy</a></li>&ndash;&gt;-->
                            </ul>

                        </li>
                    </ul><!-- End Menu Section -->
                    <div id="menu-bar"><a><i class="fa fa-bars"></i></a></div>
                </div>
                <div class="tbl-cell hdr-logo">
                    <a href="{{route('home')}}"><img src="/images/logo.png" alt="medtouriran-logo"></a>
                </div><!-- End Header Logo Section -->
                <!--<div class="tbl-cell hdr-languagepicker">-->
                <!--    <ul class="languagepicker">-->
                <!--    	<a href="#nl"><li><img src="http://i65.tinypic.com/2d0kyno.png"/>Ar</li></a>-->
                <!--        <a href="#en"><li><img src="http://i64.tinypic.com/fd60km.png"/>En</li></a>-->
                <!--    </ul>-->
                <!--</div><!-- End Header Logo Section -->
                
            </div>
        </div>
    </div>
</header><!-- End Header Section -->





<!--<div id="destination" class="tab-pane fade in active destinatio_form">-->
<!--    <form action="https://www.tourmyindia.com/international/search/" method="POST" onsubmit="return validateThisFrom (this);">-->
<!--        <div class="form-group desti">-->
<!--            <img src="https://www.tourmyindia.com/international/wp-content/themes/tmi-international/images/bluedestination.png">-->
<!--            <select name="destination" id="sel1" required="">-->
<!--                <option value=""> Select Destination</option><option value="australia">Australia</option>-->
<!--                <option value="bhutan">Bhutan</option><option value="dubai">Dubai</option><option value="hong-kong">Hong Kong</option>-->
<!--                <option value="indonesia">Indonesia</option><option value="malaysia">Malaysia</option><option value="maldives">Maldives</option>-->
<!--                <option value="myanmar">Myanmar</option><option value="nepal">Nepal</option><option value="singapore">Singapore</option>-->
<!--                <option value="sri-lanka">Sri Lanka</option><option value="thailand">Thailand</option><option value="tibet">Tibet</option>-->
<!--                <option value="vietnam">Vietnam</option>-->
<!--            </select>-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <img src="https://www.tourmyindia.com/international/wp-content/themes/tmi-international/images/watch.png">-->
<!--            <select name="duration" id="sel2" required="">-->
<!--                <option value=""> Select Duration</option>-->
<!--                <option value="02 Nights / 03 Days"> 02 Nights / 03 Days</option>-->
<!--                <option value="03 Nights/ 04 Days"> 03 Nights/ 04 Days</option>-->
<!--                <option value="04 Nights / 05 Days"> 04 Nights / 05 Days</option>-->
<!--                <option value="05 Nights/ 06 Days"> 05 Nights/ 06 Days</option>-->
<!--                <option value="06 Nights / 07 Days"> 06 Nights / 07 Days</option>-->
<!--                <option value="07 Nights / 08 Days"> 07 Nights / 08 Days</option>-->
<!--                <option value="08 Nights / 09 Days"> 08 Nights / 09 Days</option>-->
<!--                <option value="09 Nights / 10 Days"> 09 Nights / 10 Days</option>-->
<!--                <option value="13 Nights / 14 Days"> 13 Nights / 14 Days</option>-->
<!--            </select>-->
<!--        </div>-->
<!--        <input type="submit" name="submit-search" id="submit" value="Search">-->
<!--    </form>-->
<!--</div>-->

