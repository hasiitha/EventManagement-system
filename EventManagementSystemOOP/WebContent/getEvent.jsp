<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="style.css">
<title>Select your events</title>
<body>
<center>
		<img src="images/logos.png" class="logo" style="width:200px; height: 100px">
		</center>

<link rel="stylesheet" type="text/css" href="style.css">
		<title>ADD YOUR EVENT DETAILS</title>
		<script src="js/registration.js" > </script>
		
		<style>
		div {
  font-size-adjust: 0.58;
}

		</style>
</head>
<body>

		<div id="registration"><img src="images/deli.png" height="100px" width="90px"><h3></h3></div>
<center>
		<ul class="menu">
		
			<li><a href="main.jsp">HOME</a></li>
			<li><a href="Login.jsp">REQUEST BOARD</a></li>
			<li><a href="eventboard.jsp">EVENT BOARD</a></li>
			<li><a href="CustomerRequests.jsp">VENUES</a></li>
			<li><a href="Hotelvenues.jsp">REGISTER</a></li>
			<li><a href="begin.html">LOG IN</a></li>

		</ul>
		<br/>
		</center>>
<center>		

<br></br>
	<h1> <b> SELECT YOUR EVENT</b> </h1><br></br>
	<hr> </hr>
	<br></br>
		<center>
	<div class="login-form">
	<form action = "GetEventServlet"  method = "post">
	
	Event Name:<input type =  "text"   name = "evntname" placeholder ="Eventname" required><br><br><br>
	Password:<input type = "password"    name = "pswd"  placeholder = "Password"   reqiured><br><br><br>
	<center>
	<input type = "submit"  value = "submit" style = "font-size: 170%;"><br><br><br>
	</center>
	
	</form>
	<center>
	<a href="index.jsp"> Add New Event</a><br><br><br><br><br><br><br>
	</center>
	</center>	
	</div>
	</center>
	</body>
	
	
	<br/><br/><br/>
	<footer>
	<div class="footer_main">
	<div class="footer_socialMedia">
		<ul>
			<li type="none"><a href="https://www.facebook.com/" target="blank"><img class="img" src="images/facebook.png"></a></li>
			<li type="none"><a href="https://www.instagram.com/" target="blank"><img class="img" src="images/instagram.png"></a></li>
			<li type="none"><a href="https://twitter.com/" target="blank"><img class="img" src="images/twitter.png"></a></li>
		</ul>
	
	
	
	</div>
	<div>
	
	<div class="footer_menu">
		<ul>
			<li><a class="a1" href="vihangege">Register</a></li>
			<li><a class="a1" href="vihangage">Login</a></li>
			<li><a class="a1" href="main.jsp">Home</a></li>
			<li><a class="a1" href="eventboard.jsp">eventBoard</a></li>
			<li><a class="a1" href="hirunige">Venues</a></li>
			<li><a class="a1" href="hirunige">Requests</a></li>
		</ul>
		
	</div>
	</div>
	<br><br>
	<div class="footer_bottom">
		<p>Bro Events</p> 
		
	</div>
	
	
	</footer>
	
	
</html>