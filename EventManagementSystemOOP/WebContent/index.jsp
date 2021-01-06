<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<center>
		<img src="images/logos.png" class="logo" style="width:200px; height: 100px">
</center>
<center>
<div id="registration"><img src="images/deli.png" height="100px" width="90px"><h3></h3></div>

		<ul class="menu">
		
			<li><a href="main.jsp">HOME</a></li>
			<li><a href="hirunige okkoma data retrieve krna eka">REQUEST BOARD</a></li>
			<li class="active"><a href="eventboard.jsp">EVENT BOARD</a></li>
			<li><a href="navodige okkoma data retrive karana eka">VENUES</a></li>
			<li><a href="vihangage registration form eka">REGISTER</a></li>
			<li><a href="vihagage login form eka">LOG IN</a></li>

		</ul>
		<br/>
		<hr></hr>
		<br>
</center>	
<center>
		<div class="form-registration">
		<center>	
			<h1><b>ADD YOUR EVENT DETAILS</b> </h1>
		</center><br><br><br/>
		<center>
			<image src = "images/Event.png" alt = "user" length ="200" width = "200" />
		</center>
		<hr/>
		
		<center>
		<div class="styling">
		<form  method = "post" onsubmit="return checkpassword()" id = "frm1" action ="AddeventServlet">
			Event name :<br/>
			<input type = "text"   placeholder ="First Name" name = "event" required><br>
			Organization name : <br/>
			<input type = "text"  placeholder ="organization " name = "organization" required>
			<br/> <br/>
			Date of Held :<br>
			<input type = "date"  name = "doh"  required>
			<br><br/>
			Email of the Organization <br/>
			<input type = "email" id = "eml" name = "email" required  pattern ="[0-9a-z*&%@]{0,100}+@[a-z0-9]{0,100}+.[a-z]{0,100}" placeholder ="Hasitha@example.com" required>
			<br><br>
			Telephone Number :<br/>
			<input type = "text" id = "mobNumb" name = "phone" pattern = "[0-9]{10}" placeholder ="+94*********" required>
			<br><br>
			Event Password <br>
			<input type = "password" id = "pwrd" name = "password" required >
			<br><br/>
			Re-enter Password <br>
			<input type = "password" id = "cnfrm" required >
			<br><br/>
			<b>Accept privacy and  policy and terms </b>
			<input type = "checkbox" id = "checkbx" onclick = "enableButton()">
			<hr/>
			<br/><br/>
			<div class = "buttns">
			<input type = "submit" value="Submit" id = "sbmt"  style="font-size:150%; color:green;" disabled>
			<br><br>
			<input type ="reset" value="Reset" id ="rest" style="font-size: 150%; color:red">
				<br/><br/>
			</div>
					
			</center>
			</div>
		</form>
			
	<footer>
	<div class="footer_main">
	<div class="footer_socialMedia">
		<ul>
			<li type="none"><a href="https://www.facebook.com/" target="blank"><img class="img" src="images/facebook.png"></a></li>
			<li type="none"><a href="https://www.instagram.com/" target="blank"><img class="img" src="images/instagram.png"></a></li>
			<li type="none"><a href="https://twitter.com/" target="blank"><img class="img" src="images/twitter.png"></a></li>
		</ul>
	</div>
	
	<div class="footer_menu">
		<ul>
			<li><a class="a1" href="vihangege">Register</a></li>
			<li><a class="a1" href="vihangage">Login</a></li>
			<li><a class="a1" href="main.jsp">Home</a></li>
			<li><a class="a1" href="Eventboard.jsp">EventBoard</a></li>
			<li><a class="a1" href="hirunige">Venues</a></li>
			<li><a class="a1" href="hirunige">Requests</a></li>
		</ul>
		
	</div>
	</div>
	<div class="footer_bottom">
		<p>Bro Events</p> 
		
	</div>
	
	
	</footer>
		


		
</center>
</body>
</html>