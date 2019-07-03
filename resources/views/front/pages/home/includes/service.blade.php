<div id="hm-service" class="layer-stretch">
    <div class="layer-wrapper">
        <div class="layer-ttl">
            <h3>Our services</h3>
        </div>
        <div class="layer-container">
            @foreach($benefits as $benefit)
            <div class="feature-block feature-block-dark">
                <div class="feature-icon"><i class="{{$benefit->icon}}"></i></div>
                <span>{{$benefit->getTranslatedAttribute('title')}}</span>
                <p class="paragraph-small paragraph-white">{{$benefit->getTranslatedAttribute('body')}}</p>
            </div>
            @endforeach
        </div>
    </div>
</div>