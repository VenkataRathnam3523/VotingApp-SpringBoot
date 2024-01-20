<%@page import="com.gov.voter.entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Admins</title>
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
</style>
</head>
<body>
	<div class="nav">
		<ul>
			<li><a href="Admin.jsp">Home</a></li>
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllcandidates">View Candidates</a></li>
			<li><a href="AdminSignIn.jsp">Log Out</a></li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center><h1><u>ALL ADMIN DETAILS</u></h1></center>
		<br>
		<%
			List<Admin> adList=(List)request.getAttribute("allAdmins");
		%>
		<center>
			<table border="2" cellspacing="5px" cellpadding="5px" align="center">
			<tr>
				<th>EMAIL</th>
				<th>MOBILE</th>
				<th>PASSWORD</th>
				<th>USERNAME</th>
			</tr>
		<%
			for(Admin add: adList)
			{
		%>	
			<tr>
				<td><%=add.getEmail() %></td>
				<td><%=add.getPhoneno() %></td>
				<td><%=add.getPassword() %></td>
				<td><%=add.getUsername() %></td>
			</tr>
		<%
			}
		%>
		</table>
		</center>
	</div>
</body>
</html>