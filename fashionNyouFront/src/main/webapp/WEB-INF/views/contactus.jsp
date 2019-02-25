<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="footer.jsp" %>
         <%@ include file="header.jsp" %>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body
{
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


.contact
{
color:black;

padding-top:200px;
}

.text
{
margin-top:10px;
margin-right:5px;
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
  background: linear-gradient(to bottom, #cc33ff 0%, #ff3399 100%);
  color: white;
}

.icons
{
padding-left:570px;
padding-bottom:80px;

}


</style>

</head>


<body>




<div class="contact">
<div class="text">
<h1> <center>Contact Us</center></h1>
<p><center><b>email id:</b> xyz@style.com</center></div></p>
<p><center><b>HelpLine No:</b> 1234567</center></p>
<p><center><b>address:</b>401,StyleCracker,<br>
shalimar building,<br>
meera road ,<br>
delhi-201234</center></p>
</div>
<br>
<br>
</div>

<div class="icons">
	<a href="#" class="fa fa-facebook"></a>
	<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-twitter"></a>
</body>
</html>