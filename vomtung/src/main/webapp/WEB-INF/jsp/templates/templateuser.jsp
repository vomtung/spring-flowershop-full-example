<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="html" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Flower Shop</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.servletContext.contextPath}/resources/user/css/style.css" />
        
    </head>
    <body>

        <div id="wrap">

            <div class="header">
                <div class="logo"><a href="index.html"><img src="${pageContext.servletContext.contextPath}/resources/user/images/logo.gif" alt="" title="" border="0" /></a></div>            
                <div id="menu">
                    <ul>                                                                       
                        <li ${page == 'home' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/index.html">home</a></li>
                        <li ${page == 'aboutus' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/aboutus.html">about us</a></li>
                        <li ${page == 'category' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/category.html">flowers</a></li>
                        <li ${page == 'specials' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/specials.html">specials gifts</a></li>
                        <li ${page == 'myaccount' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/user/myaccount.html">my account</a></li>
                        <li ${page == 'register' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/register.html">register</a></li>
                        <li ${page == 'details' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/details.html">prices</a></li>
                        <li ${page == 'contact' ? 'class="selected"' : ''}><a href="${pageContext.servletContext.contextPath}/template/contact.html">contact</a></li>
                    </ul>
                </div>     


            </div> 


            <div class="center_content">
                <div class="left_content">

                    <tiles:insertAttribute name="content"></tiles:insertAttribute>

                        <div class="clear"></div>
                    </div><!--end of left content-->

                    <div class="right_content">
                        <div class="languages_box">
                            <span class="red">Languages:</span>
                            <a href="#" class="selected"><img src="${pageContext.servletContext.contextPath}/resources/user/images/gb.gif" alt="" title="" border="0" /></a>
                        <a href="#"><img src="${pageContext.servletContext.contextPath}/resources/user/images/fr.gif" alt="" title="" border="0" /></a>
                        <a href="#"><img src="${pageContext.servletContext.contextPath}/resources/user/images/de.gif" alt="" title="" border="0" /></a>
                    </div>
                    <div class="currency">
                        <span class="red">Currency: </span>
                        <a href="#">GBP</a>
                        <a href="#">EUR</a>
                        <a href="#" class="selected">USD</a>
                    </div>


                    <div class="cart">
                        <div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/cart.gif" alt="" title="" /></span>My cart</div>
                        <div class="home_cart_content">
                            3 x items | <span class="red">TOTAL: 100$</span>
                        </div>
                        <a href="<%=request.getContextPath()%>/template/cart.html" class="view_cart">view cart</a>

                    </div>




                    <div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet3.gif" alt="" title="" /></span>About Our Shop</div> 
                    <div class="about">
                        <p>
                            <img src="${pageContext.servletContext.contextPath}/resources/user/images/about.gif" alt="" title="" class="right" />
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
                        </p>

                    </div>

                    <div class="right_box">

                    <div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet4.gif" alt="" title="" /></span>Promotions</div> 

					<c:forEach var="product" items="${promotionProducts}">
                        <div class="new_prod_box">
                            <a href="details.html">${product.name}</a>
                            <div class="new_prod_bg">
                                <span class="new_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/promo_icon.gif" alt="" title="" /></span>
                                <a href="details.html"><img src="image/getimage.html?fileName=${product.imageName }" alt="" title="" class="thumb" border="0" /></a>
                            </div>           
                        </div>
						
					</c:forEach>
                    </div>

                    <div class="right_box">

                        <div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet5.gif" alt="" title="" /></span>Categories</div> 

					<ul class="list">
						<c:forEach var="category" items="${categories}">
							<li><a href="${pageContext.servletContext.contextPath}/category/${category.id}.html">${ category.categoryName}</a></li>
						</c:forEach>
					</ul>
					<div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet6.gif" alt="" title="" /></span>Partners</div> 

                        <ul class="list">
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">flower gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>
                            <li><a href="#">flower gifts</a></li>
                            <li><a href="#">specials</a></li>
                            <li><a href="#">hollidays gifts</a></li>
                            <li><a href="#">accesories</a></li>                              
                        </ul>      

                    </div>         


                </div><!--end of right content-->




                <div class="clear"></div>
            </div><!--end of center content-->


            <div class="footer">
                <div class="left_footer"><img src="${pageContext.servletContext.contextPath}/resources/user/images/footer_logo.gif" alt="" title="" /><br /> <a href="http://csscreme.com/freecsstemplates/" title="free templates"><img src="${pageContext.servletContext.contextPath}/resources/user/images/csscreme.gif" alt="free templates" title="free templates" border="0" /></a></div>
                <div class="right_footer">
                    <a href="#">home</a>
                    <a href="#">about us</a>
                    <a href="#">services</a>
                    <a href="#">privacy policy</a>
                    <a href="#">contact us</a>

                </div>


            </div>


        </div>

    </body>
</html>
