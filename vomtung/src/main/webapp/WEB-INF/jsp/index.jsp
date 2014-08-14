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
	<a href="${pageContext.request.contextPath }/product/add.html">Add new product</a>
	<br>
	<br>
	<table border="1">
		<tr>
			<th>Product Name</th>
			<th>Description</th>
			<th>Manufacture</th>
			<th>Option</th>
		</tr>
		<c:forEach var="product" items="${products}">
			<tr>
				<td>${product.name }</td>
				<td>${product.description }</td>
				<td>${product.manufacture }</td>
				<td><a
					href="${pageContext.request.contextPath }/product/delete/${product.id }.html"
					onclick="return confirm('Are you sure?')">Delete</a> | <a
					href="${pageContext.request.contextPath }/product/edit/${product.id }.html">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>