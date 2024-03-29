
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
                <h1>About Us</h1>
                <p><a href="#">Home</a> &#8594; <span>About Us</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
    <!-- Start About First Section  -->
    <div class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-container row">
                <div class="col-md-5 hm-service-left">
                    <img class="" src="/uploads/hm-service.jpg" alt="">
                </div>
                <div class="col-md-7 hm-service-right">
                    <p class="paragraph-medium paragraph-black">
                        Klinik is a HTML5 &#38; CSS3 responsive template created for clinic and hospital but also can be used for generalised website. It is a fully responsive, feature rich and beautifully designed to host a website or create online identity. We have created 40+ pages and 90+ components for this template and much more in future. It supports bootstrap framework and intergrated font awesome icon set so easy to customise and develop your own styles.
                    </p>
                    <p class="paragraph-medium paragraph-black">
                        Nemo igitur esse beatus potest. Est autem etiam actio quaedam corporis, quae motus et status naturae congruentis tenet; Duo Reges: constructio interrete. Qui ita affectus, beatum esse numquam probabis; Re mihi non aeque satisfacit, et quidem locis pluribus. Vitiosum est enim in dividendo partem in genere numerare.
                    </p>
                    <ul class="theme-list">
                        <li><i class="fa fa-arrow-right primary-color"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi, nostrum.</li>
                        <li><i class="fa fa-arrow-right primary-color"></i>Expedita autem, ea, inventore eligendi debitis nihil obcaecati consequatur quo.</li>
                        <li><i class="fa fa-arrow-right primary-color"></i>Dolores, voluptatem vel eligendi asperiores totam deserunt exercitationem.</li>
                        <li><i class="fa fa-arrow-right primary-color"></i>Pariatur iusto corporis facilis corrupti dolorem exercitationem ipsam quisquam.</li>
                        <li><i class="fa fa-arrow-right primary-color"></i>Non, nostrum pariatur debitis quidem rerum voluptas odit harum consectetur.</li>
                        <li><i class="fa fa-arrow-right primary-color"></i>Omnis quaerat quidem officiis consequuntur numquam adipisci dolore.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!-- End About First Page  -->
    <!-- Start About Second Section  -->
    <div class="parallax-background parallax-background-2">
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="layer-ttl layer-ttl-white">
                    <h3>Who We Are?</h3>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-user-md"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">54</span>
                                <p>Doctor(s)</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-ambulance"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">130</span>
                                <p>Room(s)</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-calendar"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">51</span>
                                <p>Year of Experience(s)</p>
                            </div>
                        </div>
                        <div class="hm-about-block">
                            <div class="tbl-cell hm-about-icon"><i class="fa fa-clock-o"></i></div>
                            <div class="tbl-cell hm-about-number">
                                <span class="counter">168</span>
                                <p>OPENING HOURS PER WEEK</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <img class="img-thumbnail" src="/uploads/hm-about-1.jpg" alt="">
                    </div>
                    <div class="row about-mission-vission text-center">
                        <div class="col-md-6 about-mission">
                            <span>Our Mission</span>
                            <p class="paragraph-medium paragraph-white">Partem volumus cum an, eam vitae civibus ne, doctus repudiare posidonium eu duo. Mei partem similique eu. At per facer iudicabit, soluta accommodare delicatissimi et nam, semper senserit aliquando ex nec. Cu tollit aliquip sea, pri vivendo vivendum ad. Cu electram mnesarchum eos, ius id iusto assueverit repudiandae.</p>
                        </div>
                        <div class="col-md-6 about-vission">
                            <span>Our Vission</span>
                            <p class="paragraph-medium paragraph-white">Partem volumus cum an, eam vitae civibus ne, doctus repudiare posidonium eu duo. Mei partem similique eu. At per facer iudicabit, soluta accommodare delicatissimi et nam, semper senserit aliquando ex nec. Cu tollit aliquip sea, pri vivendo vivendum ad. Cu electram mnesarchum eos, ius id iusto assueverit repudiandae.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End About Second Section  -->
    
    <!-- Start Our Team Section -->
    @include('front.pages.single.about-us.includes.our-team')
    <!-- End Our Team Section -->
@endsection

