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
<title>userhome</title>

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


	<div id="admin">

		<c:if test="${isAdmin==true}">




			<%@ include file="/views/AdminHome.jsp"%>


		</c:if>

		<c:if test="${isAdmin==false}">


			<a href="myCart" class="btn btn-default" class="pull-right">Cart</a>
			<form class="navbar-form navbar-right" role="search">
				<td>Welcome ${loggedInUser}</td> <a href="logout"
					class="btn btn-default">logout </a>
			</form>


			<%@ include file="/views/productlist.jsp"%>

		</c:if>
		<br>
		<br>
		<br>


		<%-- <form class="navbar-form navbar-right" role="search">
								<td>Welcome ${loggedInUser}</td>
								 <a href="logout" class="btn btn-default">logout </a>
							</form>
							<br><br> --%>

		<br>
		<br>
		<br>
		<!-- Carousel
        ================================================== -->

		<br>
		<br>
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img class="first-slide home-image"
						src=<c:url value="resources\Images\pantone.jpg" />
						alt="First slide" width="1350" height="50">
					<div class="container-fluid">
						<div class="carousel-caption">
							<h1>Welcome to FurnitureWorld</h1>
							<p>You can make your place pretty by shopping here...!!!</p>
						</div>
					</div>
				</div>

				<div class="item">
					<img class="second-slide home-image"
						src=<c:url value="resources\Images\chairs.jpg" />
						alt="Second slide" width="1350" height="50">

				</div>
				<div class="item">
					<img class="third-slide home-image "
						src="<c:url value="resources\Images\bed.jpg" />" alt="Third slide"
						width="1350" height="50">

				</div>



			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<!-- /.carousel -->



		<!-- 	
	<div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
        Home Furnitures></a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse">
<div class="panel-body">
							<a href=# >Sofa</a>
						</div>
<div class="panel-body">
				<a href=# >Bed</a>
						</div>
<div class="panel-body">
							<a href=# >Diwans</a>
						</div>
<div class="panel-body">
							<a href=# >Chairs & Stool</a>
						</div>
<div class="panel-body">
							<a href=# >Kitchen</a>
						</div>
<div class="panel-body">
							<a href=# >Doors</a>
						</div>
<div class="panel-body">
							<a href=# >Show Case</a>
						</div>
<div class="panel-body">
							<a href=# >All Types</a>
						</div>
      
    </div>
  </div>
  
    
  	
 
  	
	
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
       Office Furnitures></a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">
							<a href=# >Chairs</a>
						</div>
<div class="panel-body">
				<a href=# >Diwans</a>
						</div>
<div class="panel-body">
							<a href=# >Meeting Room</a>
						</div>
<div class="panel-body">
							<a href=# >Tables</a>
						</div>
<div class="panel-body">
							<a href=# >Cabins</a>
						</div>
<div class="panel-body">
							<a href=# >All Types</a>
						</div>

    </div>
</div>  
  	
	
	

	
	
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
        Luxury Furnitures></a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <div class="panel-body">
							<a href=# >Sofa</a>
						</div>
<div class="panel-body">
				<a href=# >Chairs & Stools</a>
						</div>
<div class="panel-body">
							<a href=# >Diwans</a>
						</div>
<div class="panel-body">
							<a href=# >Luxury Beds</a>
						</div>
<div class="panel-body">
							<a href=# >Dinning Tables</a>
						</div>
  </div>
</div></div>
 -->





		<br>
		<h2>
			<i><center>
					<font color="blue">Make Home Heaven</font>
				</center></i>
		</h2>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="Bootstrap Thumbnail First"
									src="resources\Images\JONATHAN LOUIS PIA SECTIONAL - EMPISTON.jpg"
									width="180" height="50" />
								<div class="caption">
									<h6>JONATHAN LOUIS PIA SECTIONAL - EMPISTON</h6>
									<p>rs.30,000/-</p>
									<p>
										<a class="btn btn-primary"
											href="${pageContext.request.contextPath}/cart/add/PRO001">Add
											Cart</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="Bootstrap Thumbnail Second"
									src="resources\Images\MACKAY DOUBLE RECLINING SOFA WITH POWER - PUTTY.jpg"
									width="110" height="35" />
								<div class="caption">
									<h6>MACKAY DOUBLE RECLINING SOFA WITH POWER - PUTTY</h6>
									<p>rs.50,000/-</p>
									<p>
										<a class="btn btn-primary"
											href="${pageContext.request.contextPath}/cart/add/PRO002">Add
											Cart</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="thumbnail">
								<img alt="Bootstrap Thumbnail Third"
									src="resources\Images\STONE BROOK PUB HEIGHT DINING GROUP.jpg"
									width="125" height="40" />
								<div class="caption">
									<h6>STONE BROOK PUB HEIGHT DINING GROUP</h6>
									<p>rs.45,000/-</p>
									<p>
										<a class="btn btn-primary"
											href="${pageContext.request.contextPath}/cart/add/PRO003">Add
											Cart</a>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail First"
								src="resources\Images\China-wooden-utility-furniture-clothes-cabinets-drawers.jpg"
								width="95" height="50" />
							<div class="caption">
								<h6>
									China-wooden-utility-furniture-clothes-cabinets-drawers</h6>
								<p>rs.25,000/-</p>
								<p>
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/cart/add/PRO004">Add
										Cart</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail Second"
								src="resources\Images\Italian-Furniture-Modern-Made-in-China-YC.jpg"
								width="110" height="35" />
							<div class="caption">
								<h6>Italian-Furniture-Modern-Made-in-China-YC</h6>
								<p>rs.15,000/-</p>
								<p>
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/cart/add/PRO005">Add
										Cart</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="thumbnail">
							<img alt="Bootstrap Thumbnail Third"
								src="resources\Images\Princess-metal-bed-bedroom-furniture.jpg"
								width="135" height="40" />
							<div class="caption">
								<h6>Princess-metal-bed-bedroom-furniture</h6>
								<p>rs.45,000/-</p>
								<p>
									<a class="btn btn-primary"
										href="${pageContext.request.contextPath}/cart/add/PRO006">Add
										Cart</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>




		<!--  	<div class="row">
		<div class="col-md-12" style="background-color: pink"> 
			<h2 class="bg-danger"> -->


		<div class="navbar navbar-inverse">


			<h1>
				<center>
					<i><b><font color="gray"><blink>Feature
									Brands</blink></font> </b></i>
				</center>
			</h1>
		</div>

		<div class="contaner">
			<centre> <img src="resources\Images\restonic.jpg"
				class="img-thumbnail" alt="Cinque Terre" width="130" height="130">
			<img src="resources\Images\kartell.jpg" class="img-thumbnail"
				alt="Cinque Terre" width="204" height="130"> <img
				src="resources\Images\natuzzii.jpg" class="img-thumbnail"
				alt="Cinque Terre" width="150" height="130"> <img
				src="resources\Images\kingsdown.jpg" class="img-thumbnail"
				alt="Cinque Terre" width="204" height="130"> <img
				src="resources\Images\stanley.jpg" class="img-thumbnail"
				alt="Cinque Terre" width="204" height="100"> </centre>
		</div>


		<br>

		<div class="container-fluid">
			<nav class="navbar navbar-inverse">
			<form class="navbar-form navbar-right">

				<a href="#">About us</a> <a href="#">Contact us</a> <a href="#">Facebook</a>


			</form>
			</nav>
		</div>








		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>
</body>
</html>