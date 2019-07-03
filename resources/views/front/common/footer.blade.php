

    <div id="make-appointment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title">Quick Request</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="appointment-error"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-user-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="appointment-name">
                                <label class="mdl-textfield__label" for="appointment-name">Name</label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-envelope-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="appointment-email">
                                <label class="mdl-textfield__label" for="appointment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-phone"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="appointment-mobile">
                                <label class="mdl-textfield__label" for="appointment-mobile">Mobile Number</label>
                                <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-hospital-o"></i>
                                <select class="mdl-selectfield__select" id="appointment-department">
                                    <option value="">&nbsp;</option>
                                    <option value="1">Medical</option>
                                    <option value="2">Cosmetic</option>
                                </select>
                                <label class="mdl-selectfield__label" for="appointment-department">Choose Department</label>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="mdl-textfield mdl-js-textfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-paper-plane"></i>
                                <!--<textarea name="patientreq" id="patient-req" cols="30" rows="10" placeholder="Ask Your Question..."></textarea>-->
                                <textarea class="mdl-textfield__input" id="contact-message" rows="5"></textarea>
                                <label class="mdl-textfield__label" for="contact-message">Your Request</label>
                                <span class="mdl-textfield__error">Please Enter Your Query!</span>
                            </div>
                            <!--<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">-->
                            <!--    <i class="fa fa-paper-plane"></i>-->
                                <!--<textarea class="mdl-textfield__input" id="contact-message"></textarea>-->
                                <!--<label class="mdl-textfield__label" for="contact-message">Your Request</label>-->
                                <!--<span class="mdl-textfield__error">Please Enter Your Query!</span>-->
                            <!--</div>-->
                        </div>
                    </div>
                    <div class="text-center pt-4">
                        <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg make-appointment">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Make an Appointment Modal -->
    
    <!-- Fixed Appointment Button at Bottom -->
    <div id="appointment-button" class="animated fadeInUp">
        <button id="appointment-now" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-button--raised"><i class="fa fa-question"></i></button>
        <div class="mdl-tooltip mdl-tooltip--top" data-mdl-for="appointment-now">Need Help?</div>
    </div><!-- End Fixed Appointment Button at Bottom -->
    <!-- Start Footer Section -->
    <footer id="footer">
        <div class="layer-stretch">
            <!-- Start main Footer Section -->
            <div class="row layer-wrapper">
                <div class="col-md-5 footer-block">
                    <div class="footer-ttl"><p>ABOUT MEDTOURIRAN</p></div>
                    <div class="footer-container footer-a">
                        <div class="tbl">
                            <div style="display: table-caption !important;border-bottom: 1px solid #999; ">
                                <p class="paragraph-medium paragraph-white">
                                    {{setting(App::getLocale().'.about')}}
                                </p>
                            </div>
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-map-marker"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white">
                                        {{setting(App::getLocale().'.address')}}
                                    </p>
                                </div>
                            </div>
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-phone"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white text-left">{{setting('site.phone')}}</p>
                                </div>
                            </div>
                            <div class="tbl-row">
                                <div class="tbl-cell"><i class="fa fa-envelope"></i></div>
                                <div class="tbl-cell">
                                    <p class="paragraph-medium paragraph-white text-left">{{setting('site.email')}}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 footer-block">
                    <div class="footer-ttl"><p>Quick Links</p></div>
                    <div class="footer-container footer-b">
                        <div class="tbl">
                            <div class="tbl-row">
                                <ul class="tbl-cell">
                                    @foreach($links as $link)
									<li><a href="{{$link->getTranslatedAttribute('link')}}">{{$link->getTranslatedAttribute('title')}}</a></li>
									@endforeach
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 footer-block">
                    <div class="footer-ttl"><p>Newsletter</p></div>
                    <div class="footer-container footer-c">
                        <div class="footer-subscribe">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="subscribe-email">
                                <label class="mdl-textfield__label" for="subscribe-email">Your Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                            <div class="footer-subscribe-button">
                                <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Subscribe!</button>
                            </div>
                        </div>
                        <ul class="social-list social-list-colored footer-social">
                            @foreach($socials as $social)
                            <li>
                                <a href="{{$social->getTranslatedAttribute('link')}}" target="_blank" id="footer-{{strtolower($social->title)}}" class="{{$social->icon}}"></a>
                                <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-{{strtolower($social->title)}}">{{$social->title}}</span>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- End main Footer Section -->
        <!-- Start Copyright Section -->
        <div id="copyright">
            <div class="layer-stretch">
                <div class="paragraph-medium paragraph-white">Copyright © 2019, <a style="color: #75DBE4;" href="#">MedTourIran</a>. All Rights Reserved.</div>
            </div>
        </div><!-- End of Copyright Section -->
    </footer><!-- End of Footer Section -->
