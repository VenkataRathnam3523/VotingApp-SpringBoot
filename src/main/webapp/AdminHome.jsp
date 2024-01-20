<%@page import="com.gov.voter.entity.Admin"%>
<%@page import="com.gov.voter.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
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
	<%
		Admin admin=(Admin)request.getAttribute("admin");
	%>
	<div class="nav">
		<ul>
			<li><a href="Admin.jsp">Home</a></li>
			<li>Welcome <%=admin.getUsername() %></li>
			<li><a href="viewAllAdmins">View Admins</a></li>
			<li><a href="viewAllVoters">View Voters</a></li>
			<li><a href="viewAllcandidates">View Candidates</a></li>
			<li><a href="AdminSignIn.jsp">Log Out</a></li>
		</ul>
	</div>
	<br>
	<div class="a">
		<center><h1><u>Admin Dashboard</u></h1></center>
		<%
			List<Candidate> candList=(List)request.getAttribute("listOfCan");
			for(Candidate can: candList)
			{
		%>
				<center><h2><%=can.getFirstname() %>: Total Votes: =<%=can.getVotes() %></h2></center>
		<%
			}
		%>
		
	</div>
</body>
</html>