<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User Registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>

	<div id="loading">
			<script>
				$(document).ready(function() {
				    $('#loading').fadeOut(3000);
				});
			</script>
	</div>
 	<div class="container">
		<%@include file="authheader.jsp" %>
	</div>
	
	<div class="well lead">New User Registration</div>
	
	<form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
	<div class="form-group row">
           <div class="col-md-4"><label>First Name</label>										 
			  		<input class="form-control" type="text" placeholder="First Name*" required>
			  	</div>
                 		<div class="col-md-4"><label>Middle Name</label>										 
			  		<input class="form-control" type="text" placeholder="Middle Name" required>
			  	</div>
			  	<div class="col-md-4"><label>Last Name / Surname</label>										 
			  		<input class="form-control" type="text" placeholder="Last Name*" required>
			  	</div>
			</div>				

                     <div class="form-group row">
			  
                     	<div class="col-md-4"><label>National Identy Card Number</label>										 
			  		<input class="form-control" type="text" placeholder="NIC Number*" required>
			  	</div>
                 		<div class="col-md-4"><label>Passport Number</label>										 
			  		<input class="form-control" type="text" placeholder="Passport Number" required>
			  	</div>
                 		<div class="col-md-4"><label>Country Issued</label>										 
			  		<input class="form-control" type="text" placeholder="Country" required>
			  	</div>
			</div>

                     <div class="form-group col-md-8">
                       <p><strong>Valid Email Address</strong>(Your username will be your email address)</p>
			  <input class="form-control" type="email" placeholder="Email address*" id="inputEmail3" required>
			</div>
                    	<div class="form-group row">
                     	<div class="col-md-6">
                        <label>Permanent Address</label>
				  <input class="form-control" type="email" placeholder="Address" required>
				</div>
				<div class="col-md-2">
                        <label>City</label>
				  <input class="form-control" type="email" placeholder="City" required>
				</div>
				<div class="col-md-2">
                        <label>Province</label>
				  <input class="form-control" type="email" placeholder="Province" required>
				</div>
				<div class="col-md-2">
				  <label>Country</label>										 
				  <input class="form-control" type="text" placeholder="Country" required>
				</div>
		    </div>

			<div class="form-group row">										 
                     	<div class="col-md-4"><label>Mobile Number</label>										 
			  		<input class="form-control" type="text" placeholder="Mobile Number" required>
			  	</div>
                 		<div class="col-md-4"><label>Home Number / Office Number</label>										 
			  		<input class="form-control" type="text" placeholder="Home Number" required>
			  	</div>				                    		
			</div> 
	</form:form>
</body>
</html>