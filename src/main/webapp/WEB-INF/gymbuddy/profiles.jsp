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
			<p style="margin-left:480px;margin-top:15px;">Welcome, ${user.firstName}</p>
			<a  href="dash"><img src='<c:url value="https://cdn3.iconfinder.com/data/icons/block/32/dashboard-512.png"/>' height=46px width=46px/></a>
			<a  href="/myprofile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
			<a href="/logout"><img src='<c:url value="https://image.flaticon.com/icons/svg/55/55023.svg"/>' height=35px width=35px/></a>
			
		</nav>
	<h1>User profile</h1>
	    <h1>Basic info</h1>
	    
	    <div class="row">
		<div class="form-group">
		<div class="col-6">
		<p>First name:</p><p>${thisUser.firstName}</p>
		<p>Last name:</p><p>${thisUser.lastName}</p>
		<p>Address:</p> <P> ${thisUser.address}</P>
		<p>Age:</p>   <p>${thisUser.age}</p> 
		<p>Gender:</p>  <p>${thisUser.sex}</p> 
		</div>
		
		<h1>Stats</h1>
		
		<p>Weight:</p>  <p> ${thisUser.weight}</p>
		<p>Height:</p>  <p> ${thisUser.height} </p>
		<p>Bench press(lbs):</p>  <p> ${thisUser.benchpress} </p>
		<p>Squat(lbs):</p>   <p>${thisUser.squat}</p> 
		<p>Deadlift(lbs):</p>   <p>${thisUser.deadlift}</p>
		<p>Goals(lbs):</p>   <p>${thisUser.goals}</p>
		</div>
		</div>
		<br>
		
		<div style="position:fixed;bottom:0;background: #999;width:78%"	>
				<div class="row">
				<div class="col">
					<a href="/dash"><img src='<c:url value="https://image.flaticon.com/icons/svg/25/25694.svg"/>'height=40px width=40px/></a>
				</div>
				<div class="col">				
					<a href="/message"><img src='<c:url value="https://png.pngtree.com/svg/20160712/a7aea86d9d.png"/>'height=40px width=40px/></a>
				</div>
				<div class="col">
					<a href ="/addpicture"><img src='<c:url value="https://image.flaticon.com/icons/png/512/3/3901.png"/>'height=40px width=40px/></a>
				</div>
				<div class="col">
					<a href="/friends"><img src='<c:url value="https://www.ifsw.org/wp-content/uploads/2018/03/friends.png"/>'height=40px width=40px/></a>
				</div>
			</div>
		
	</div>
</body>
</html>