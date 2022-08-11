<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="<c:url value="/resources/admin.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />">


<html>
<head>
<title>Product Page</title>

</head>
<body>
<!-- <video autoplay loop muted poster="screenshot.jpg" id="background">
		<source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4">
</video> -->	




<div class="container">
        <div class="row">
            <div class="col-lg-12">
<!--  <div class="jumbotron jumbotron-billboard">
 --> <img class="third-slide home-image "
					src="<c:url value="resources\Images\bed.jpg"  />"width="900" height="460" >
    <div class="carousel-caption">

	<h3 align="left">Add a Product</h3>
	
	<form:form id="AddNew" method="POST" action="${pageContext.request.contextPath }/product/add" commandName="product" enctype="multipart/form-data">

	

	
	<table>
			<tr>
				<td> <p style="color:black;"><form:label path="id">
						<spring:message text="ID" />
					</form:label></p></td>
				<c:choose>
					<c:when test="${!empty product.id}">
						<td><p style="color:black;"><form:input path="id" disabled="true" readonly="true" />
						</p></td>
					</c:when>

					<c:otherwise>
						<td><p style="color:black;"><form:input path="id" pattern=".{6,7}" required="true"
								title="id should contains 6 to 7 characters" class="form-control"/></p></td>
					</c:otherwise>
				</c:choose>
			<tr>
				<form:input path="id" hidden="true" />
				<td><p style="color:black;"><form:label path="name">
						<spring:message text="Name" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="name" required="true" class="form-control"/></p></td>
			</tr>


			<tr>
				<td><p style="color:black;"><form:label path="price">
						<spring:message text="Price" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="price" pattern="^\d{0,8}(\.\d{1,4})?$"  required="true" class="form-control"/></p></td>
			</tr>

			<tr>
				<td><p style="color:black;"><form:label path="description">
						<spring:message text="Description" />
					</form:label></p></td>
				<td><p style="color:black;"><form:input path="description" required="true" class="form-control"/></p></td>
			</tr>

			<tr>
				<td><p style="color:black;"><form:label path="supplier" >
						<spring:message text="Supplier" />
					</form:label></p></td>
				<td><p style="color:black;"><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" class="form-control"/></p></td>
			</tr>
			<tr>
				<td><p style="color:black;"><form:label path="category">
						<spring:message text="Category" />
					</form:label></p></td>
					
					
					
					
					
				<td><p style="color:black;"><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" class="form-control" /></p></td>
			</tr>
			<tr>
<td><p style="color:black;"><form:label path="image">Image</form:label></p></td> <td><p style="color:black;"><form:input type="file" path="image" /></p></td>
</tr>
			
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.name}">
						<input type="submit" class="btn btn-primary" value="<spring:message text="Edit Product"/>" />
					</c:if> <c:if test="${empty product.name}">
					<br>
						<input type="submit" class="btn btn-primary" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
			
			
		
			
		</table>
	</form:form>
	
</div></div></div></div>


	<h3>Product List</h3>
	<c:if test="${!empty productList}">
		<table class="table table-bordered">
			<tr>
				<th width="80">Product ID</th>
				<th width="120">Product Name</th>
				<th width="200">Product Description</th>
				<th width="80">Price</th>
				<th width="80">Product Category</th>
				<th width="80">Product Supplier</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
					<td><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</div>
		<%@include file="/views/Footer1.jsp"%>
	
	
</body>
</html>