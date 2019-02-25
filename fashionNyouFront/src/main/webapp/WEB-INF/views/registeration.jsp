<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="header.jsp"%>
 
         
         
<style>
body
{
 background-image: url("resources/images/c.jpg");

  min-height: 150%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container1 {
  padding: 16px;
  margin-top:40px;
  margin-right:180px;
  height:800px;
  width:500px;
  
  
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
h1{

text-shadow:2px 2px black;
}

.box
{
margin-bottom:80px;
margin-left:450px;
}


</style>
</head>
<body>

<br>
<br>
<br>
<br>
<h1><center>Sign-Up</center></h1>
<div class="box">
  <form action="perform_registeration"  method="post" >
  <div class="container1">

 
    
     <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>

    <label for="emailId"><b>EmailId</b></label>
    <input type="text" placeholder="Enter EmaiId" name="emailId" required>

    <label for="password"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    
     <label for="mobileNo"><b>MobileNo</b></label>
    <input type="text" placeholder="Enter MobileNo" name="mobileNo" required>
    
     <label for="enabled"><b>Enabled/Diasabled</b></label>
    <input type="text" placeholder="Enabled or Not?" name="enabled" required>
     
     
     <label for="role"><b>Role</b></label>
    <input type="text" placeholder="User/Admin" name="role" required>
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
<div class="clearfix">
    <button type="submit" class="btn">Sign-Up</button>
    <p1>Already a member?<a href="login" style="color:dodgerblue">Sign-In</a></p1>
    </div>
      </div>
  </form>
</div>

<%@ include file="footer.jsp" %>

</body>

