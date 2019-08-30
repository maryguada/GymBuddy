<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">

<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
	<title>Dashboard</title>
	<style>
		body {
			background-image:url("/img/background.jpg");
			background-repeat: repeat;
	  		background-size: hover;
		}
		.form{
			margin: auto;
	  		width: 50%;
		}
		.form-group p{
			color:white;
		}
		.form-group h1{
			color:white;
		}
		.content {
		
		background-color:white;
		}
	</style>
</head>
<body>
	<div class="container">
	<div class="row">
	    <img  style = "width:85px; height:65px; margin-top:10px" src="/img/GymBuddyLogoFinalW.png">
	    <h1 style="font-size:60px; font-weight:bold; color:white; margin-left:-8px">ymbuddy.</h1>
	    <p style="color:white;margin-top:40px;margin-left:120px;float:right">Welcome, ${user.firstName}</p>
	    
	  </div>
		<div id="navbar">
		
		<nav  class="navbar navbar-light bg-light">
		
			<form style="margin:10px" class="form-inline" action="/search" method="post">
				
				<input type= "text" name="user" placeholder="Search User" class="form-control col-6"/>
				<input type="submit" value="Search" class="btn btn-outline-success my-2 my-sm-0"/>
									
			</form>
			<a href="/dash"><img src='<c:url value="http://simpleicon.com/wp-content/uploads/dashboard.png"/>' height=46px width=46px/></a>
			<a href="/myprofile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
			<a href="/logout"><img src='<c:url value="https://image.flaticon.com/icons/svg/55/55023.svg"/>' height=35px width=35px/></a>
			
		</nav>
		
		</div>
		
		<div class="content">
		<c:forEach items="${allusers}" var="user">
		
		<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}" ><span class="stick" style="border-radius:10px">			<img style="border-radius:50%;width:30px;height:30px"src="/img/ben.jpeg"/>
			     ${user.firstName} ${user.lastName}<h4 style="float:right">(${user.distance}mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-success" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): ${user.benchpress}</p>
			  <p>Dead Lift(lbs): ${user.deadlift}</p>
			  <p>Squat(lbs): ${user.squat}</p>
			  <p>Goal: ${user.goals}</p>
			  
			</div>
			
			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick" style="border-radius:10px">			<img style="border-radius:50%;width:30px;height:30px"src="/img/mary.jpg"/>
			     Mary Naanep<h4 style="float:right"> (0.1 mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-success" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): 45</p>
			  <p>Dead Lift(lbs): 45</p>
			  <p>Squat(lbs): 80</p>
			  <p>Goal: Gain muscle</p>
			  
			</div>
			
			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick" style="border-radius:10px">			<img style="border-radius:50%;width:30px;height:30px"src="/img/ProfileSmile.jpg"/>
			     Carl Bishop <h4 style="float:right"> (0.1 mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-success" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): 300</p>
			  <p>Dead Lift(lbs): 260</p>
			  <p>Squat(lbs): 400</p>
			  <p>Goal: Gain power</p>
			  
			</div>
			
			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick" style="border-radius:10px">			<img style="border-radius:50%;width:30px;height:30px"src="/img/howard.jpeg"/>
			     Cean Tolentino <h4 style="float:right">(0 mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-success" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): 150</p>
			  <p>Dead Lift(lbs): 140</p>
			  <p>Squat(lbs): 150</p>
			  <p>Goal: Gain muscle and lose weight</p>
			  
			</div>
			
<%-- 			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick">			<img style="border-radius:50%;width:25px;height:25px"src="/img/ben.jpeg"/>
			     ${user.firstName} ${user.lastName}<h4 style="float:right">(${user.distance}mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-warning" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): ${user.benchpress}</p>
			  <p>Dead Lift(lbs): ${user.deadlift}</p>
			  <p>Squat(lbs): ${user.squat}</p>
			  <p>Goal: ${user.goals}</p>
			  
			</div>
			
			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick">			<img style="border-radius:50%;width:25px;height:25px"src="/img/ben.jpeg"/>
			     ${user.firstName} ${user.lastName}<h4 style="float:right">(${user.distance}mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-warning" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): ${user.benchpress}</p>
			  <p>Dead Lift(lbs): ${user.deadlift}</p>
			  <p>Squat(lbs): ${user.squat}</p>
			  <p>Goal: ${user.goals}</p>
			  
			</div>
			
			<div data-lorem="p">		
			     <h4><a href="/profile/${user.id}"><span class="stick">			<img style="border-radius:50%;width:25px;height:25px"src="/img/ben.jpeg"/>
			     ${user.firstName} ${user.lastName}<h4 style="float:right">(${user.distance}mi)</h4><a class="btn btn-primary" href="/user/${user.id}">Message</a><a class="btn btn-warning" href="/addfriend/${user.id}">Add friend</a></span><a class="btn btn-danger" href="/block/${user.id}">Block</a></a></h4>
			  <p>Bench Press(lbs): ${user.benchpress}</p>
			  <p>Dead Lift(lbs): ${user.deadlift}</p>
			  <p>Squat(lbs): ${user.squat}</p>
			  <p>Goal: ${user.goals}</p>
			  
			</div> --%>
		</c:forEach>
		
		<div style="position:fixed;bottom:0;background: #999;display: inline;padding: 5px 10px; width:82.8%">
				<div class="row">
				<div class="col">
					<a href="/dash"><img src='<c:url value="https://image.flaticon.com/icons/svg/25/25694.svg"/>'height=40px width=40px/></a>
				</div>
				<div class="col">				
					<a href="/map"><img src='<c:url value="https://png.pngtree.com/svg/20160712/a7aea86d9d.png"/>'height=40px width=40px/></a>
				</div>
				<div class="col">
					<a href ="/addpicture"><img src='<c:url value="https://image.flaticon.com/icons/png/512/3/3901.png"/>'height=40px width=40px/></a>
				</div>
				<div class="col">
					<a href="/usersnearby"><img src='<c:url value="https://www.ifsw.org/wp-content/uploads/2018/03/friends.png"/>'height=40px width=40px/></a>
				</div>
			</div>
		</div>
		
			
		</div>
	</div>
		<script type="text/javascript" src="/resources/effect.js"></script>
	
</body>
</html>