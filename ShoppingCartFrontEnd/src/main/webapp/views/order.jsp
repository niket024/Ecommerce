
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>

<head>


<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    

    <!-- Bootstrap -->
    <link href="/ShoppingCartFrontEnd/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
<body>
<%@include file="/views/Header.jsp"%>
								 <a href="logout" class="btn btn-default pull-right">logout </a><br><br>

    <c:url var="action" value="/order"></c:url>

	<form:form action="${action}" method="post">
		  <div class="container"> 
  <div class="jumbotron"> <br><br>
  <div class="col-lg-8"></div>
   
  <form role="form">
  <div class="container">
  <div class="col-lg-6">
  
  <div class="form-group">
  <label for="name">Username</label><br>
  <input type="text" class="form-control" id="name" name="name" placeholder="Enter username" required="true">
  </div><br>
  
 
  <div class="form-group">
  <label for="billingAddress">Billing Address</label><br>
  <input type="text" class="form-control" id="billingAddress" name="billingAddress" placeholder="Enter billing address" required="true">
  </div><br>
  
  <div class="form-group">
  <label for="shippingAddress">Shipping Address</label><br>
  <input type="text" class="form-control" id="shippingAddress" name="shippingAddress" placeholder="Enter shipping address" required="true">
  </div><br>
  
   <div class="form-group">
  <label for=" pay_type">Payment Type</label><br>
  <input type="text" class="form-control" id="pay_type" name="pay_type" placeholder="Enter payment type" required="true">
  </div><br>
 
  
   
  
  <button type="submit" class="btn btn-primary btn-block">Place Order</button>
  <br><br>
  
  </div>
  </div>
  </form>
 </div> 
 </div>
 





	</form:form>

	



<br><br>



 <%@include file="Footer.jsp" %>










 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/ShoppingCartFrontEnd/resources/js/bootstrap.min.js"></script>


</body>
</html>