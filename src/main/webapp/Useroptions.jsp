<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Options</title>
<style>
footer {
            background-color: #5d686d;
            color: #fff;
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: space-between; /* Align items to the start and end */
            align-items: center;
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
// Set session attributes to simulate user login
session.setAttribute("name", "name"); // replace with the desired user name
session.setAttribute("type", "user");

// Redirect to useroptions.jsp after setting session attributes
response.sendRedirect("services.jsp");
%>

	
	<h1 class="mx-5">Logged in as: <%=session.getAttribute("name") %></h1>
	<a href="EndSession.jsp" class="btn mx-5 btn-danger">Logout</a>
	
	<footer>	
<div class="contact-info">
            <p>Contact us: FitFlexPro123@gmail.com</p>
            <p>Phone: +051 5225517</p>
        </div>
        <p>&copy; FitFlex Pro. All rights reserved.</p>
    </footer>  
	
</body>
</html>