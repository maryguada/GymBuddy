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
		<nav style="postition:absolute"class="navbar navbar-light bg-light">
		
			<form style="margin:10px" class="form-inline" action="/search" method="post">
				
				<input type= "text" name="user" placeholder="Search User" class="form-control col-6"/>
				<input type="submit" value="Search" class="btn btn-outline-success my-2 my-sm-0"/>
									
			</form>
			<a style="float:right" href="/profile"><img src='<c:url value="https://icon-library.net/images/my-profile-icon-png/my-profile-icon-png-3.jpg"/>' height=40px width=40px/></a>
			
		</nav>
			<div  data-lorem="p">
			  <span class="sticky">User 1</span>
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
			  <span class="sticky">User 2</span>
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
			  <span class="sticky">User 3</span>
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
			  <span class="sticky">User 4</span>
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
			  <span class="sticky">User 5</span>
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
			  <span class="sticky">User 6</span>
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
			  <span class="sticky">User 7</span>
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
			  <span class="sticky">User 8</span>
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
			  <span class="sticky">User 9</span>
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
			<div style="position:fixed;bottom:0;background: #999;width:78%">
				<div class="row">
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
	</div>
</body>
</html>