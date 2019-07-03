@foreach ($package->cities as $city)
    {{$city->getTranslatedAttribute('title')}}
    @if(!$loop->last)
        ,
    @endif
@endforeach