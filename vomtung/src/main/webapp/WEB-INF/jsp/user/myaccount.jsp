<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet1.gif" alt="" title="" /></span>My account</div>

<div class="feat_prod_box_details">
    <p class="details">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
    </p>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout" />" > Logout</a></h2>  
	</c:if>
	
	Upload image of product
	<form method="POST" action="../uploadfile/image.html" enctype="multipart/form-data">
 
		<!-- <form:errors path="*" cssClass="errorblock" element="div" /> -->
 
		<input type="file" name="file" />
		<input  name="submit" class="register" type="submit" value="Login"/>
		<!-- <span><form:errors path="file" cssClass="error" /> -->
		</span>
 
	</form>
 
</div>	
