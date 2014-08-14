<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="title"><span class="title_icon"><img src="${pageContext.servletContext.contextPath}/resources/user/images/bullet1.gif" alt="" title="" /></span>Sign in</div>

<div class="feat_prod_box_details">
    <p class="details">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.
    </p>

    <div class="contact_form">
        <div class="form_subtitle">login into your account</div>
        ${msg }
        <form name='loginForm' action="../j_spring_security_check" method='POST'>
			<table>
				<tr class="form_row">
					<td class="contact">User:</td>
					<td><input type='text' name='username' class="contact_input"></td>
				</tr>
				<tr class="form_row">
					<td class="contact">Password:</td>
					<td><input type='password' name='password' class="contact_input"/></td>
				</tr>
				
				<tr >
					<td></td>
					<td>
						<input  name="submit" class="register" type="submit" value="Login"/>
					</td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form> 

    </div>  

</div>	
