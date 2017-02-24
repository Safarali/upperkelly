$(document).ready(function() {

  /* Sticky Navigation */

  $('.request-calback-section').waypoint(function(direction){
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

        if(icon.hasClass('fa-th-list')){
            icon.addClass('fa-times')
            icon.removeClass('fa-th-list');
        }
        else {
            icon.addClass('fa-th-list');
            icon.removeClass('fa-times');
        }
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
