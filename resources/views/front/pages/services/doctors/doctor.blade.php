
    
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
            <h1>{{$doctor->getTranslatedAttribute('name')}}</h1>
            <p><a href="{{route('home')}}">Home</a> &#8594; <a href="{{route('service.doctor.index')}}">Doctors</a> &#8594; <span>Doctor Info</span></p>
        </div>
    </div>
</div><!-- End Page Title Section -->
<!-- Start Doctor List Section -->
<div id="doctor-page" class="layer-stretch">
    <div class="layer-wrapper layer-bottom-10">
        <div class="row">
            <div class="col-lg-8">
                <div class="theme-material-card">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="theme-img theme-img-scalerotate">
                                <img src="/uploads/doctor-1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="doctor-name">
                                <h3>Dr. Daniel Barnes</h3>
                                <span class="badge badge-primary">Head of Department</span>
                                <p>Orthologist Specilist</p>
                                <div class="rating-stars">
                                    <span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="doctor-details-extra text-left p-0 pt-4">
                                <!--<p class="text-center"><i class="fa fa-trophy"></i>8 Awards</p>-->
                                <p class="text-center"><i class="fa fa-star"></i>17 year Experience</p>
                                <!--<p class="text-center"><i class="fa fa-money"></i>Charges: $100</p>-->
                            </div>
                        </div>
                        <p class="text-muted p-4 m-0 pb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sit minus, modi adipisci nesciunt, illum atque temporibus cupiditate blanditiis quo illo cumque doloribus laborum rem neque dolorum, ipsa officiis fugiat expedita.Perspiciatis facere magnam reiciendis modi ratione asperiores fugit minus dolores dignissimos cum.</p>
                        <div class="col-sm-12">
                            <div class="sub-ttl pt-4 font-20">Academic Training</div>
                            <table class="table table-hover">
                                <thead>
                                    <tr class="table-primary-head">
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Degree</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Universty of world for Medicine</td>
                                        <td>Bachelor of Medicine(BM)</td>
                                        <td><span class="badge badge-danger badge-pill">Dec 1991</span></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Medical School for Surgeon</td>
                                        <td>Bachelor of Surgery(BS)</td>
                                        <td><span class="badge badge-warning badge-pill">Aug 1994</span></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>University for Science and Medical</td>
                                        <td>Doctor of Medicine(MD)</td>
                                        <td><span class="badge badge-info badge-pill">Apr 1996</span></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Institue of Science</td>
                                        <td>Doctor of Osteopathic Medicine</td>
                                        <td><span class="badge badge-success badge-pill">Oct 1998</span></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Institue of Science and Medicine</td>
                                        <td>Master of Surgery</td>
                                        <td><span class="badge badge-danger badge-pill">May 2001</span></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>Institue of Science and Medicine</td>
                                        <td>Doctor of Clinical Surgery</td>
                                        <td><span class="badge badge-warning badge-pill">Feb 2004</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--<div class="theme-quote">-->
                        <!--    <i class="fa fa-quote-left"></i> Sed non mauris vitae erat consequat auctor eu in elit. Class aptent taciti ad litora torquent per conubia nostra per inceptos himenaeos.-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="theme-material-card">
                    <div class="px-2">
                        <div class="sub-ttl font-20 pt-4">Skill & Achievments</div>
                        <div class="doctor-skills">
                            <p class="font-14">Brain Surgery <span class="badge badge-primary float-right">75%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Heart Surgery <span class="badge badge-danger float-right">65%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Trauma Surgery <span class="badge badge-success float-right">80%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">General Surgery <span class="badge badge-warning float-right">87%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        <div class="doctor-skills">
                            <p class="font-14">Weekly Consultancy <span class="badge badge-primary float-right">55%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar bg-primary" role="progressbar" style="width: 55%" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="theme-material-card">
                    <div class="sub-ttl">Time Table</div>
                    <ul class="timetable">
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Mon</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Tue</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Wed</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Thu</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Fri</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Sat</a><a class="pull-right"><i class="fa fa-clock-o"></i>9:00 AM - 5:00 PM</a></li>
                        <li><a class="pull-left"><i class="fa fa-calendar"></i>Sun</a><a class="pull-right">Holiday</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="theme-material-card">
            <div class="sub-ttl">Testimonial</div>
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <div class="theme-block">
                        <iframe width="100%" height="275px" src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
                    </div>
                </div>
                <div class="col-sm-12 col-md-6">
                    <div class="theme-block">
                        <iframe width="100%" height="275px" src="https://www.youtube.com/embed/tgbNymZ7vqY"></iframe>
                    </div>
                </div>
            
            </div>
        </div>
        <div class="theme-material-card">
            <div class="sub-ttl">Gallery</div>
            <div id="doctor-page--gallery-owl-carousel" class="owl-carousel owl-drag owl-theme theme-owl-dot">
                <div class="owl-item">
                    <div class="theme-block">
                        <div class="gallery-block theme-block-picture doctor-picture-2">
                            <a href="/uploads/gallery/gallery-1.jpg">
                                <img src="/uploads/gallery/gallery-1.jpg" alt="image">
                                <div class="gallery-layer">
                                    <div class="gallery-layer-dark">
                                        <p><i class="fa fa-search-plus"></i></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="owl-item">
                    <div class="theme-block">
                        <div class="gallery-block theme-block-picture doctor-picture-2">
                            <a href="/uploads/gallery/gallery-1.jpg">
                                <img src="/uploads/gallery/gallery-1.jpg" alt="image">
                                <div class="gallery-layer">
                                    <div class="gallery-layer-dark">
                                        <p><i class="fa fa-search-plus"></i></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="owl-item">
                    <div class="theme-block">
                        <div class="gallery-block theme-block-picture doctor-picture-2">
                            <a href="/uploads/gallery/gallery-1.jpg">
                                <img src="/uploads/gallery/gallery-1.jpg" alt="image">
                                <div class="gallery-layer">
                                    <div class="gallery-layer-dark">
                                        <p><i class="fa fa-search-plus"></i></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="owl-item">
                    <div class="theme-block">
                        <div class="gallery-block theme-block-picture doctor-picture-2">
                            <a href="/uploads/gallery/gallery-1.jpg">
                                <img src="/uploads/gallery/gallery-1.jpg" alt="image">
                                <div class="gallery-layer">
                                    <div class="gallery-layer-dark">
                                        <p><i class="fa fa-search-plus"></i></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="theme-material-card">
            <div class="sub-ttl">Related Doctors</div>
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="theme-block">
                        <div class="theme-block-picture doctor-picture-2">
                            <img src="/uploads/doctor-1.jpg" alt="">
                        </div>
                        <div class="doctor-name doctor-name-2">
                            <h4><a>Daniel Barnes</a></h4>
                        </div>
                        <div class="theme-block-hidden">
                            <div class="doctor-name">
                                <h4><a>Daniel Barnes</a></h4>
                            </div>
                            <div class="doctor-details">
                                <div class="doctor-specility">
                                    <p>Orthologist</p>
                                </div>
                                <div class="doctor-details-extra">
                                    <!--<p><i class="fa fa-shield"></i>CEO &amp; Founder</p>-->
                                    <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                    <!--<p><i class="fa fa-trophy"></i>Awards: 8</p>-->
                                    <p><i class="fa fa-star"></i>Experience: 17 year</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="theme-block">
                        <div class="theme-block-picture doctor-picture-2">
                            <img src="/uploads/doctor-2.jpg" alt="">
                        </div>
                        <div class="doctor-name doctor-name-2">
                            <h4><a>Melissa Bates</a></h4>
                        </div>
                        <div class="theme-block-hidden">
                            <div class="doctor-name">
                                <h4><a>Melissa Bates</a></h4>
                            </div>
                            <div class="doctor-details">
                                <div class="doctor-specility">
                                    <p>Gynocologist</p>
                                </div>
                                <div class="doctor-details-extra">
                                    <!--<p><i class="fa fa-shield"></i>C00s</p>-->
                                    <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                    <!--<p><i class="fa fa-trophy"></i>Awards: 5</p>-->
                                    <p><i class="fa fa-star"></i>Experience: 9 year</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="theme-block">
                        <div class="theme-block-picture doctor-picture-2">
                            <img src="/uploads/doctor-3.jpg" alt="">
                        </div>
                        <div class="doctor-name doctor-name-2">
                            <h4><a>Cheri Aria</a></h4>
                        </div>
                        <div class="theme-block-hidden">
                            <div class="doctor-name">
                                <h4><a>Cheri Aria</a></h4>
                            </div>
                            <div class="doctor-details">
                                <div class="doctor-specility">
                                    <p>Dermatologist</p>
                                </div>
                                <div class="doctor-details-extra">
                                    <!--<p><i class="fa fa-shield"></i>Intern</p>-->
                                    <p><i class="fa fa-mortar-board"></i>MBBS, MD</p>
                                    <!--<p><i class="fa fa-trophy"></i>Awards: 12</p>-->
                                    <p><i class="fa fa-star"></i>Experience: 6 year</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Doctor List Section -->


