<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new account</title>
</head>
<body>
Edit Product
	<form:form method="post" commandName="product" action="${pageContext.servletContext.contextPath}/product/edit.html">
		<form:input path="id" hidden="true"/><br>
		name <form:input path="name" readonly="true"/><br>
		description <form:input path="description"/><br>
		manufacture <form:input path="manufacture"/><br>
		price <form:input path="price"/><br>
		<form:input path="imageName"  hidden="true"/><br>
		Category
		<form:select path="category.id">
		<form:options items="${categories}" itemValue="id" itemLabel="categoryName" />
		</form:select></br>
		<form:input path="owner.id" hidden="true"/><br>
		<input type="submit" value="Save">
	</form:form>

</body>
</html>