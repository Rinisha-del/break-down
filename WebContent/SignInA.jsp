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


</head>
<body>
<h1 class="header-w3ls">Admin Login</h1>
<!-- <div class="signup-w3ls">	 -->
	<div class="signup-agile2">
		<h3>Login Here</h3>
		<div class="social-w3ls" style="padding-left:10px;"><center>
			<form action="LoginController1" method="post">
			<div class="form-control"> 
				&nbsp;<label class="header">User Name :</label>
				<input type="text" id="firstname" name="em" placeholder="User Name" title="Please enter your First Name" required="">
			</div>
			<br>
			
			<div class="form-control">
				&nbsp;<label class="header">Password :</label>
				<input type="password" id="lastname" name="pw" placeholder="Password" title="Please enter your Last Name" required="">
			</div>
			<br>

			<input type="submit" class="register" value="Login">
			</form>
			</center>
		</div>
	</div>

<!-- <p class="copyright">© 2020. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">W3layouts</a></p>
 --></body>
</html>