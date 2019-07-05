
    
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
                                <img src="{{Helper::placeholder(Voyager::image($doctor->thumbnail('medium')))}}" alt="{{$doctor->getTranslatedAttribute('name')}}">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="doctor-name">
                                <h3>{{$doctor->getTranslatedAttribute('name')}}</h3>
                                <span class="badge badge-primary">Head of Department</span>
                                <p>
                                    @include('front.common.items', ['items' => $doctor->categories])

                                </p>
                                @include('front.common.rating', ['star' => $doctor->rate/20])
                            </div>
                            <div class="doctor-details-extra text-left p-0 pt-4">
                                <!--<p class="text-center"><i class="fa fa-trophy"></i>8 Awards</p>-->
                                <p class="text-center"><i class="fa fa-star"></i>17 year Experience</p>
                                <!--<p class="text-center"><i class="fa fa-money"></i>Charges: $100</p>-->
                            </div>
                        </div>
                        <p class="text-muted p-4 m-0 pb-0">
                        {{$doctor->getTranslatedAttribute('about')}}
                        </p>
                        @if(!empty($doctor->getTranslatedAttribute('education')))
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
                                    @foreach(json_decode($doctor->getTranslatedAttribute('education'),TRUE) as $education)
                                    <tr>
                                        <td>{{$loop->index}}</td>
                                        <td>{{$education['name']}}</td>
                                        <td>{{$education['degree']}}</td>
                                        <td><span class="badge badge-{{Helper::color_badge($loop->index)}} badge-pill">{{$education['date']}}</span></td>
                                    </tr>
                                    @endforeach 
                                </tbody>
                            </table>
                        </div>
                        @endif
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                @if(!empty($doctor->getTranslatedAttribute('skills')))
                <div class="theme-material-card">
                    <div class="px-2">
                        <div class="sub-ttl font-20 pt-4">Skill & Achievments</div>
                        @foreach(json_decode($doctor->getTranslatedAttribute('skills'),TRUE) as $skill)
                        <div class="doctor-skills">
                            <p class="font-14">{{$skill['skill']}} <span class="badge badge-{{Helper::color_badge($loop->index)}} float-right">{{$skill['percent']}}%</span></p>
                            <div class="progress progress-md mb-4">
                                <div class="progress-bar progress-bar-striped bg-{{Helper::color_badge($loop->index)}}" role="progressbar" style="width: {{$skill['percent']}}%" aria-valuenow="{{$skill['percent']}}" aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                @endif
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
        @if(!empty($doctor->testimonal))
        <div class="theme-material-card">
            <div class="sub-ttl">Testimonial</div>
            <div class="row">
                    @foreach(explode(";",$doctor->testimonal) as $video)
                    <div class="col-sm-12 col-md-6">
                        <div class="theme-block">
                            <iframe width="100%" height="275px" src="https://www.youtube.com/embed/{{$video}}"></iframe>
                        </div>
                        
                    </div>
                    @endforeach
            
            </div>
        </div>
        @endif
        @if(!empty($doctor->images))
        <div class="theme-material-card">
            <div class="sub-ttl">Gallery</div>
            <div id="doctor-page--gallery-owl-carousel" class="owl-carousel owl-drag owl-theme theme-owl-dot">
                
                <?php $images = json_decode($doctor->images); ?>
                @foreach($images as $image)
                <div class="owl-item">
                    <div class="theme-block">
                        <div class="gallery-block theme-block-picture doctor-picture-2">
                            <a href="{{ Voyager::image($image)}}">
                                <img src="{{ Voyager::image($doctor->getThumbnail($image, 'medium'))}}" alt="image">
                                <div class="gallery-layer">
                                    <div class="gallery-layer-dark">
                                        <p><i class="fa fa-search-plus"></i></p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
        @endif
        <div class="theme-material-card">
            <div class="sub-ttl">Related Doctors</div>
            <div class="row">
                @foreach($related_doctors as $related_doctor)
                <div class="col-sm-6 col-md-4">
                    <div class="theme-block">
                        <div class="theme-block-picture doctor-picture-2">
                            <img src="{{Helper::placeholder(Voyager::image($related_doctor->thumbnail('medium'),'avatar'))}}" alt="{{$related_doctor->getTranslatedAttribute('name')}}">
                        </div>
                        <div class="doctor-name doctor-name-2">
                            <h4><a>{{$related_doctor->getTranslatedAttribute('name')}}</a></h4>
                        </div>
                        <div class="theme-block-hidden">
                            <div class="doctor-name">
                                <h4><a>{{$related_doctor->getTranslatedAttribute('name')}}</a></h4>
                            </div>
                            <div class="doctor-details">
                                <div class="doctor-specility">
                                    <p>
                                        @include('front.common.items', ['items' => $related_doctor->categories])
                                    </p>
                                </div>
                                <div class="doctor-details-extra">
                                    <!--<p><i class="fa fa-shield"></i>CEO &amp; Founder</p>-->
                                    <p><i class="fa fa-mortar-board"></i>{{$related_doctor->degree}}</p>
                                    <!--<p><i class="fa fa-trophy"></i>Awards: 8</p>-->
                                    <p><i class="fa fa-star"></i>Experience: {{$related_doctor->experience}} year</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div><!-- End Doctor List Section -->


<form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">
        @csrf
        @include('front.common.form')
</form>
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