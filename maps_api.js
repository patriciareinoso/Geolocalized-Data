/**
 * @fileOverview Handles the map representation. <br>
 * Uses the Google Maps JavaScript API (v=3).<br>
 * Uploads the information from a KML file and displays it.<br>
 *
 * Centers the map according to the user's location if possible.
 *
 * @author Oscar Guillén.
 * @author Patricia Reinoso.
 *
 * @module map
 *
 */

/**
 * Global variable that represents the map.
 */
var map;

/**
 * Get the user's current location and centers the map
 * on that location.
 *
 * Code extracted from the Maps JavaScript API documentation 
 */
function getUserLocation(){
    // Try HTML5 geolocation.
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
        // Center the map on the current location and zoom in.
        map.setCenter(pos);
        map.setZoom(15);
    });
    } 
    else {
        // Browser doesn't support Geolocation
        handleLocationError();
    }
}

/**
 * Handle the user's location access error.
 * Set the map's center in France.
 */
function handleLocationError() {
    var center = {lat: 48.51, lng: 2.20};
    map.setCenter(pos);
    map.setZoom(2);
}

/**
 * Add a pinmark to the map.
 * @param {number} latitude - Latitude of the geographic point.
 * @param {number} longitude - Longitude of the geographic point.
 */
function addMarker(latitude, longitude){
    
    var coords = new google.maps.LatLng(latitude,longitude);
    var marker = new google.maps.Marker({
        position: coords,
        map: map
    });
   
}

/** 
 * Initialize the map.
 * The map is centered on the user's location if possible.
 * Else, the map is centered in France.
 * Upload the KML file with the information neeeded, to the KML layer of the map.
 */
function initMap() {

    var center = {lat: 48.51, lng: 2.20};
    map = new google.maps.Map(document.getElementById('map'), {
        zoom:3,
        center: center
    });
  
    // Center the initial view of the map to the user location
    getUserLocation();

    // Location of the KML file used on the representation
    var src = 'https://sites.google.com/site/kmlfilestsp/kml/test.kml';
    
    // Creation of the KML layer using a public file
    var kmlLayer = new google.maps.KmlLayer(src, {
        suppressInfoWindows: false,
        preserveViewport: true,
        map: map
    });


}