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
		<nav style="postition:absolute"class="navbar navbar-light bg-light">
		
			<form style="margin:10px" class="form-inline" action="/search" method="post">
				
				<input type= "text" name="user" placeholder="Search User" class="form-control col-6"/>
				<input type="submit" value="Search" class="btn btn-outline-success my-2 my-sm-0"/>
									
			</form>
			<p style="margin-left:550px;margin-top:15px;">Welcome, ${user.firstName}</p>
			<a  href="/myprofile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
			<a href="/logout"><img src='<c:url value="https://image.flaticon.com/icons/svg/55/55023.svg"/>' height=35px width=35px/></a>
			
		</nav>
	<h1>User profile</h1>
	    <h1>Basic info</h1>
	    
	    <div class="row">
		<div class="form-group">
		<div class="col-6">
		<p>First name:</p><p>${user.firstName}</p>
		<p>Last name:</p><p>${user.lastName}</p>
		<p>Address:</p> <P> ${user.address}</P>
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