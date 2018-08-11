
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carousel.css">

 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
	





<style>

.carousel 

{
width =100%;
height =5%;
position =sticky-top;
background-color: rgba(0, 0, 0, 0.00);
}

.navbar-default
{
background-color: rgba(0, 0, 0, 0.00);
}

.carousel-indicators {
	bottom: 0;
}

carousel-indicators .active {
	background-color: black;
}

.carousel-indicators li {
	border-color: black;
}

body
{
background-color:powderblue;
height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	
	padding:60px;

}

.thumbnail
{
height:300px;
width:300px;

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
				<li><a href="registeration">registeration</a></li>
				
				</c:if>
				<c:if test="${sessionScope.loggedin}">
				<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
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
					<li><font color="midnightblue" face="calibri" size="3">Welcome :${username}</font>	</li>			
					<li><a href="logout">logout</a></li>
					</c:if>
					<c:if test="${sessionScope.loggedin}">
					<c:if test="${sessionScope.role=='ROLE_USER'}">
					
					<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart">cart</span>
				</a></li>
					</c:if>
					</c:if>
					
					
					
					
					<c:if test="${!sessionScope.loggedin}">
					
					<li><a href="${pageContext.request.contextPath}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>
				</a></li>
			
					
					</c:if>
					
				</div>
				</div>
				
				</nav>


<div class="container">

		<div id="myCarousel" class="carousel slide jumbotron"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="resources/images/img.jpg" alt="sale"
						style="width: 1050px; height: 260px">
					<div class="top-left">
						
					</div>
				</div>

				<div class="item">
					<img src="resources/images/bags.jpg" alt="bags"
						style="width: 1050px; height: 260px">
				</div>

				<div class="item">
					<img src="resources/images/bags2.jpg" alt="dress"
						style="width: 1050px; height: 260px">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
	
	
	<div class="row">
  <div class="col-md-3">
    <div class="thumbnail">
      <a href="resources/images/bag1.jpg">
        <img src="resources/images/imge.jpg"  class="img-rounded" alt="Lights" style="width:100%" >
        <div class="caption">
        <h3 align="center"><b>SHOP DRESS</b></h3>
        <p align="center"> Starting @ Rs999/- </p>
          
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-3">
    <div class="thumbnail">
     <a href="resources/images/imge.jpg">
        <img src="resources/images/bag1.jpg"  class="img-circle" alt="Nature" style="width:100%">
        <div class="caption">
        <h3 align="center"><b>SHOP BAGS</b></h3>
        <p align="center"> Starting @ Rs1999/- </p>
        
         
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-3">
    <div class="thumbnail">
     <a href="resources/images/footwear.jpg">
        <img src="resources/images/footwear.jpg"  class="img-rounded" alt="Fjords" style="width:100%">
        <div class="caption">
        <h3 align="center"><b>SHOP FOOTWEAR</b></h3>
        <p align="center"> Starting @ Rs499/- </p>
     												    
        </div>
      </a>
    </div>
  </div>
  
  <div class="col-md-3">
    <div class="thumbnail">
     <a href="resources/images/rings.jpg">
        <img src="resources/images/rings.jpg"  class="img-circle" alt="Fjords" style="width:100%;height:100%;">
        <div class="caption">
        <h3 align="center"><b>SHOP JEWELLERY</b></h3>
        <p align="center"> Starting @ Rs499/- </p>
     												    
        </div>
      </a>
    </div>
  </div>
</div>
	



</body>
</html>