<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.carousel-caption {
	background: rgba(0, 0, 0, 0.35);
}
</style>
<link href="/ShoppingCartFrontEnd/resourses/css/bootstrap.min.css"
	rel="stylesheet">




<title>Login Page</title>


</head>




<body>

	<%@include file="Header.jsp"%>



	<p style="color: black;">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<img class="third-slide home-image "
					src="<c:url value="resources\Images\bed.jpg"  />" width="1200"
					height="400">
				<div class="carousel-caption">





					<h4 align="left">${addcart}</h4>


					<h1>Login</h1>

					<!-- /login?error=true -->
					<c:if test="${param.error == 'true'}">
						<!-- <div style="color:red;margin:10px 0px;"> -->
          
                Login Failed!!!<br />
                Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                 
         
    </c:if>


					<h3>Enter user name and password:</h3>

					<form name='f'
						action="${pageContext.request.contextPath}/j_spring_security_check"
						method='POST'>
						<table>
							<tr>
								<td>UserName:</td>
								<td><p style="color: black;">
										<input type='text' name='username' value=''></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><p style="color: black;">
										<input type='password' name='password' /></td>
							</tr>
							<tr>
								<td><input class="btn btn-primary pull-right" name="submit"
									type="submit" value="submit" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="Footer1.jsp"%>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>

</body>
</html>