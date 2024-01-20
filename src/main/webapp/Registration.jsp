<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<style>
body {
	margin: 0px;
	padding: 0px;
}
nav {
	display: flex;
	justify-content: space-evenly;
	align-items: space-evenly;
	width: 100%;
	height: 50px;
	font-size: 25px;
	font-family: DM Serif Display;
	font-weight: 400;
	background-color:black;
}

nav a {
	text-decoration: none;
	color: white;
}

nav a:hover {
	background-color: #015FC7;
	border-radius: 10px;
	padding: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
}

</style>
</head>
<body>
	<center>
		<div>
			<nav>
		    <a href="Home.jsp">Home</a> <a href="Registration.jsp">Register</a> <a href="">SignIn</a>
	 	    <a href="">Admin SignIn</a> <a href="">About</a>
	        </nav><br><br><br><br>
			<div
				style="width: 98%; height: 550px; margin: 10px 10px 10px 10px;">
				<br>
				<h1>Registration Form</h1>
				<br>
				<form action="signUp">
					FirstName:<input type="text" placeholder="Enter First Name"
						name="firstname" required="required"> <br> <br>
					LasttName:<input type="text" placeholder="Enter Last Name"
						name="lastname" required="required"> <br> <br>
					Date Of Birth:<input type="date" name="dob" required="required">
					<br> <br> Gender:<input type="radio" name="gender"
						value="Male" required="required">Male<input type="radio"
						name="gender" value="Female" required="required"> Female<br>
					<br> Aadhar Number:<input type="number"
						placeholder="Enter Aadhar Number" name="aadhar"
						required="required"> <br> <br> Pan Number:<input
						type="text" placeholder="Enter Pan Number" name="pan"
						required="required"> <br> <br> Email:<input
						type="text" placeholder="Enter Email" name="email"
						required="required"> <br> <br> Mobile No:<input
						type="number" placeholder="Enter Mobile Nuber" name="mobileno"
						required="required"> <br> <br> Address:<input
						type="text" placeholder="Enter Address" name="address"
						required="required"> <br> <br> UserName:<input
						type="text" placeholder="Enter UserName" name="username"
						required="required"> <br> <br> Password:<input
						type="password" placeholder="Enter Password" name="password"
						required="required"> <br> <br> <input
						type="submit" value="signup">
				</form>
			</div>
	</center>
	</div>
	<center>
		<%
				String msg=(String)request.getAttribute("message");
				if(msg!=null)
				{
			%>
				<h2 style="color:green"><%=msg%></h2>
			<%
				}
			%>
	</center>
</body>
</html>