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
<title>AdminHome</title>

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

	<%@include file="/views/Header.jsp"%>


<div class="container-fluid">
						<nav class="navbar navbar-inverse" role="navigation">

<form class="navbar-form navbar-left">
	<div id="adminHome">
	    <a href="manageCategories" class="btn btn-default">Manage Categories</a> &nbsp; &nbsp;
		<a href="manageSuppliers" class="btn btn-default">Manage Suppliers</a>  &nbsp; &nbsp; 
		<a href="manageProducts" class="btn btn-default">Manage Products</a> &nbsp; &nbsp;
		Welcome ${loggedInUser} <a href="logout" class="btn btn-default pull-right" >logout </a> 
		

	</div>
	</form>
	</nav>
	</div>
	
<%--  	<%@include file="/views/Footer1.jsp"%>
 --%> 

</body>
</html>