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
			            <form:label path="age">Age:</form:label>
			            <form:input value="${user.age}" type="age" path="age" class="form-control"/>
			        </p>
			        </div>
			        
			        <p>
			            <form:hidden path="password" value="${user.password}"/>
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
			        
			        <h1>Stats</h1>
			        
					<div class="form-group">
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
			       
			    </form:form>
				<br>
	</div>
</body>
</html>