<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="/views/Header.jsp"%>
<form class="navbar-form navbar-right" role="search">
								<td>Welcome ${loggedInUser}</td>
								 <a href="logout" class="btn btn-default">logout </a>
							</form>
							<br><br><br>


<h1 style="color:black;">Thanks for shopping</h1>
<p style="color:blue;">${message}<br>
<p style="color:green;">Your Shipping Address is ${shippingAddress}<br>

<p style="color:red;">Total Amount is ${Totalamount}
<br><br><br><br><br><br><br><br><br><br><br>
<%@include file="/views/Footer1.jsp"%>


</body>
</html>