<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage = "true" %>


<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Users Nearby</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>

      function initMap() {

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: {lat: 37.804363, lng: -122.271111}
        });

        // Create an array of alphabetical characters used to label the markers.
        var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

        // Add some markers to the map.
        // Note: The code uses the JavaScript Array.prototype.map() method to
        // create an array of markers based on a given "locations" array.
        // The map() method here has nothing to do with the Google Maps API.
        var markers = locations.map(function(location, i) {
          return new google.maps.Marker({
            position: location,
            label: labels[i % labels.length]
          });
        });

        // Add a marker clusterer to manage the markers.
        var markerCluster = new MarkerClusterer(map, markers,
            {imagePath: 'https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/m'});
      }
      var locations = [
        {lat: 37.804363, lng: -122.271111},
        {lat: 37.869061, lng: -122.270462},
        {lat: 37.866061, lng: -122.274462},

        {lat: 37.806061, lng: -122.274462},
        {lat: 37.809061, lng: -122.289462},
        {lat: 37.801071, lng: -122.289462},
        {lat: 37.802071, lng: -122.289462},
        {lat: 37.803071, lng: -122.289462},
        {lat: 37.804071, lng: -122.289462},
        {lat: 37.878061, lng: -122.304462},
        {lat: 37.878461, lng: -122.304462},
        {lat: 37.878561, lng: -122.304462},
        {lat: 37.897061, lng: -122.314462},
        {lat: 37.896061, lng: -122.324462},
        {lat: 37.926061, lng: -122.334462},
        {lat: 37.926061, lng: -122.344462},


        {lat: 37.780079, lng: -122.420174},
        {lat: 37.780095, lng: -122.420193},
        {lat: 37.780045, lng: -122.420113},
       
      ]
    </script>
    <script src="https://developers.google.com/maps/documentation/javascript/examples/markerclusterer/markerclusterer.js">
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAfSEJGytZDw-hkt7zTfi7yP0THoj9ESOU&callback=initMap">
    </script>
  </body>
</html>