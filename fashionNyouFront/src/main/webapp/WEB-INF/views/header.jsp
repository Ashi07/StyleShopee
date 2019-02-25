<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">




<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carousel.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="resources/css/all.css"></link> 

<style>
body
{
background-color:powderblue;
height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
padding-top: 70px;
}
</style>


</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">StyleShopee</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="home">home</a></li>
				<c:if test="${!sessionScope.loggedin}">
				<li><a href="aboutUs">aboutUs</a></li>
				<li><a href="contactUs">contact Us</a></li>
				<li><a href="login">login</a></li>
				<li><a href="registeration">Sign-Up</a></li>
				
				</c:if>
				<c:if test="${sessionScope.loggedin}">
				<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
				<li><a href="${pageContext.request.contextPath}/admin">Admin_Home</a></li>
				<li><a href="supplier">supplier</a></li>
				<li><a href="category">category</a></li>
				<li><a href="Product">Product</a></li>
			
				</c:if>
				
				<c:if test="${sessionScope.role=='ROLE_USER'}">
				<li><a href="productDisplay">productDisplay
				</a></li>
				
				</c:if>
				</c:if>
				
				
				</ul>
				
				<div class="nav navbar-nav navbar-right">
					<c:if test="${sessionScope.loggedin}">	
					<li><a><font color="midnightblue" face="calibri" size="3">Welcome : ${username}</font></a>	</li>			
					<li><a href="logout">logout</a></li>
					</c:if>
					<c:if test="${sessionScope.loggedin}">
					<c:if test="${sessionScope.role=='ROLE_USER'}">
					
					<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>
				</a></li>
					</c:if>
					</c:if>
					
					
					
					
					<c:if test="${!sessionScope.loggedin}">
					
					<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart">cart</span>
				</a></li>
			
					
					</c:if>
					
				</div>
				</div>
				
				</nav>


</body>
</html>