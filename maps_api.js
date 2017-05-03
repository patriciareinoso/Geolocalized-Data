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

/* Add a Marker on the map */
function addMarker(latitude, longitude){
    var pos = {lat:latitude, lng: longitude};
    var marker = new google.maps.Marker({
        position: pos,
        map: map
    });
   
}

/* Creates the map */
function initMap() {
    var center = {lat: 48.51, lng: 2.20};
    map = new google.maps.Map(document.getElementById('map'), {
        zoom: 2,
        center: center
    });
  
    getUserLocation();

    addMarker(-25.363, 131.044);

    var src = '../data/test4.kml';
    var myParser = new geoXML3.parser({ map: map });
    myParser.parse(src);

}