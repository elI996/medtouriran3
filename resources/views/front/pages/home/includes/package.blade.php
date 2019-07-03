<div id="hm-packages" class="parallax-background parallax-background-2" style="background-image: url(./images/background/packages.jpg)">
    <div class="layer-stretch">
        <div class="layer-wrapper">
            <div class="layer-ttl layer-ttl-white">
                <h3>Special Packages</h3>
            </div>
            <div class="layer-container">
                <div id="hm-packages-slider" class="owl-carousel owl-theme theme-owl-dot">
                    @foreach($packages as $package)
                    <div class="hm-packages hm-packages--box" style="background-image: url({{Voyager::image($package->background)}})">
                        <div class="hm-packages--title">
                            <h6>{{$package->getTranslatedAttribute('title')}}</h6>
                            <p>{{$package->getTranslatedAttribute('subtitle')}}</p>
                        </div>
                        <div class="hm-packages--price">
                            <p>{{$package->getTranslatedAttribute('before_price')}}</p>
                            <h3>{{$package->getTranslatedAttribute('price')}}$</h3>
                        </div>
                        <ul class="hm-packages--list">
                            @foreach($package->items as $item)
                            <li>{{$item->getTranslatedAttribute('title')}}</li>
                            @endforeach
                        </ul>
                        <a href="{{route('package.show',[$package,$package->slug])}}">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary mt-3 mb-1">Book
                                <span class="mdl-button__ripple-container">
                                    <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                                </span>
                            </button>
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div><!-- End hm-packages Section -->
