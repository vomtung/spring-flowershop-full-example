<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet1.gif" alt="" title="" /></span>Featured products</div>

<div class="feat_prod_box">

    <div class="prod_img"><a href="details.html"><img src="${pageContext.servletContext.contextPath}/resources/user/images/prod1.gif" alt="" title="" border="0" /></a></div>

    <div class="prod_det_box">
        <div class="box_top"></div>
        <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.html" class="more">- more details -</a>
            <div class="clear"></div>
        </div>

        <div class="box_bottom"></div>
    </div>    
    <div class="clear"></div>
</div>	            

<div class="feat_prod_box">

    <div class="prod_img"><a href="details.html"><img src="${pageContext.servletContext.contextPath}/resources/user/images/prod2.gif" alt="" title="" border="0" /></a></div>

    <div class="prod_det_box">
        <div class="box_top"></div>
        <div class="box_center">
            <div class="prod_title">Product name</div>
            <p class="details">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
            <a href="details.html" class="more">- more details -</a>
            <div class="clear"></div>
        </div>

        <div class="box_bottom"></div>
    </div>    
    <div class="clear"></div>
</div>      

<div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet2.gif" alt="" title="" /></span>New products</div>            
<div class="new_products">

	<c:forEach var="product" items="${products}">
		<div class="new_prod_box">
			<a href="details.html">${product.name }</a>
			<div class="new_prod_bg">
				<span class="new_icon">
					<img src="${pageContext.servletContext.contextPath}/resources/user/images/new_icon.gif" alt="" title="" />
				</span> 
					<a href="details.html">
						<img src="image/getimage.html?fileName=${product.imageName }" alt="" title="" width="100" height="100" class="thumb" border="0" />
					</a>
			</div>
		</div>
	</c:forEach>
</div> 