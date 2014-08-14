<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<body>
	
	<h1>${message}</h1>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>Welcome : ${pageContext.request.userPrincipal.name} | <a href="${pageContext.request.contextPath}/main/logout.html" > Logout</a></h2>  
	</c:if>
	<a href="${pageContext.request.contextPath}/main/welcome.html">Back</a>
	
</body>
</html>