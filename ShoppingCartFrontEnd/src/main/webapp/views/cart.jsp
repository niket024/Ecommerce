<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Cart Page</title>

<!-- Bootstrap -->
<link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<%@include file="/views/Header.jsp"%>


	<form class="navbar-form navbar-right" role="search">
		<td>Welcome ${loggedInUser}</td> <a href="logout"
			class="btn btn-default">logout </a>
	</form>
	<br>
	<br>

	<div class="container">
		<h1>Add cart</h1>




		<div id="displayCart">
			<c:if test="${displayCart==true}">

				<table class="table table-bordered">
					<tr>
						<th align="left" width="80">Cart ID</th>
						<th align="left" width="120">Product Name</th>
						<th align="left" width="100">Quantity</th>
						<th align="left" width="80">Price</th>

						<th align="left" width="100">Delete from Cart</th>
						<th>Subtotal</th>

					</tr>

					<c:set var="s" value="0"></c:set>





					<c:set var="s" value="0"></c:set>
					<c:forEach items="${cartList}" var="cart">
						<c:set var="s" value="${s+ cart.price * cart.quantity}"></c:set>
						<tr>
							<td align="left">${cart.id}</td>
							<td align="left">${cart.productName}</td>
							<td align="left">${cart.quantity}</td>
							<td align="left">${cart.price}</td>


							<td align="left"><a
								href="<c:url value='cart/remove/${cart.id}'  />">Delete</a></td>



							<td>${cart.price}</td>
						</tr>
					</c:forEach>

					<tr>
						<td colspan="5" align="right">Total Amount</td>
						<td>${s}</td>

					</tr>

				</table>


			</c:if>
		</div>

	</div>
	<c:choose>
		<c:when test="${s==0 }">
			<h4 align="left">${proceedfailed}</h4>

			<a href="#" class="btn btn-primary">proceed</a>
			<a href="productlist" class="btn btn-primary">Continue Shopping</a>

		</c:when>

		<c:otherwise>
			<a href="proceed" class="btn btn-primary">proceed</a>
			<a href="productlist" class="btn btn-primary">Continue Shopping</a>


		</c:otherwise>

	</c:choose>

	<%-- 	<a href="${pageContext.request.contextPath}/productlist" class="btn btn-primary">Continue Shopping</a>
 --%>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%@include file="/views/Footer1.jsp"%>

</body>
</html>