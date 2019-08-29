<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>User profile</h1>
	    <h1>Basic info</h1>
	    
	    <div class="row">
		<div class="form-group">
		<div class="col-6">
		<p>First name:</p><p>${user.firstName}</p>
		<p>Last name:</p><p>${user.lastName}</p>
		<p>Address:</p> <P> ${user.address} </P>
		<p>Age:</p>   <p>${user.age}</p> 
		<p>Gender:</p>  <p>${user.sex}</p> 
		</div>
		
		<h1>Stats</h1>
		
		<p>Weight:</p>  <p> ${user.weight}</p>
		<p>Height:</p>  <p> ${user.height} </p>
		<p>Bench press(lbs):</p>  <p> ${user.benchpress} </p>
		<p>Squat(lbs):</p>   <p>${user.squat}</p> 
		<p>Deadlift(lbs):</p>   <p>${user.deadlift}</p>
		<p>Goals(lbs):</p>   <p>${user.goals}</p>
		</div>
		</div>
		
		
		
	</div>
</body>
</html>