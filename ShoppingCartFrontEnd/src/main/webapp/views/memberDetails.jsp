 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<link rel="stylesheet" href="<c:url value="/resources/admin.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />">
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Member Details</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<%@include file="/views/Header.jsp"%>

<body>

	<div class="container">
	<div class="row">
	<div class="col-md-4">
		<fieldset>
			<legend>Regiser Here</legend>
			<form:form modelAttribute="user">
				<br />
				
			
				 
				
				
				<form:label  path="id">User ID:</form:label>
				<form:input path="id" class="form-control" required="true"  ></form:input>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="name">Name:</form:label>
				<form:input path="name" class="form-control" required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
                <form:label path="username">User Name:</form:label>
				<form:input path="username" class="form-control" required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" class="form-control" required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<form:label path="gender">Gender:</form:label>
				<!-- <label path="gender" class="checkbox-inline"><input type="checkbox" value="String">Male</label>
				<label path="gender" class="checkbox-inline"><input type="checkbox" value="String">Female</label>
 -->
				<form:input path="gender" class="form-control"  required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="email">Email ID:</form:label>
				<form:input path="email" class="form-control" required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="mobile">Mobile:</form:label>
				<form:input path="mobile" class="form-control" required="true" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span style='color:red;'>${err.text}</span>
					</div>
				</c:forEach>


				<br />
				<form:label path="address">Address: </form:label>
				<form:input path="address" class="form-control"  required="true"/>
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
					<input name="_eventId_submit" type="submit" class="btn btn-success" value="Register" />
				<br />
			</form:form>
		</fieldset></div>
		
		
		<!-- <div class="col-md-6">
		
		<div  class="embed-responsive embed-responsive-16by9">
    <video autoplay loop class="embed-responsive-item">
        <source src="http://techslides.com/demos/sample-videos/small.mp4" type="video/mp4" width="1000px" height="1000px">
    </video>  -->
    
    
    
</div>
		
		</div>
		
	</div></div><br><br>
	<%@include file="/views/Footer1.jsp"%>
	
</body>
</html>