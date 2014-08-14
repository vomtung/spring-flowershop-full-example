<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	contextPath ${pageContext.request.contextPath }
	<a href="${pageContext.request.contextPath }/account/add.html">Add new account</a>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>Product Name</th>
			<th>Description</th>
			<th>Option</th>
		</tr>
		<c:forEach var="products" items="${products}">
			<tr>
				<td>${products.name }</td>
				<td>${products.description }</td>
				<td><a
					href="${pageContext.request.contextPath }/account/delete/${acc.name }.html"
					onclick="return confirm('Are you sure?')">Delete</a> | <a
					href="${pageContext.request.contextPath }/account/edit/${acc.name }.html">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>