<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>ABC Online Banking Log in</title>
	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/css/bootstrap.min.css' />"  rel="stylesheet"></link>
	<!--<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
	<link href="<c:url value='/static/img/favicon.ico' />" rel="shortcut icon"></link>

	<link href="<c:url value='/static/jquery/jquery-ui.css' />"  rel="stylesheet"></link>
	<script src="<c:url value='/static/jquery/jquery-1.12.4.js' />"></script>
	<script src="<c:url value='/static/jquery/jquery-ui.js' />"></script>

	<link href="<c:url value='/static/css/font-awesome.css' />"  rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

	<style type="text/css"> body{background-repeat: no-repeat; background-size: cover; background-attachment: fixed;} </style>
	<style type="text/css">#loading {position: fixed; width: 100%; height: 100vh; background: #fff url('<c:url value='/static/img/loader.gif' />') no-repeat center center; z-index: 9999;}</style>

</head>
<body background="${pageContext.request.contextPath}/static/img/background5.jpg">

		<div id="loading">
			<script>
				$(document).ready(function() {
				    $('#loading').fadeOut(3000);
				});
			</script>
		</div>
	
	    <div class="col-md-4 col-sm-offset-8">
	    	
	    	<button class="btn btn-success">
				<span class="fa-stack fa-lg">
			  		<i class="fa fa-globe fa-stack-2x"></i>
				</span>
			</button>
	    	<button class="btn btn-primary">
				<span class="fa-stack fa-lg">
			  		<i class="fa fa-facebook fa-stack-2x"></i>
				</span>
			</button>
	    	<button class="btn btn-info">
		    	<span class="fa-stack fa-lg">
				  <i class="fa fa-twitter fa-stack-2x"></i>
				</span>
			</button>	
			<button class="btn btn-primary">
				<span class="fa-stack fa-lg">
			  		<i class="fa fa-linkedin fa-stack-2x"></i>
				</span>
			</button>
			<button class="btn btn-danger">
				<span class="fa-stack fa-lg">
			  		<i class="fa fa-google fa-stack-2x"></i>
				</span>
			</button>
			
		</div>

	<br/><br/><br/><br/><br/><br/><br/>
	<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-8">
            <div class="panel panel-primary">
                <div class="panel-heading text-center"> <strong class="size-5">Log In - ABC Online Banking</strong>

                </div>
                <div class="panel-body">
                	<c:url var="loginUrl" value="/login" />
                	<form action="${loginUrl}" method="post" class="form-horizontal">
                	<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>

                        <div class="input-group">
						  <span class="input-group-addon" for="username"><i class="fa fa-envelope-o fa-fw"></i></span>
						  <input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>
						</div>
						<br/>
						
                        <div class="input-group">
						  <span class="input-group-addon" for="password"><i class="fa fa-key fa-fw"></i></span>
						  <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
						</div>
						<br/>
						
						<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />	
						<div class="form-actions col-sm-offset-3 col-sm-9">
								<input type="submit" class="btn btn-success btn-sm" value="Log in">
								<input type="reset" class="btn btn-default btn-sm" value="Reset">
						</div>
                                               
                    	<div class="input-group input-sm">
                          <div class="checkbox">
                            <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>
                            <label></label><a href="passwordreset.html" class="pull-right">Forget Password </a></label>  
                          </div>
                        </div>
                    </form>
                    
                </div>
                <div class="panel-footer panel-primary">Not Registered? <a href="register.html" class="">Register here</a>
                
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>