<div id="hm-booking-form" class="layer-stretch">
    <div class="layer-wrapper">
        <div class="row">
            <div class="col-lg-12 text-center">    
                <div class="theme-material-card">
                    <div class="sub-ttl layer-ttl-white">Contact Us</div>
                    <div class="row comment-form">
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="hm-booking-form--name">
                                <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                                <span class="mdl-textfield__info">For Example: Elham Jafari</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[0-9+-]*" id="hm-booking-form--number">
                                <label class="mdl-textfield__label" for="booking-form--number">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
                                <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="hm-booking-form--country">
                                <label class="mdl-textfield__label" for="comment-name">Country <em> *</em></label>
                                <span class="mdl-textfield__info">For Example: Iran</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="hm-booking-form--email">
                                <label class="mdl-textfield__label" for="comment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                <span class="mdl-textfield__info">For Example: example@gmail.com</span>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mdl-textfield mdl-js-textfield form-input">
                                <textarea class="mdl-textfield__input" rows="4" id="hm-booking-form--comment-message"></textarea>
                                <label class="mdl-textfield__label" for="comment-message">How can we help you...?</label>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-submit">
                                <button type="submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" id="hm-booking-form--submit-btn">Submit</button>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>    
    </div>    
</div>
@endsection
@section('js')

<script type="text/javascript">
    $('#doctor-page--gallery-owl-carousel').owlCarousel({
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