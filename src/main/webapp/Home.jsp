<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style type="text/css">
body {
	width: 1440px;
	height: 700px;
	padding: 0%;
	margin: 0%;
	background:#000;
}

img {
	width: 690px;
	height: 800px;
	flex-shrink: 0;
	background-image: lightgray 50%/cover no-repeat;
}

.quote1 {
	color: white;
	font-size: 48px;
	font-family: DM Serif Display;
	font-weight: 350;
	word-wrap: break-word;
	position: absolute;
	top: 35%;
	padding-left: 55%;
}

.quote2 {
	color: violet;
	font-size: 99px;
	font-family: DM Serif Display;
	font-weight: 400;
	word-wrap: break-word;
	padding-left: 60%;
	position: absolute;
	bottom: 45%;
}

nav {
	display: flex;
	justify-content: space-evenly;
	align-items: space-evenly;
	width: 920px;
	height: 40px;
	margin-left: 40%;
	position: absolute;
	top: 20px;
	font-size: 25px;
	font-family: DM Serif Display;
	font-weight: 400;
}

nav a {
	text-decoration: none;
	color: white;
}

nav a:hover {
	background-color: violet;
	border-radius: 10px;
	padding: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<img src="/votehome.jpg" />
	<div class="quote1">
		Be a part of decision<br />
	</div>
	<div class="quote2">Vote Today</div>
	<nav>
		<a >Home</a>
		 <a href="Registration.jsp">Register</a>
		  <a href="SignIn.jsp">SignIn</a>
		<a href="AdminSignIn.jsp">Admin SignIn</a>
		 <a href="">About</a>
	</nav>
</body>
</html>