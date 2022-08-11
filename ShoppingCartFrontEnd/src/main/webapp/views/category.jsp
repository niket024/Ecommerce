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
<title>Category Page</title>

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

	<h1 align="left">Add a Category</h1>

	<c:url var="addAction" value="/category/add"></c:url>

	<form:form action="${addAction}" commandName="category">
	
		<table>
			<tr>
				<td><p style="color:black;"><form:label path="id">
						<spring:message text="ID" />
					</form:label></p></td>
				<c:choose>
					<c:when test="${!empty category.id}">
						<td><p style="color:black;"><form:input path="id" disabled="true" readonly="true" />
						</p></td>
					</c:when>

					<c:otherwise>
						<td><p style="color:black;"><form:input path="id" pattern =".{4,7}" required="true" title="id should contains 4 to 7 characters" /></p></td>
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
				<td><p style="color:black;"><form:label path="description">
						<spring:message text="Description" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="description" required="true" /></p></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${!empty category.name}">
						<input type="submit" class="btn btn-primary"
							value="<spring:message text="Edit Category"/>" />
					</c:if> <c:if test="${empty category.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Category"/>" />
					</c:if></td>
			</tr>
		</table>
		
	</form:form>
	</div>
	</div></div>
	
	
	
	<br>
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
		<div class="container">
	<div class="row">
		<div class="col-md-12">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>
							Category ID
						</th>
						<th>
							Category Name
						</th>
						<th>
							Category Description
						</th>
						<th>
							Edit
						</th>
						<th>
							Delete
						</th>
						
					</tr>
				</thead>
	
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='category/edit/${category.id}' />">Edit</a></td>
					<td><a href="<c:url value='category/remove/${category.id}' />">Delete</a></td>
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