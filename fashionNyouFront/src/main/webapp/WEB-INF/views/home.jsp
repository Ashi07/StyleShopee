<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>


<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<link rel="stylesheet" href="resources/css/carousel.css">


<style>
.navbar
 {
	background-color: rgba(0, 0, 0, 0.00);
	border-color: rgba(0, 0, 0, 0.00);
}

body {
	background-color: black;
	background-image: url("resources/images/ecm.jpg");
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.carousel {width =100%;height =10%;position =sticky-top;
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



.ethnic {
	margin-left: 300px;
	margin-top: 5px;
	margin-bottom: 400px;
}

.row {
	padding: 40px;
	height: 400px;
}

.col {
	padding: 40px;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">StyleShopee</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">WesternWear <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Topwear</a></li>
						<li><a href="#"> Bottomwear</a></li>
						<li><a href="#"> Dresses </a></li>
						<li><a href="#"> jumpsuits N dungrees </a></li>


					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">EthnicWear <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Kurtas n kurtis</a></li>
						<li><a href="#"> Suits</a></li>
						<li><a href="#"> lehngas n Saarees</a></li>
						<li><a href="#"> plazzos n skirts</a></li>
					</ul></li>
					
					
					<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Bags <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#"> Handbags</a></li>
						<li><a href="#"> Sling bags</a></li>
						<li><a href="#"> Clutches</a></li>
						
					</ul></li>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">SIGNUP</a></li>
					<li><a href="#"> LOGIN</a>
					<li><a href="#"> Category</a>
					<li>
					<li><span class="glyphicon glyphicon-cart"></span></li>
				</ul>
		</div>
	</nav>




	<div class="container-fluid">

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
					<img src="resources/images/style9.jpg" alt="Los Angeles"
						style="width: 1050px; height: 260px">
					<div class="top-left">
						<b><i>$tylE$hOpEE </i></b>
					</div>
				</div>

				<div class="item">
					<img src="resources/images/bags.jpg" alt="Chicago"
						style="width: 1050px; height: 260px">
				</div>

				<div class="item">
					<img src="resources/images/bags2.jpg" alt="New york"
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
		<div class="col-md-4">
			<div class="thumbnail1">
				<a href="/Desktop/style2.jpg"> <img
					src="resources/images/style16.jpg" alt="bags" width="100%"
					height="70%">

				</a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail2">
				<a href="/Desktop/style14.jpg"> <img
					src="resources/images/bag.png" " alt="dress" width="100%"
					height="70%">
				</a>

			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail3">
				<a href="/Desktop/style1.jpg"> <img
					src="resources/images/style15.jpg" alt="dress" width="100%"
					height="70%">

				</a>
			</div>
		</div>
	</div>

</body>
</html>
