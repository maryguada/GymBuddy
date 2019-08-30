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
    <title>GymBuddy</title>
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
    <div id="map">
        <iframe width="1500" height="1000" frameborder="0" style="border:0"
        src="https://www.google.com/maps/embed/v1/search?q=gyms+near+me&key=AIzaSyAfSEJGytZDw-hkt7zTfi7yP0THoj9ESOU" allowfullscreen>
        </iframe> 
    </div>
    
  </body>
</html>