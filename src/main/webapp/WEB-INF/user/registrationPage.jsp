<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
	<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
	<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<meta charset="UTF-8">
<title>Register</title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-6">
				
                <p>
                    <form:errors path="user.*" />
                </p>
				<h1>Register | <a href="/login">Login</a></h1>

                <form:form method="POST" action="/registration"
                    modelAttribute="user">
                    <div class="form-group">
                    <p>

                        <form:label path="firstName">First Name:</form:label>
                        <form:input type="firstName" path="firstName" class="form-control" />
                    </p>
                    </div>

                    <div class="form-group">

                    <p>
                        <form:label path="lastName">Last Name:</form:label>
                        <form:input type="lastName" path="lastName" class="form-control" />
                    </p>
                    </div>

                    <p>
                        <form:label path="email">Email:</form:label>
                        <form:input type="email" path="email" class="form-control" />
                    </p>

                    <p>
			            <form:label path="password">Password:</form:label>
			            <form:password path="password" class="form-control"/>
			        </p>
			        <p>
			            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
			            <form:password path="passwordConfirmation" class="form-control"/>
			        </p>
			        <input type="submit" value="Register!" class="btn btn-primary" />
			    </form:form>
			    
			    		<div class="icon-bar">
		  <a href="#" class="facebook"><i class="fa fa-facebook"></i></a> 
		  <a href="#" class="twitter"><i class="fa fa-twitter"></i></a> 
		  <a href="#" class="google"><i class="fa fa-google"></i></a> 
		  <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
		  <a href="#" class="youtube"><i class="fa fa-youtube"></i></a> 
		</div>
</div>

</div>
</div>
</body>
</html>