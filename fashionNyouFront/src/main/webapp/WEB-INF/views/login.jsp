<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
body {
	background-color:powderblue;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.form 
{
   
	background-color: rgba(0, 0, 0, 0.00);
}

.center_div
{
 margin: 0 auto;
    width:80%;
}
</style>



</head>
<body>
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

	
	<div class="container">
	
	<div class="form">
		
			
			<form  action="perform_login" method="post">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-sm-offset-4 col-lg-4 col-lg-offset-4">
						<div class="box">
							
								<h2>Login</h2>
									<div class="input-group">
								      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
								      <input id="name" type="text" class="form-control" name="name" placeholder="Username" required/>
								    </div>
								    <br>
								    <div class="input-group">
								      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
								      <input id="Password" type="password" class="form-control" name="password" placeholder="Password" required/>
								    </div>
								<button type="submit" class="btn btn-success">Submit</button>
								<br>
								<br>
								<p>Not a member? <a href="registeration">SignUp Here</a></p>
						
					
						</div>
					</div>
				</div>
			</div>
		</form>
			</div>
			</div>
			
			

</body>
</html>