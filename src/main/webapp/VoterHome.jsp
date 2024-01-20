<%@page import="com.gov.voter.entity.Candidate"%>
<%@page import="java.util.List"%>
<%@page import="com.gov.voter.entity.Voter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Home</title>
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
		height: 450px;
		border: solid green;
	}
	a{
		text-decoration: none;
		color: white;
	}
	#div1{
		width: 50%;
		float: left;
	}
	#div2{
		width: 50%;
		float: left;
	}
</style>
</head>
<body>
	<%
		Voter vtr=(Voter)request.getAttribute("voter");
	%>
	<div class="nav">
		<ul>
			<li><a href="Home.jsp">Home</a></li>
			<li>Welcome <%=vtr.getFirstname() %></li>
			<li><a href="ApplyCandidate.jsp">Apply For Candidate</a></li>
			<li><a href="VoterSignIn.jsp">Logout</a></li>
		</ul>
	</div>
	<br>
	<center>
	<div class="a">
		<h1 style="color:violet;">Voter Dashboard</h1>
			<div id="div1">
				<h2>Voter details:</h2>
				<img alt="img" src="userlog.gif" width="100px" height="100px">
					<table border="2" cellspacing="5px" cellpadding="5px" align="center">
						<tr>
							<td>Id:</td>
							<td><%=vtr.getId() %></td>
						</tr>
						<tr>
							<td>Name:</td>
							<td><%=vtr.getFirstname() %></td>
						</tr>
						<tr>
							<td>Email Id:</td>
							<td><%=vtr.getEmail() %></td>
						</tr>
						<tr>
							<td>Phone no:</td>
							<td><%=vtr.getMobileno() %></td>
						</tr>
						<tr>
							<td>Status:</td>
							<td><%=vtr.getStatus() %></td>
						</tr>
					</table>
		    </div>
		  	<div id="div2">
		  		<center>
		  			<h3 style="color:red;"><%=vtr.getFirstname() %></h3>
		  			<h3>Do Voting</h3>
		  			<%
		  				List<Candidate> candList=(List)request.getAttribute("ListOfCan");
		  				for(Candidate can: candList)
		  				{
		  			%>
		  			<form action="/addVote">
		  				<input type="radio" name="candidate" value="<%=can.getEmail()%>"><%= can.getFirstname()%>
		  				<br><br>
		  			<%
		  				}
		  				if(vtr.getStatus().equalsIgnoreCase("not voted"))
		  				{
		  			%>
		  			<input type="hidden"  name="voter" value="<%=vtr.getEmail() %>">
		  			<input type="submit" value="vote">
		  			</form>
		  			<%
		  				}
		  				String candName=(String)request.getAttribute("name");
		  				if(candName!=null)
		  				{
		  			%>
		  				<h2 style="color:green;"><%=vtr.getFirstname() %> you have voted for <%= candName %></h2>
		  			<%
		  				}
		  			%>
		  		</center>
		  	</div> 
	</div>
</body>

</body>
</html>