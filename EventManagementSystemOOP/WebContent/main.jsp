<!DOCTYPE>
<html>
	<head>
		<title>Bro-Events</title>
		<link rel="StyleSheet" type="text/css" href="style.css">
		<script src="js/homeScript.js" ></script>
		<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
  font-family: Arial;
  margin: 0;
}

* {
  box-sizing: border-box;
}

img {
  vertical-align: middle;
}

/* Position the image container (needed to position the left and right arrows) */
.container {
  position: relative;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Add a pointer when hovering over the thumbnail images */
.cursor {
  cursor: pointer;
}

/* Next & previous buttons */
.prev,
.next {
  cursor: pointer;
  position: absolute;
  top: 40%;
  width: auto;
  padding: 16px;
  margin-top: -50px;
  color: white;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
  -webkit-user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover,
.next:hover {
  background-color: rgba(0, 0, 0, 0.8);
}

/* Number text (1/3 etc) */
.numbertext {
  color: black;
  font-size: 16px;
  padding: 8px 12px;
  position: relative;
  top: 0;
}

/* Container for image text */
.caption-container {
  text-align: center;
  background-color: #222;
  padding: 2px 16px;
  color: white;
}

.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Six columns side by side */
.column {
  float: left;
  width: 16.66%;
}

/* Add a transparency effect for thumnbail images */
.demo {
  opacity: 0.6;
}

.active,
.demo:hover {
  opacity: 1;
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
		
			<li class="active"><a href="Home.html">HOME</a></li>
			<li><a href="hirunige data okkoma retrieve krana eka">REQUEST BOARD</a></li>
			<li><a href="eventboard.jsp">EVENT BOARD</a></li>
			<li><a href="Navodige okkoma data retrieve karana eka">VENUES</a></li>
			<li><a href="vihangage user registration eka">REGISTER</a></li>
			<li><a href="vihangage login eka">LOG IN</a></li>

		</ul>
		<br/>
		</center>>
		<hr>
		<label><i><h2><marquee direction="right" scrollamount=15>Request Your Needs,
		Publish yor Events,Advertise your Venues</marquee></h2></i></label>
		<br/>

		<br/><br/>
		<center>
		<h3>Bro Events,Event Management System  which helps you to Publish your Events,Advertise your venues and Request your requirements<br/>
			Not only that,You can check new Events,information about upcoming Events,Nearest Venues and full fill your requiremenst.
		</h3>
		</center>
		<br/><br/>
		<br/><br/>


		<h2 style="text-align:center">WHAT WE PROVIDE</h2>

		<br/><br/>
		<br/><br/>

    <center>

<div class="container">
  <div class="mySlides">
    <div class="numbertext">1 / 6</div>
    <img src="images/log.jpeg" style="width:1000px; height: 600px;">
  </div>

  <div class="mySlides">
    <div class="numbertext">2 / 6</div>
    <img src="images/Event.png" style="width:1000px; height: 600px">
  </div>

  <div class="mySlides">
    <div class="numbertext">3 / 6</div>
    <img src="images/wedding.jpg" style="width:1000px; height: 600px;">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">4 / 6</div>
    <img src="images/bd.jpg" style="width:1000px; height: 600px;">
  </div>

  <div class="mySlides">
    <div class="numbertext">5 / 6</div>
    <img src="images/coporate.jpg" style="width:1000px; height: 600px;">
  </div>
    
  <div class="mySlides">
    <div class="numbertext">6 / 6</div>
    <img src="images/cucover.png" style="width:1000px; height: 600px;">
  </div>
    
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

</center>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src="images/log.jpeg" style="width:100%" onclick="currentSlide(1)" alt="MANAGE">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/Event.png" style="width:100%" onclick="currentSlide(2)" alt="EVENTS">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/wedding.jpg" style="width:100%" onclick="currentSlide(3)" alt="REQUEST">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/bd.jpg" style="width:100%" onclick="currentSlide(4)" alt="NEEDS">
    </div>
    <div class="column">
      <img class="demo cursor" src="images/coporate.jpg" style="width:100%" onclick="currentSlide(5)" alt="ADVERTISE ">
    </div>    
    <div class="column">
      <img class="demo cursor" src="images/cucover.png" style="width:100%" onclick="currentSlide(6)" alt="VENUES">
    </div>
  </div>
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");

  if (n > slides.length) {
  	slideIndex = 1
  }

  if (n < 1) {
  	slideIndex = slides.length
  }

  for (i = 0; i < slides.length; i++) 
  {
      slides[i].style.display = "none";
  }

  for (i = 0; i < dots.length; i++)
   {
      dots[i].className = dots[i].className.replace(" active", "");
  }

  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}
</script>
    


<br>
<br><br><br><br><br><br>

	</body>
	
	
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

	
</html>