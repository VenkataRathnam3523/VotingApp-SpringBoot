<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting Details</title>
</head>
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
		height: 300px;
		border: solid green;
	}
	a{
		text-decoration: none;
		color: white;
	}
	#row1{
		background-color: green;
	}
	
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li>Welcome Admin</li>
			<li><a href="">View Admins</a></li>
			<li><a href="">View Voters</a></li>
			<li><a href="">View Candidates</a></li>
			<li><a href="Home.jsp">Log Out</a></li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center><h1>Candidate's Vote Details</h1></center>
		<center>
			<table border="2" cellspacing="3px" cellpadding="5px" align="center">
				<tr id="row1">
					<td></td>
					<td>Candidate1 votes</td>
					<td>Candidate2 votes</td>
					<td>Candidate3 votes</td>
					<td>Candidate4 votes</td>
					<td>Action</td>
				</tr>
				<tr align="center">
					<td id="td">Voters</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td><img alt="img" src="delete.jpg" width="25px" heigth="25px"></td>
				</tr>
				<tr align="center">
					<td id="td">Total Votes</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</center>
	</div>
</body>
</html>