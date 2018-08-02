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


</head>
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
    left-align:100px;
	background-color: rgba(0, 0, 0, 0.00);
}
</style>

<body>

		<h1>SIGN-UP</h1>
	<div class="form">
		<form class="form-horizontal"
			action="perform_registeration" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="name">Name:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="name" name="name"
						placeholder="Enter username">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="Password">Password:</label>
				<div class="col-sm-5">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Enter password">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="emailId">Email:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="emailId" name="emailId"
						placeholder="Enter EmailID">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="mobileNo">MobileNo:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="mobileNo" name="mobileNo"
						placeholder="Enter Mobile No.">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="Enabled">Enabled:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="enabled" name="enabled"
						placeholder="Enter enabled">
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2" for="role">Role:</label>
				<div class="col-sm-5">
					<input type="text" class="form-control" id="role" name="role"
						placeholder="Enter role">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>

		</form>
	</div>




</body>
</html>