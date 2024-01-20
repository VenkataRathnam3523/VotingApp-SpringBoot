<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply For Condidate</title>
<style>
	.nav{
		background-color: black;
		color: white;
		display: block;
		width: 100%;
	}
	.nav ul{
		list-style: none;
		display: inline-flex;
		font-size: 30px;
	}
	.nav ul li{
		padding: 20px;
	}
	li:hover{
		background-color: green;
	}
	.a{
		width: 100%;
		height: 700px;
		border: solid green;
	}
	a{
		text-decoration: none;
		color: white;
	}
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li><a href="ApplyCandidate.jsp">Apply For Candidate</a></li>
			<li><a href="VoterSignIn.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<center>
		<div class="a">
			<center><h1>Candidate Dashboard</h1></center>
			<center><h2>Candidate Application</h2></center>
			<form action="/addCandidate">
				First Name : <input type="text" placeholder="Enter Your First Name" name="firstname" required="required">&nbsp;&nbsp;&nbsp;&nbsp;
				Last Name : <input type="text" placeholder="Enter Your Last Name" name="lastname" required="required">
				<br><br>
				DOB : <input type="date" required="required" name="dob">
				<br><br>
				Age : <input type="number" placeholder="Enter Your Age" name="age">
				<br><br>
				Gender : <input type="radio" name="gender" value="male">Male
				&nbsp;&nbsp;<input type="radio" name="gender" value="female">Female
				<br><br>
				Aadhar : <input type="text" placeholder="Enter Your Aadhar Number" name="aadhar" required="required">
				<br><br>
				Pan : <input type="text" placeholder="Enter Your Pan Number" name="pan" required="required">
				<br><br>
				Email : <input type="text" placeholder="Enter your Email Id" name="email" required="required">
				<br><br>
				Mobile No : <input type="number" placeholder="Enter Your Mobile Number" name="mobileno" required="required">
				<br><br>
				Address : <input type="text" placeholder="Enter Your Address" name="address" required="required">
				<br><br>
				Monthly Income : <input type="text" placeholder="Enter Your Monthly Income" name="monthlyincome">
				<br><br>
				Yearly Income : <input type="text" placeholder="Enter Your Yearly Income" name="yearlyincome">
				<br><br>
				Total Property : <input type="text" placeholder="Enter Your Total Income" name="totalproperty">
				<br><br>
				Criminal Background : <input type="radio" name="criminalbackground" value="yes">yes
				&nbsp;&nbsp;<input type="radio" name="criminalbackground" value="no">no
				<br><br>
				<input type="submit" value="Apply">&nbsp;&nbsp;<input type="reset" value="cancel">
			</form>	
			<%
				String msg=(String)request.getAttribute("status");
				if(msg!=null)
				{
					boolean check=(Boolean)request.getAttribute("check");
					if(check)
					{
			%>
						<h2 style="color:green;"><%=msg %></h2>
			<%
					}
					else
					{
			%>
						<h2 style="color:red;"><%=msg %></h2>
			<% 
					}
				}
			%>		
		</div>
	</center>
</body>
</html>