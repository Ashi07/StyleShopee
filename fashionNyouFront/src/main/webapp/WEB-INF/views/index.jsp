
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
	 <link rel="stylesheet" href="resources/css/all.css"></link> 
	





<style>

.carousel 
{

    width =100%;height =25%;position =sticky-top;
	
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

body {
	background-image: url("resources/images/c.jpg");
	width: 100%;
	height: 400%;
	min-height: 100%;
	min-width: 1024px;
	/* Set up proportionate scaling */
	/* Set up positioning */
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	/* Center and scale the image nicely */
	background-position: center;
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
	content: "";
	z-index: -5000;
	font-family: Arial, Helvetica, sans-serif;
}


.thumbnail {
	border: none;
	background: none;
	height: 300px;
	width: 300px;
	padding-left:15px;
	padding-right:15px;
}

.flip-card {
  background-color: transparent;
  margin-left:80px;
  width: 350px;
  height: 400px;
  perspective: 1000px;
  
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
  z-index: 2;
}

.flip-card-back {
  background-color: #2980b9;
  color: black;
  transform: rotateY(180deg);
  z-index: 1;
}

.slider
{
margin-top:-450px;
margin-left:600px;
padding-right:0px;
}


.column {
  float: left;
  width: 25%;
  padding: 10px;
}

/* Style the images inside the grid */
.column img {
  opacity: 0.8; 
  cursor: pointer; 
}

.column img:hover {
  opacity: 1;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The expanding image container */
.container2 {
  position: relative;
  display: none;
}

/* Expanding image text */
#imgtext {
  position: absolute;
  bottom: 15px;
  left: 15px;
  color: white;
  font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
  position: absolute;
  top: 10px;
  right: 15px;
  color: white;
  font-size: 35px;
  cursor: pointer;
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
				<li><a href="${pageContext.request.contextPath}/aboutUs">aboutUs</a></li>
				<li><a href="${pageContext.request.contextPath}/contactUs">contact Us</a></li>
				<li><a href="${pageContext.request.contextPath}/login">login</a></li>
				<li><a href="registeration">registeration</a></li>
				
				</c:if>
				<c:if test="${sessionScope.loggedin}">
				<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
				<li><a href="${pageContext.request.contextPath}/admin">Admin_Home</a></li>
				<li><a href="${pageContext.request.contextPath}/supplier">supplier</a></li>
				<li><a href="${pageContext.request.contextPath}/category">category</a></li>
				<li><a href="${pageContext.request.contextPath}/Product">Product</a></li>
			
				</c:if>
				
				<c:if test="${sessionScope.role=='ROLE_USER'}">
				<li><a href="${pageContext.request.contextPath}/productDisplay">productDisplay
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

<br>
<br>
<br>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	
	<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="resources/images/bagss.jpg" alt="Avatar" style="width:350px;height:400px;">
    </div>
    <div class="flip-card-back">
      <img src="resources/images/50.jpg" alt="Avatar" style="width:350px;height:400px;">
    </div>
  </div>
</div>

<br>
<br>
<br>
<br>
<div class="slider">
<div class="w3-content w3-section" style="max-width:400px">
 
  <img class="mySlides w3-animate-fading" src="resources/images/foot.jpg" style="width:150%;height:20%; ">
  <img class="mySlides w3-animate-fading" src="resources/images/f2.jpg" style="width:150%;height:20%; ">
  <img class="mySlides w3-animate-fading" src="resources/images/f3.jpg" style="width:150%;height:20%; ">
  <img class="mySlides w3-animate-fading" src="resources/images/f4.jpg" style="width:150%;height:20%; ">
</div>
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 9000);    
}
</script>
<br>
<br>
<br>
<br>

<div style="text-align:center">
  <h2> Image Gallery</h2>
  <p>Click on the images below to zoom it:</p>
</div>

<!-- The four columns -->
<div class="row">
  <div class="column">
    <img src="resources/images/i1.jpg" alt="Nature" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="resources/images/i2.png" alt="Snow" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="resources/images/i3.jpg" alt="Mountains" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="resources/images/i4.jpg" alt="Lights" style="width:100%" onclick="myFunction(this);">
  </div>
 
</div>

<div class="container2">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<script>
function myFunction(imgs) {
  var expandImg = document.getElementById("expandedImg");
  var imgText = document.getElementById("imgtext");
  expandImg.src = imgs.src;
  imgText.innerHTML = imgs.alt;
  expandImg.parentElement.style.display = "block";
}
</script>



</body>
</html>