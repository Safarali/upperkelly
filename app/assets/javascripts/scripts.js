$(document).ready(function() {

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
