<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new product</title>
<style>
    .error { color: red; font-weight: bold; }
</style>
</head>
<body>

	<form:form method="post" commandName="product" action="add.html" enctype="multipart/form-data">
		Productname <form:input path="name"/>
					<form:errors path="name" class ="error"/><br>
		description    <form:input   path="description"/><br>
		price    <form:input   path="price"/><br>
		manufacture <form:input path="manufacture"/><br>
		<input type="file" name="file" /><br>
		<input type="submit" class="register" value="Save">
	</form:form>

</body>
</html>