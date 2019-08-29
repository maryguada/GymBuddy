<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Users</title>
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
        <a href="/dash">Back</a>
        <div class="col-md-6">
        <div class = "form-group">
            <h3>Message Wall</h3>
            <div style="height: 150px; width: 500px; overflow: auto; outline: solid 1px black;">
                <c:forEach items="${messages}" var="comment">
                    <p>${users.firstName} says: ${comment.message}</p>
                </c:forEach>
            </div>
            <br>
            <form:form method="POST" action="/user/${users.id}/addmsg" modelAttribute="msg">
                <form:label path="message">Say Something: </form:label>
                <form:input path="message" type="textarea" class = "form-control"/>
                <br>
                <form:hidden path="sender" value="${sender_id}"/>
                <input type="submit" value="Submit" class="btn btn-primary"/>
            </form:form>
            <br><p><form:errors path="msg.*"/></p>
            </div>
        </div>
    </div>
</body>
</html>
