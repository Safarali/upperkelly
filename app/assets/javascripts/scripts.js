$(document).ready(function() {

  /* Sticky Navigation */

  $('.request-calback-section, .house-hero-img-header').waypoint(function(direction){
      if (direction === "down"){
          $('.navigation').addClass('sticky');
      }
      else {
          $('.navigation').removeClass('sticky');
      }
  }, {
    offset: '60px;'
  });

/* Mobile navigation */
  $('.js--nav-icon').click(function () {
        var nav = $('.js--top-nav-links');
        var icon = $('.js--nav-icon i');

        nav.slideToggle(100);

        if(icon.hasClass('fa-list')){
            icon.addClass('fa-times')
            icon.removeClass('fa-list');
        }
        else {
            icon.addClass('fa-list');
            icon.removeClass('fa-times');
        }
    });

    /* Smooth Scrolling */

     $(function() {
       $('a[href*="#"]:not([href="#"])').click(function() {
         if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
           var target = $(this.hash);
           target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
           if (target.length) {
             $('html, body').animate({
               scrollTop: target.offset().top
           }, 1000);
             return false;
           }
         }
       });
     });

  /* Google Maps */
  var map = new GMaps ({
    div: '.map',
    lat: 38.599645,
    lng: -121.414780,
    zoom: 12
  });

  map.addMarker({
    lat: 38.599645,
    lng: -121.414780,
    title: 'Sacramento, San Francisco',
    infoWindow: {
      content: '<p>LOA Properties</p>'
    }
  });
});
