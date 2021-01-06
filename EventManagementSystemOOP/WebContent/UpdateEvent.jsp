<%@page import="com.event.model.Event"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="style.css">
<title>Update Event</title>

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
	<h1> <b> YOUR EVENT DETAILS</b> </h1><br></br>
	<br></br>
		<center>






<% 
Event ev1 = (Event)request.getAttribute("Event");
%> 
  <center>
  <div style = "font-size: 110%;font-family: "Times New Roman", Times, serif;">
 Event Name:<%= ev1.getEvent() %><br><br>
 Event OrganizorName:<%= ev1.getOrganization() %><br><br>
 Date Of Held:<%=ev1.getDate() %><br><br>
 Email:<%= ev1.getEmail() %><br><br>
 phone:<%= ev1.getPhone() %><br>
 
 </div>
					<br><br>
<center>
<hr>


<center>
<form class="login-form" method = "post" onsubmit="return checkpassword()" id = "frm1" action ="UpdateServlet" >
			
			 <h1> UPDATE DETAILS </h1>
			update Event name :<br/>
			<input type = "text" id = "fstame"  placeholder ="First Name" name = "uevent"  value = "<%= ev1.getEvent() %>"  required><br>
			update Organization name : <br/>
			<input type = "text" id = "lstame" placeholder ="organization " name = "uorganization"  value = " <%= ev1.getOrganization() %>" required>
			<br/> <br/>
			update Date of Held :<br>
			<input type = "date" id = "birth" name = "udoh"  value = "<%= ev1.getDate() %> " required>
			<br><br/>
			update Email of the Organization: <br/>
			<input type = "email" id = "eml" name = "uemail"  value = "<%= ev1.getEmail() %>" required>
			<br><br>
			update Telephone Number :<br/>
			<input type = "text" id = "mobNumb" name = "uphone" pattern = "[0-9]{10}"  value = "<%= ev1.getPhone() %>" placeholder ="+94*********" required>
			<br><br>
			update Event Password :<br>
			<input type = "password" id = "pwrd" name = "upassword" value = "<%= ev1.getPassword() %>"required >
			<br><br/>
			 Re-enter Password :<br>
			<input type = "password" id = "cnfrm" value = "<%=ev1.getPassword() %>"required >
			<br><br/>
			<input type = "hidden"  name = "updateid" value = "<%=ev1.getEventID()%>">			
			<br/><br/>
			<div class = "buttns">
			<input type = "submit" value="Apply" id = "sbmt" style = "font-size:100% ;color:green;" >
			<br><br>
			</div>
				<br> <br>	
			
			</div>
		</form>
</center>
		<hr>
	<form method = "post" action = "DeleteEventServlet"> 
	<div style ="color:red;font-size: 150%; "><b> Click on delete to delete your Event</b> </div><br>
	<input type = "hidden"  name = "deleteid" value = "<%=ev1.getEventID()%>">
	<input type = submit value = "Delete" name = "delete" style = "font-size: 250%; color:red;">
		
	
     </form>
		<br><br><br></br></br></br>
		
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
			<li><a class="a1" href="eventboard.jsp">EventBoard</a></li>
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
	
</body>
</html>