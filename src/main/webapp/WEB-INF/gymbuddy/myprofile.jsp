<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
	<meta charset="UTF-8">
	<title>My profile</title>
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
	    </div>
	<div id="navbar">
		
		<nav  class="navbar navbar-light bg-light">
		
			<form style="margin:10px" class="form-inline" action="/search" method="post">
				
				<input type= "text" name="user" placeholder="Search User" class="form-control col-6"/>
				<input type="submit" value="Search" class="btn btn-outline-success my-2 my-sm-0"/>
									
			</form>
			<a class="active" href="/dash"><img src='<c:url value="http://simpleicon.com/wp-content/uploads/dashboard.png"/>' height=46px width=46px/></a>
			<a href="/myprofile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
			<a href="/logout"><img src='<c:url value="https://image.flaticon.com/icons/svg/55/55023.svg"/>' height=35px width=35px/></a>
			
		</nav>
		
		</div>
		
		<form:form method="POST" action="/update/${user.id}" modelAttribute="user">
                    <div class="form-group">
                    <h1>Basic info</h1>
                    <p>

                        <form:label path="firstName">First Name:</form:label>
                        <form:input value="${user.firstName}" type="firstName" path="firstName" class="form-control" />
                    </p>
                    </div>

                    <div class="form-group">

                    <p>
                        <form:label path="lastName">Last Name:</form:label>
                        <form:input value="${user.lastName}" type="lastName" path="lastName" class="form-control" />
                    </p>
                    </div>
                    
                    <div class="form-group">

                    <p>
                        <form:label path="email">Email:</form:label>
                        <form:input value="${user.email}" type="email" path="email" class="form-control" />
                    </p>
                    </div>
                    
                    <div class="form-group">			        			        			        
			        <p>
			            <form:label path="address">Address:</form:label>
			            <form:input value="${user.address}" type="text" path="address" class="form-control"/>
			        </p>
			        </div>
			        
			        <div class="form-group">			        			        			        
			        <p>
			            <form:label path="city">City:</form:label>
			            <form:input value="${user.city}" type="text" path="city" class="form-control"/>
			        </p>
			        </div>
			        
			        <div class="form-group">			        			        			        
			        <p>
			            <form:label path="state">State:</form:label>
			            <form:input value="${user.state}" type="text" path="state" class="form-control"/>
			        </p>
			        </div>
			        
			        <div class="form-group">			        			        			        
			        <p>
			            <form:label path="age">Age:</form:label>
			            <form:input value="${user.age}" type="age" path="age" class="form-control"/>
			        </p>
			        </div>
			        
			        <p>
			            <form:hidden path="password" value="${user.password}"/>
			        </p>
			        
			        <p>
			            <form:hidden path="distance" value="${user.distance}"/>
			        </p>
                   
                    <div class="form-group">			        			        			        
			        <p>
			            <select name="sex">
			            <option value="Male" class="form-control">Male</option>
			            <option value="Female" class="form-control">Female</option>
			            <option value="Other" class="form-control">Other</option>
			            </select>
			            
			        </p>
			        </div>
			        
			        
					<div class="form-group">
					<h1>Stats</h1>
                    <p>
                        <form:label path="weight">Weight: </form:label>
                        <form:input value="${user.weight}" path="weight" class="form-control" />
                    </p>
					</div>
					
					<div class="form-group">
                    <p>
			            <form:label path="height">Height:</form:label>
			            <form:input value="${user.height}" path="height" class="form-control"/>
			        </p>
			        </div>
			        
					<div class="form-group">			        
			        <p>
			            <form:label path="benchpress">Bench Press:</form:label>
			            <form:input value="${user.benchpress}" path="benchpress" class="form-control"/>
			        </p>
			        </div>
			        
					<div class="form-group">			        			        
			        <p>
			            <form:label path="squat">Squats:</form:label>
			            <form:input value="${user.squat}" path="squat" class="form-control"/>
			        </p>
			        </div>
			        
					<div class="form-group">			        			        			        
			        <p>
			            <form:label path="deadlift">Dead lift:</form:label>
			            <form:input value="${user.deadlift}" path="deadlift" class="form-control"/>
			        </p>
			        </div>
			        
					<div class="form-group">			        			        			        			        
			        <p>
			            <form:label path="goals">Goals:</form:label>
			            <form:input value="${user.goals}" path="goals" class="form-control"/>
			        </p>
			        </div>
			        
			        <input type="submit" value="Submit!" class="btn btn-primary" />
			       <br><br>
			    </form:form>
				<div class="content">
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
					<a href="/friends"><img src='<c:url value="https://www.ifsw.org/wp-content/uploads/2018/03/friends.png"/>'height=40px width=40px/></a>
				</div>
			</div>
			</div>
	</div>
	</div>
			<script type="text/javascript" src="/resources/effect.js"></script>
	
</body>
</html>