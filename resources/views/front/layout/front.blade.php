<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Site Title -->
    <title>
    @yield('title')	
    </title>
    
    <!-- Meta Description Tag -->
    <meta name="Description" content="">
    <!-- Favicon Icon -->
    <link rel="icon" type="image/x-icon" href="/images/logo.png" />
    <!-- Font Awesoeme Stylesheet CSS -->
    <!--<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css" />-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/v4-shims.css">
    <!-- WebFont Medical Icons-->
    <link rel="stylesheet" href="/fonts/medical-icons/css/wfmi-style.css">
    <!-- Google web Font -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,500,600">
    
    <!-- Flat Icon Font -->
    <link rel="stylesheet" type="text/css" href="/fonts/flat-icon/flaticon.css">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="/css/bootstrap.min.css">
	@if($is_rtl)
		<link rel="stylesheet" href="/css/bootstrap4rtl.css?t={{time()}}" />
	@endif
    <!-- Material Design Lite Stylesheet CSS -->
    <link rel="stylesheet" href="/css/material.min.css" />
    <!-- Material Design Select Field Stylesheet CSS -->
    <link rel="stylesheet" href="/css/mdl-selectfield.min.css">
    <!-- Owl Carousel Stylesheet CSS -->
    <link rel="stylesheet" href="/css/owl.carousel.min.css" />
    <!-- Animate Stylesheet CSS -->
    <link rel="stylesheet" href="/css/animate.min.css" />
    <!-- Magnific Popup Stylesheet CSS -->
    <link rel="stylesheet" href="/css/magnific-popup.css" />
    <!-- Flex Slider Stylesheet CSS -->
    <link rel="stylesheet" href="/css/flexslider.css" />
    <!-- Custom Main Stylesheet CSS -->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/custom.css?t={{time()}}">
    <link rel="stylesheet" href="/css/responsive.css?t={{time()}}">
@if(!$is_rtl)
	<link rel="stylesheet" href="/css/ltr.css?t={{time()}}"/>
@else
	<link rel="stylesheet" href="/css/rtl.css?t={{time()}}"/>
@endif

    @yield('style')
</head>
<body>
    <div class="preloader" id="preloader">
        <div class="preloader-container">
            <img src="/images/logo.png" alt="medtouriran-logo">
            <!--<img src="/images/preloader/299.gif">-->
        </div>
    </div>
    <!-- Start Header Section -->
    @include('front.common.header')
    <!-- Start Slider Section -->
    @yield('content')
    
    @include('front.common.footer')
    
    <!-- **********Included Scripts*********** -->

    <!-- Jquery Library 2.1 JavaScript-->
    <script src="/js/jquery-2.1.4.min.js"></script>
    <!-- Popper JavaScript-->
    <script src="/js/popper.min.js"></script>
    <!-- Bootstrap Core JavaScript-->
    <script src="/js/bootstrap.min.js"></script>
    
    @if($is_rtl)
    <script src="/js/bootstrap4rtl.min.js"></script>
    @endif
    <!-- Material Design Lite JavaScript-->
    <script src="/js/material.min.js"></script>
    <!-- Material Select Field Script -->
    <script src="/js/mdl-selectfield.min.js"></script>
    <!-- fullcalendar Plugin JavaScript-->
    <script src="/js/jquery.flexslider.min.js"></script>
    <!-- moment Plugin JavaScript-->
    <script src="/js/moment.min.js"></script>
    <!-- Flexslider Plugin JavaScript-->
    <script src="/js/fullcalendar.min.js"></script>
    <!-- Owl Carousel Plugin JavaScript-->
    <script src="/js/owl.carousel.min.js"></script>
    <!-- Scrolltofixed Plugin JavaScript-->
    <script src="/js/jquery-scrolltofixed.min.js"></script>
    <!-- Magnific Popup Plugin JavaScript-->
    <script src="/js/jquery.magnific-popup.min.js"></script>
    <!-- WayPoint Plugin JavaScript-->
    <script src="/js/jquery.waypoints.min.js"></script>
    <!-- CounterUp Plugin JavaScript-->
    <script src="/js/jquery.counterup.js"></script>
    <!-- SmoothScroll Plugin JavaScript-->
    <script src="/js/smoothscroll.min.js"></script>
    
    <script src="/js/toastr.min.js"></script>
    <!--Custom JavaScript for Klinik Template-->
    <script src="/js/custom.js"></script>
    @if(!$is_rtl)
    <script src="/js/ltr.js"></script>
    @else
    <script  src="/js/rtl.js"></script>
    @endif
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-93901876-1', 'auto');
        ga('send', 'pageview');


        $(window).load(function() {
            $('.preloader').fadeOut('slow');
        });
    
        
        
        $('body').on('click', '.slider-appointment a, #appointment-now, .hdr-apointment', function () {
            $('#make-appointment').modal('show');
        });
        
        

        
        
    </script>
    
    <script src="/js/toastr.min.js"></script>
    <script>
		@if(Session::has('message'))

	    // TODO: change Controllers to use AlertsMessages trait... then remove this
	    var alertType = {!! json_encode(Session::get('alert-type', 'info')) !!};
	    var alertMessage = {!! json_encode(Session::get('message')) !!};
	    var alerter = toastr[alertType];
			@if(Helper::isRtl())
				toastr.options.rtl = true;
			@endif
	    if (alerter) {
	        alerter(alertMessage);
	    } else {
	        toastr.error("toastr alert-type " + alertType + " is unknown");
	    }
	
	    @endif
	</script>
    @yield('js')


</body>
</html>