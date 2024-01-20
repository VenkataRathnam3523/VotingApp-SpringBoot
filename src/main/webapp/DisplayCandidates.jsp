<%@page import="com.gov.voter.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Candidates</title>
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
		<center><h1><u>ALL CANDIDATE DETAILS</u></h1></center>
		<br>
		<%
			List<Candidate> candList=(List)request.getAttribute("allCandidates");
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
				<th>MONTHLY INCOME</th>
				<th>YEARLY INCOME</th>
				<th>TOTAL PROPERTY</th>
				<th>CRIMINAL BACKGROUND</th>
				<th>AGE</th>
				<th>TOTAL VOTES</th>
			</tr>
		<%
			for(Candidate cand: candList)
			{
		%>	
			<tr>
				<td><%=cand.getFirstname() %></td>
				<td><%=cand.getLastname() %></td>
				<td><%=cand.getDob() %></td>
				<td><%=cand.getGender() %></td>
				<td><%=cand.getAadhar() %></td>
				<td><%=cand.getPan() %></td>
				<td><%=cand.getEmail() %></td>
				<td><%=cand.getMobileno() %></td>
				<td><%=cand.getAddress() %></td>
				<td><%=cand.getMonthlyincome() %></td>
				<td><%=cand.getYearlyincome() %></td>
				<td><%=cand.getTotalproperty() %></td>
				<td><%=cand.getCriminalbackground() %></td>
				<td><%=cand.getAge() %></td>
				<td><%=cand.getVotes() %></td>
			</tr>
		<%
			}
		%>
		</table>
		</center>
	</div>
</body>
</html>