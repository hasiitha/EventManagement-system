<%@page import="com.event.model.Event"%>
<%@page import="com.event.service.EventService"%>
<%@page import="com.event.service.EventServiceImpl"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="StyleSheet" type="text/css" href="style.css">
<title>EVENT BOARD</title>
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
			<li class="active"><a href="eventboard.jsp">EVENT BOARD</a></li>
			<li><a href="CustomerRequests.jsp">VENUES</a></li>
			<li><a href="Hotelvenues.jsp">REGISTER</a></li>
			<li><a href="begin.html">LOG IN</a></li>

		</ul>
		<br/>
</center>>		
<center>		
<table style ="font-size: 150%;">
<br></br>
	<h1> <b> EVENT BOARD</b> </h1><br></br>
	<hr> </hr>
	<br></br>
<%
EventService serv = new EventServiceImpl();
ArrayList<Event> list = serv.getAllEvents();

for(Event e :list){
%>



<center>    
 <tr><td><img src="images/Event.png" height="100px" width="90px"><br></td></tr>
 <center>
 
 <td><h2><b><%= e.getEvent() %></b></h2></td> <td></tr>
 <tr><h3> <td><center>Organized by: <%= e.getOrganization() %></h3></td></tr>
 <tr> <h3><td><center><b>on: <%=e.getDate() %></b></h3></td>   </tr>
 <tr><h3> <td><center>contact us: <%= e.getEmail() %></h3></td>   </tr>
 <tr> <h3><td><center><%= e.getPhone() %></h3></td>   </tr>
 </div>
<tr><td> <hr></hr><br></br></td></tr>

<%
}
%>
</table>
<center>
	<a href="index.jsp" class="btton">ADD EVENT</a>
	<a href="getEvent.jsp" class="bton">UPDATE OR DELETE</a>

<br><br><br><br><br><br><br><br><br><br>
</center>
<center>
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
			<li><a class="a1" href="eventboard.jsp">EventBoard</a></li>
			<li><a class="a1" href="hirunige">Venues</a></li>
			<li><a class="a1" href="hirunige">Requests</a></li>
		</ul>
		
	</div>
	</div>
	<div class="footer_bottom">
		<p>Bro Events</p> 
		
	</div>
	
	
	</footer>
</body>
</html>