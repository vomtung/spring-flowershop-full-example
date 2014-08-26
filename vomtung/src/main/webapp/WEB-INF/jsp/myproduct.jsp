<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
My Product Page

<table style="width: 500px">
	<tr>
		<td>name</td>
		<td>price</td>
		<td>description</td>
		<td>Options</td>
	</tr>
	<c:forEach var="product" items="${products}">
		<tr>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>${product.description}</td>
			<td><a href="${pageContext.servletContext.contextPath}/product/edit/${product.id}.html">Edit</a>|<a href="${pageContext.servletContext.contextPath}/product/delete/${product.id }.html">Delete</a></td>
		</tr>
	</c:forEach>
</table>
</br>
