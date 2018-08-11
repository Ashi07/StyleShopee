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
	background-color: powderblue;
	height: 100%;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.form {
	left-align: 100px;
	background-color: rgba(0, 0, 0, 0.00);
}
</style>

<body>

	<div class="container">
		<div class="form">
			<form action="perform_registeration" method="post">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-sm-offset-4 col-lg-4 col-lg-offset-4">
							<div class="box">

								<h2>Sign-Up</h2>
								<div class="input-group">

									<input id="name" type="text" class="form-control" name="name"
										placeholder="Username" required />
								</div>
								<div class="input-group">
									<br> <input id="password" type="text" class="form-control"
										name="password" placeholder="Password" required />
								</div>
								<br>
								<div class="input-group">

									<input id="emailId" type="email" class="form-control"
										name="emailId" placeholder="EmailId" required />
								</div>
								<br>

								<div class="input-group">

									<input id="mobileNo" type="text" class="form-control"
										name="mobileNo" placeholder="MobileNo" required />
								</div>
								<br>

								<div class="input-group">

									<input id="enabled" type="text" class="form-control"
										name="enabled" placeholder="Enabled" required />
								</div>
								<br>


								<div class="input-group">

									<input id="role" type="text" class="form-control" name="role"
										placeholder="Role" required />
								</div>
								<button type="submit" class="btn btn-success">Submit</button>
								<br> <br>
								<p>
									Already a member? <a href="login">Login Here</a>
								</p>
			</form>
		</div>
	</div>




</body>
</html>