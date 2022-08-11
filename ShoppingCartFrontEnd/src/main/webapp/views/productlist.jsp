<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Page</title>

<!-- Bootstrap -->
<link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<%--  <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" />">Home</a></li>
                        <li><a href="<c:url value="/product/productList/all" />">Products</a></li>
                        <li><a href="<c:url value="/about" />">About Us</a></li>
                                                        <li><a href="<c:url value="/admin1" />">Admin</a></li>
                        
                    </ul>
                 --%>

	<%--                  	<%@include file="/views/Header.jsp"%>
 --%>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-inverse" role="navigation">
				<div class="navbar-header"></div>
				<h2>
					<i><b> <font color="grey">Indigo Interiors</font>
					</b></i>
				</h2>

				<form class="navbar-form navbar-right">
					<div class="form-group">

						<c:if test="${pageContext.request.userPrincipal.name != null}">
							<a>Welcome: ${pageContext.request.userPrincipal.name}</a>
							<a href="<c:url value="/logout" />">Logout</a>

							<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
								<a href="<c:url value="/myCart" />">Cart</a>
							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
								<a href="<c:url value="admin1" />">Admin</a>
							</c:if>

						</c:if>
					</div>
				</form>
				</nav>
			</div>
		</div>
	</div>
	<center>
		<h2>Available products</h2>
	</center>
	<br>
	<br>
	<div class="container">
		<table class="table table-bordered" align="center">
			<tr>

				<td align="left" width="50">Id</td>
				<td align="left" width="50">Description</td>
				<td align="left" width="50">Name</td>
				<td align="left" width="50">Price</td>
				<td align="left" width="50">supplier</td>
				<td align="left" width="50">Order</td>



			</tr>


			<c:forEach var="product" items="${productList}">


				<tr>

					<td>${product.id }</td>
					<td>${product.description}</td>
					<td>${product.name}</td>
					<td>${product.price}</td>
					<td>${product.supplier.name}</td>




					<td><a
						href="${pageContext.request.contextPath}/cart/add/${product.id}">OrderNow</a></td>

				</tr>

			</c:forEach>
		</table>
	</div>

	<%@include file="/views/Footer1.jsp"%>
</body>
</html>
