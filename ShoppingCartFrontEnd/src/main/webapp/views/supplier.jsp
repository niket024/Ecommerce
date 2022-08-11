
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
<title>Supplier Page</title>

<!-- Bootstrap -->
<link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="container">
        <div class="row">
            <div class="col-lg-12">
<!--  <div class="jumbotron jumbotron-billboard">
 --> <img class="third-slide home-image "
					src="<c:url value="resources\Images\bed.jpg"  />"width="900" height="300" >
    <div class="carousel-caption">

	<h3 align="left">Add a Supplier</h3>

	<c:url var="addAction" value="/supplier/add"></c:url>

	<form:form action="${addAction}" commandName="supplier">
		<table>
			<tr>
				<td><p style="color:black;"><form:label path="id">
						<spring:message text="ID" />
					</form:label></p></td>
				<c:choose>
					<c:when test="${!empty supplier.id}">
						<td><p style="color:black;"><form:input path="id" disabled="true" readonly="true" />
						</p></td>
					</c:when>

					<c:otherwise>
						<td><p style="color:black;"><form:input path="id" pattern =".{6,7}" required="true" title="id should contains 6 to 7 characters" /></p></td>
					</c:otherwise>
				</c:choose>
			<tr>
			<form:input path="id" hidden="true"  />
				<td><p style="color:black;"><form:label path="name">
						<spring:message text="Name" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="name" required="true" /></p></td>
			</tr>
			<tr>
				<td><p style="color:black;"><form:label path="address">
						<spring:message text="Address" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="address" required="true" /></p></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty supplier.name}">
						<input type="submit" class="btn btn-primary"
							value="<spring:message text="Edit Supplier"/>" />
					</c:if> <c:if test="${empty supplier.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Supplier"/>" />
					</c:if></td>
			</tr>
		</table>
	</form:form>
	
	</div></div>
	</div>
	<h3>Supplier List</h3>
	<c:if test="${!empty supplierList}">
	
	
	
	
	
	<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>
							Supplier ID
						</th>
						<th>
							Supplier Name
						</th>
						<th>
							Supplier Address
						</th>
						<th>
							Edit
						</th>
						<th>
							Delete
						</th>
						
					</tr>
				</thead>
	

			<c:forEach items="${supplierList}" var="supplier">
				<tr>
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
					<td><a href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table></div></div></div>
	</c:if>
	
	</div>
	
		<%@include file="/views/Footer1.jsp"%>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>
	
</body>
</html>