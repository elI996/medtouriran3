<div id="hm-treatment" class="layer-stretch">
    <div class="layer-wrapper">
        <div class="layer-ttl">
            <h3>@lang('home.popular_treatment')</h3>
        </div>
        <div class="layer-container">
            <div class="row">
                @foreach($categories as $category)
                <div class="col-md-4 col-lg-3">
                    <div class="theme-block">
                        <a href="{{route('procedure.show',[$category,$category->slug])}}">
                            <div class="theme-block-picture">
                                <img src="{{Helper::placeholder(Voyager::image($category->thumbnail('medium')))}}" alt="{{ $category->getTranslatedAttribute('title') }}">
                            </div>
                            <div class="theme-block-data service-block-data">
                                <div class="service-icon"><i class="{{$category->icon}}"></i></div>
                                <h4>{{ $category->getTranslatedAttribute('title') }}</h4>
                            </div>
                        </a>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="text-center mx-auto d-block">
                <a href="{{route('procedure.index')}}">
                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary m-auto">See All
                        <span class="mdl-button__ripple-container">
                            <span class="mdl-ripple is-animating" style="width: 256.724px; height: 256.724px; transform: translate(-50%, -50%) translate(69px, 30px);"></span>
                        </span>
                    </button>
                </a>
            </div>
        </div>
    </div>
</div>