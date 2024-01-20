<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter SignIn</title>
<link rel='stylesheet'
	href='https://cdn.jsdelivr.net/gh/alphardex/aqua.css@master/dist/aqua.min.css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
img {
	width: 30px;
	height: 25px;
}

a {
	color: white;
	text-decoration: none;
	cursor: pionter;
	font-size: 20px;
	font-family: DM Serif Display;
	font-weight: 400;
}

.arrow {
	position:relative;
	position:absolute;
	top:10%;
	left:10%;
}

#can1 {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	background:#000;
	background-image: url(vsignin.png);
	background-size: cover;
	background-size: 60% 100%;
	background-repeat: no-repeat;
	background-position:right;
}

.btn {
	padding: 8px 20px;
	border-radius: 0;
	overflow: hidden;
}

.btn::before {
	position: absolute;
	content: "";
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: linear-gradient(120deg, transparent, #00fffc, transparent);
	transform: translateX(-100%);
	transition: 0.6s;
}

.btn:hover::before {
	transform: translateX(100%);
}

.btn:hover {
	background: transparent;
	box-shadow: 0 0 20px 10px rgba(23, 202, 229, 0.5);
}

.form-input-material {
	--input-default-border-color: white;
	--input-border-bottom-color: white;
}

.form-input-material input {
	color: white;
}

.login-form {
	backdrop-filter: blur(10px);
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 50px 50px;
	color: white;
	margin-right:50% ;
	box-shadow: 0 0.4px 0.4px rgba(255, 255, 255, 0.5), 0 1px 1px
		rgba(255, 255, 255, 0.5), 0 2.1px 2.1px rgba(255, 255, 255, 0.5), 0
		4.4px 4.4px rgba(255, 255, 255, 0.5), 0 12px 12px
		rgba(181, 192, 199, 0.5);
	border-radius: 10px;
}

.login-form h1 {
	margin: 0 0 24px 0;
}

.login-form .form-input-material {
	margin: 12px 0;
}

.login-form .btn {
	width: 100%;
	margin: 18px 0 9px 0;
}
</style>
</head>
<body>
	<div class="arrow">
		<a href="Home.jsp"><img src="/home.gif"> Back To Home
			For SignIn</a>
	</div>
	<div id="can1">
	<form class="login-form" action="voterLogin">
		<h1>SignIn</h1>
		<div class="form-input-material">
			<input type="text" name="email" id="username" placeholder=" "
				autocomplete="off" class="form-control-material" required /> <label
				for="username">Email Id</label>
		</div>
		<div class="form-input-material">
			<input type="password" name="password" id="password" placeholder=" "
				autocomplete="off" class="form-control-material" required /> <label
				for="password">Password</label>
		</div>
		<button type="submit" class="btn btn-primary btn-ghost">
			SignIn</button>
	</form>
	</div>
	<%
	String msg = (String) request.getAttribute("status");
	if (msg != null) {
	%>
	<h2 style="color: red;"><%=msg%></h2>
	<%
	}
	%>
</body>
</html>