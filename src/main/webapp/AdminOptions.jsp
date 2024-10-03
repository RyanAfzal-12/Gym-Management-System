<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Options</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&display=swap" rel="stylesheet">
	

<style>
body{
background-image: url("files/about.avif");
}
.table-custom {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529; 
            background-color: white; 
        }

        .table-custom th,
        .table-custom td {
            padding: 0.75rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6; 
            text-align: center;
        }

        .table-custom thead th {
            vertical-align: bottom;
            border-bottom: 2px solid #dee2e6; 
            color: grey; 
        }

        
        .btn-custom {
            margin: 2px;
            color: grey; 
        }
         .centered-button {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
        
        *{
	      font-family: 'Bree Serif', serif;

	}
	footer {
            background-color: #5d686d;
            color: #fff;
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: space-between; /* Align items to the start and end */
            align-items: center;
            margin-top:auto;
        }

        .contact-info {
            text-align: left;
            
        }
</style>

<%@include file="files/bootstrap.jsp" %>
</head>
<body>

<%@include file="files/navbar.jsp" %>	

<%
	if(session.getAttribute("name")==null || session.getAttribute("type") != "admin")
	{
		response.sendRedirect("Admin.jsp");
	}
%>
<br>
	
	
  		<a href="EndSession.jsp" class="btn mx-5 btn-danger">Logout</a>
	

</head>
<body>
<br>
<br>
<h1 class="display-3 text-center text-white	">Admin</h1><br>
<%
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", "");
			Statement statement = connection.createStatement();
			ResultSet resultset = statement.executeQuery("select * from users");
			%>

			<table class="table table-custom">
				<thead>
					<tr>
						<th>Name</th>
						<th>Gender</th>
						<th>Email</th>
						<th>DOB</th>					
						<th>Phone</th>
						<th>Services</th>
						<th>Action</th>
												
						
						
					</tr>
				</thead>
				<tbody>
					<% while(resultset.next()){ %>
					<tr>
						<td><%= resultset.getString(1) %></td>
						<td><%= resultset.getString(2) %></td>
						<td><%= resultset.getString(3) %></td>
						<td><%= resultset.getString(4) %></td>
						<td><%= resultset.getString(5) %></td>
						<td><%= resultset.getString(6) %></td>
						
						
		<td>
		<a class="btn btn-danger btn-custom btn-dark" href="Admins?id=<%= resultset.getString(1) %>">Remove</a>
		<a class="btn btn-primary btn-custom btn-info" href="Addrecord.jsp?id=<%= resultset.getString(1) %>">Edit</a></td>

					</tr>
						</tr>
						<% } 
					
					%>
						</tbody>
						</table>
						<div class="centered-button">
						<a class="btn btn-outline-secondary btn-custom btn-lg" href="Addrecord.jsp">Add User</a>
					</div>
					<br>
					<footer>
					<div class="contact-info">
            <p>Contact us: FitFlexPro123@gmail.com</p>
            <p>Phone: +051 5225517</p>
        </div>
        <p>&copy; FitFlex Pro. All rights reserved.</p>
    </footer>    
</body>
</html>
	
</body>
</html>