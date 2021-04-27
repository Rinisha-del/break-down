<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Splendid Signup Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- font files -->
<link href='//fonts.googleapis.com/css?family=Muli:400,300,300italic,400italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Nunito:400,300,700' rel='stylesheet' type='text/css'>
<!-- /font files -->
<!-- css files -->
<link href="css/css_r/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/css_r/style.css" rel='stylesheet' type='text/css' media="all" />
<!-- /css files -->
<style>
body{
background-image: url("images/regback.jpg");
 background-repeat: no-repeat; 
 background-attachment: fixed;
  background-position: center; 
 background-size: 100% ; 
}

</style>
<script type="text/javascript">

function validate(evt) {
	  var theEvent = evt || window.event;

	  // Handle paste
	  if (theEvent.type === 'paste') {
	      key = event.clipboardData.getData('text/plain');
	  } else {
	  // Handle key press
	      var key = theEvent.keyCode || theEvent.which;
	      key = String.fromCharCode(key);
	  }
	  var regex = /[0-9]|\./;
	  if( !regex.test(key) ) {
	    theEvent.returnValue = false;
	    if(theEvent.preventDefault) theEvent.preventDefault();
	  }
	};
</script>

</head>
<body>
					<c:if test="${param.st eq 'err'}">
						<p class="warning">&nbsp;&nbsp;<img src="images/warning.png" width="30" height="30">&nbsp;&nbsp;Incorrect Email or Password</p>
						</c:if>

<h1 class="header-w3ls">Register Here</h1>
<div class="signup-w3ls">	
	<div class="signup-agile1">
		<form action="RegisterControl" method="post">
			<div class="form-control"> 
				<label class="header">Operator Name :</label>
				<input type="text" id="firstname" name="un" placeholder="User Name" title="Please enter your First Name" required="">
			</div>

			<div class="form-control">	
				<label class="header">Email Address :</label>
				<input type="email" id="email" name="em" placeholder="mail@example.com" title="Please enter a valid email" required="">
			</div>

			<div class="form-control">	
				<label class="header">Password :</label>
				<input type="password" class="lock" name="pw" placeholder="password" id="password1" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>

			<div class="form-control">	
				<label class="header">Confirm Password :</label>	
				<input type="password" class="lock" name="confirm-password" placeholder="confirmpassword" id="password2" required="" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
			</div>			
			
			<div class="form-control">
				<label class="header">Phone No:</label>
				<input type="text" id="firstname" MAXLENGTH="10" name="phone" placeholder="Phone No:" title="Please enter your Last Name" required="" onkeypress='validate(event)' >
			</div>
			
 			<div class="form-control"> 
				<label class="header">Address :</label>
				<input type="text" id="firstname" name="address" placeholder="Address" title="Please enter your First Name" required="">
			</div> 

														
			<input type="submit" class="register" value="Register">
		</form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
		</script>
	</div>
	<div class="signup-agile2">
		<h3>Already registered ? Login Here</h3>
		<div class="social-w3ls" style="padding-left:10px;">
			<form action="LoginController1" method="post">
			<div class="form-control"> 
				&nbsp;<label class="header">Email Address :</label>
				<input type="text" id="firstname" name="em" placeholder="Email Address" title="Please enter your First Name" required="">
			</div>
			<br>
			<div class="form-control">
				&nbsp;<label class="header">Password :</label>
				<input type="password" id="lastname" name="pw" placeholder="Password" title="Please enter your Last Name" required="">
			</div>
			<br>
			<input type="submit" class="register" value="Login">
			</form>
		</div>
	</div>
</div>	
<p class="copyright">© 2020. All Rights Reserved <!-- | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a> --></p>
</body>
</html>