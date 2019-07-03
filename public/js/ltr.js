$("#testimonial-slider").owlCarousel({
        items: 1,
        dots: true,
    });

//Home Doctor Slider
$("#hm-packages-slider").owlCarousel({
    center: true,
    autoplay: true,
    rtl: false,
    items: 3,
    margin: 10,
    loop: true,
    smartSpeed: 1000,
    autoplayTimeout: 3000,
    autoplayHoverPause: true,
    responsiveClass: true,
    responsive: {
        0: {
            items: 1,
            nav: true
        },
        600: {
            items: 2,
            nav: false
        },
        992: {
            items: 3,
            nav: false
        }
    }
});

$(".theme-owlslider").owlCarousel({
    items: 1,
});