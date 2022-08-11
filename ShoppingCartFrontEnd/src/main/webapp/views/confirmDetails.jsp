<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="<c:url value="/resources/admin.css" />">
<link rel="stylesheet"
	href="<c:url value="/resources/css/styles.css" />">

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<%@include file="/views/Header.jsp"%>


<body>
	<div class="container">
		<div class="jumbotron">
			<div class="row">
				<div class="col-md-4">
					<fieldset>
						<legend>Confirm Details</legend>
						<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
						<%-- 			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
 --%>
						<sf:form modelAttribute="user">
							<sf:label path="id">User ID :</sf:label>${user.id}
					<br />
							<br />
							<sf:label path="name"> User Name:</sf:label>${user.name}
					<br />
							<br />
							<sf:label path="password">Password :</sf:label>${user.password}
					<br />
							<br>

							<sf:label path="gender">Gender:</sf:label>${user.gender}
					<br />
							<br />


							<sf:label path="email">Email:</sf:label>${user.email}
					<br />
							<br />
							<sf:label path="mobile">Mobile:</sf:label>${user.mobile}
					<br />
							<br />
							<sf:label path="address">Address :</sf:label>${user.address}
					<br />
							<br />
							<input type="submit" name="_eventId_edit" class="btn btn-primary"
								value="Edit" />
							<input type="submit" class="btn btn-primary"
								value="conform details" name="_eventId_orderConfirmed" />
							<br />
						</sf:form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/views/Footer1.jsp"%>

</body>
</html>