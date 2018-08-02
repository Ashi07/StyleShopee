<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<style>
body {
	background-image: url("resources/images/bg.jpg");
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
	<h1>LOGIN</h1>
	<div class="form">
		<form class="form-horizontal"
			action="perform_login"  method="post" >
			<div class="form-group">
				
				<div class="col-sm-5">
					Username<input type="text" class="form-control" id="name" name="name"
						 placeholder="Enter username">
				</div>
			</div>

			<div class="form-group">
				
				<div class="col-sm-5">
					password<input type="password" class="form-control" id="password" name="password"
					 placeholder="Enter password">
				</div>
				
				<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit"  class="btn btn-default">LOGIN</button>
				</div>
			</div>
			</div>
			</form>
			</div>
			</div>
			
			

</body>
</html>