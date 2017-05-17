var map, infoWindow;

/* Code extracted from the Maps JavaScript API documentation */
function getUserLocation(){
  // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };

        map.setCenter(pos);
        map.setZoom(15);
    }, function() {
        handleLocationError();
    });
    } 
    else {
    // Browser doesn't support Geolocation
        handleLocationError();
    }
}

function handleLocationError() {
    map.setZoom(2);
}

/* Add a marker to the map */
function addMarker(latitude, longitude){
    var coords = new google.maps.LatLng(latitude,longitude);
    var marker = new google.maps.Marker({
        position: coords,
        map: map
    });
   
}

/* Creates the map */
function initMap() {
    var center = {lat: 48.51, lng: 2.20};
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 5,
        center: center
    });
  
    // Center the initial view of the map to the user location
    getUserLocation();

    // Location of the KML file used on the representation
    var src = 'https://sites.google.com/site/kmlfilestsp/kml/doc.kml';
    // Creation of the KML layer using a public file
    var kmlLayer = new google.maps.KmlLayer(src, {
      suppressInfoWindows: false,
      preserveViewport: true,
      map: map
      });


}