<%@page import="com.gov.voter.entity.Voter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Voters</title>
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
		<center><h1><u>ALL VOTER DETAILS</u></h1></center>
		<br>
		<%
			List<Voter> vtrList=(List)request.getAttribute("voterList");
		%>
		<center>
			<table border="2" cellspacing="5px" cellpadding="5px" align="center">
			<tr>
				<th>FIRST NAME</th>
				<th>LAST NAME</th>
				<th>DOB</th>
				<th>GENDER</th>
				<th>AADHAR</th>
				<th>PAN</th>
				<th>EMAIL</th>
				<th>MOBILE NO</th>
				<th>ADDRESS</th>
				<th>USER NAME</th>
				<th>PASSWORD</th>
				<th>ID</th>
				<th>STATUS</th>
			</tr>
		<%
			for(Voter vtr: vtrList)
			{
		%>	
			<tr>
				<td><%=vtr.getFirstname() %></td>
				<td><%=vtr.getLastname() %></td>
				<td><%=vtr.getDob() %></td>
				<td><%=vtr.getGender() %></td>
				<td><%=vtr.getAadhar() %></td>
				<td><%=vtr.getPan() %></td>
				<td><%=vtr.getEmail() %></td>
				<td><%=vtr.getMobileno() %></td>
				<td><%=vtr.getAddress() %></td>
				<td><%=vtr.getUsername() %></td>
				<td><%=vtr.getPassword() %></td>
				<td><%=vtr.getId() %></td>
				<td><%=vtr.getStatus() %></td>
			</tr>
		<%
			}
		%>
		</table>
		</center>
	</div>
</body>
</html>