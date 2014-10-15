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
	<table>
		<tr>
			<td>
				Productname 
			</td>
			<td>
				<form:input path="name"/><form:errors path="name" class ="error"/>
			</td>
		</tr>
		<tr>
			<td>
				description    
			</td>
			<td>
				<form:input   path="description"/>
			</td>
		</tr>
			<td>
				price    
			</td>
			<td>
				<form:input   path="price"/>
			</td>
		</tr>
			<td>
				manufacture
			</td>
			<td>
				<form:input path="manufacture"/>
			</td>
		</tr>
			<td>
				Category
			</td>
			<td>
				<form:select path="category">
				<form:options items="${categories}" itemValue="id" itemLabel="categoryName" />
				</form:select>
				<form:errors path="category" class ="error"/>
			</td>
		</tr>
			<td>
				Product image
			</td>
			<td>
				<input type="file" name="file" />
				<form:errors path="imageName" class ="error"/>
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" class="register" value="Save"/>
			</td>
		</tr>
	</table>
	</form:form>

</body>
</html>