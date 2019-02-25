
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="footer.jsp"%>
<%@ include file="header.jsp"%>
<link rel="stylesheet" href="resources/css/all.css"></link>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	background-image: url("resources/images/c.jpg");
	width: 100%;
	height: 500%;
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

h1 {
	font: 40px/30px Georgia, Helvetica;
}

.slider {
	margin-top: 80px;
	margin-left: 300px;
	padding-right: 0px;
	padding-bottom: 80px;
	
	
}
h2
{
padding-left:40px;
}



.dyn{
padding-left:40px;
padding-bottom:80px;
}

.fa {

  padding: 30px;
  font-size: 20px;
  width: 20px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
  background: #1E90FF;
  color: white;
}

.fa-twitter {
  background:#1E90FF;
  color: white;
}
.fa-instagram {
  background: #F08080;
  color: white;
}

.icons
{
padding-left:550px;
padding-bottom:80px;

}


</style>

<body>
	<h1>
		<center>Who We Are??</center>
	</h1>
	<p>
		<br> <br>
	<center>
		StyleShopee has seen some remarkable accomplishments over the past 30
		years.<br> With a goal to become an $8 billion company by 2017
		and open 600 stores in the next three years,<br> it will be
		exciting to see the company achieve in three years what it initially
		took 30 years to do.
	</center>
	</p>
	<br>
	<br>

	<h2>
		<center>TimeLine</center>
	</h2>
	<div class="slider">
		<div class="w3-content w3-section" style="max-width: 400px">

			<img class="mySlides w3-animate-fading" src="resources/images/m1.jpg"
				style="width: 200%; height: 20%;"> <img
				class="mySlides w3-animate-fading" src="resources/images/m2.jpg"
				style="width: 200%; height: 20%;"> <img
				class="mySlides w3-animate-fading" src="resources/images/m3.jpg"
				style="width: 200%; height: 20%;"> <img
				class="mySlides w3-animate-fading" src="resources/images/m4.jpg"
				style="width: 200%; height: 20%;">
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
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
			setTimeout(carousel, 5000);
		}
	</script>

	<br>
	<br>
	<h2>Did you know...</h2>
	<div class="dyn"><p1>
		StyleShoppee is the 5th largest specialty retailer in the United
		States. <br> <br> The average StyleShoppee store is 38,000
		square feet, the largest is approximately 162,000 square feet and the
		original Fashion 21 store is only 900 square feet. <br> <br>

		Fashion 21 rung up $700,000 in sales in its first year. The prior
		three businesses that occupied that building failed within the first
		year. <br> <br> Even with the company's tremendous growth,
		it still remains a family owned business.
	</p1>
	</div>
	
	<div class="icons">
	<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-twitter"></a>

</div>
</body>
</html>