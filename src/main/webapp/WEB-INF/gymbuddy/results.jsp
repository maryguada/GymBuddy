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
		<h1>There are ${users.size()} results:</h1>
		<table>
		<thead>
			<tr>
				<th scope="col">Name</th>
				<th scope="col">Goal</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="users" items="${user}">
				<tr>
					<td scope="row"><a href="/user/${user.id}">${user.first_name} ${user.last_name}</a>
					<td scope="row">${user.goal}
				</tr>
			</c:forEach>
		</tbody>
		</table>	
	</div>
</body>
</html>