<div id="testimonial" class="parallax-background parallax-background-3" style="background-image: url(./images/background/what-clients-says.jpg)">
    <div class="layer-stretch" id="hm-testimonial">
        <div class="layer-wrapper">
            <div class="layer-ttl layer-ttl-white">
                <h3>What Clients Tell About Us</h3>
            </div>
            <div class="layer-container">
                <div id="testimonial-slider" class="owl-carousel owl-theme theme-owl-dot">
                    <div class="testimonial-block">
                        <div class="video-sample-frame">
                            <iframe src="https://www.youtube.com/embed/{{$video->video}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media;" allowfullscreen></iframe>
                        </div>
                        <div class="paragraph-medium paragraph-white">
                            <i class="fa fa-quote-left"></i>
                            {{$video->getTranslatedAttribute('body')}}
                        </div>
                        <a>{{$video->getTranslatedAttribute('title')}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
