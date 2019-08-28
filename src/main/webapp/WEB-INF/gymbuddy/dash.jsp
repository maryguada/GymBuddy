<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns:th="http://www.thymeleaf.org">

<%@ page isErrorPage = "true" %>

<!DOCTYPE html>
<html>
<head>
	<link href="<c:url value="/resources/style.css" />" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div style="padding:20px;" class="header">
		
			<form action="/search" method="post">
				
				<input style="display:inline-block" type= "text" placeholder="Search User" class="form-control col-6"/>
				<input type="submit" value="Search" class="btn btn-primary"/>
				<a style="float:right" href="/profile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
									
			</form>
			
		</div>
			<div data-lorem="p">
			  <span class="sticky">a</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">b</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">c</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">d</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">e</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">f</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">g</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
			<div data-lorem="p">
			  <span class="sticky">h</span>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			  <br>
			</div>
		
		<div data-lorem="p">
			  <span class="sticky">g</span>
			  
		</div>
		<div style="margin-left:10px" class="row">
			<div class="col">
				<img src='<c:url value="https://image.flaticon.com/icons/svg/25/25694.svg"/>'height=40px width=40px/>
			</div>
			<div class="col">				
				<img src='<c:url value="https://png.pngtree.com/svg/20160712/a7aea86d9d.png"/>'height=40px width=40px/>
			</div>
			<div class="col">
				<img src='<c:url value="https://image.flaticon.com/icons/png/512/3/3901.png"/>'height=40px width=40px/>
			</div>
			<div class="col">
				<img src='<c:url value="https://www.ifsw.org/wp-content/uploads/2018/03/friends.png"/>'height=40px width=40px/>
			</div>
			
		</div>
	</div>
</body>
</html>