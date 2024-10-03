<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
     <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@1,300&display=swap" rel="stylesheet">
    
    <%@include file="files/bootstrap.jsp" %>
</head>
<style>
body {
    background-image: url("files/cardios.avif");
    background-repeat: no-repeat;
    background-size: cover;
    margin: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}
#Login-container {
    background: rgba(0, 0, 0, 0.3);
    padding: 20px;
    border-radius: 10px;
    margin-top: 20px;
    color: #fff;
    flex: 1; 
}
footer {
            background-color: #5d686d;
            color: #fff;
            padding: 10px;
            text-align: center;
            display: flex;
            justify-content: space-between; 
            align-items: center;
        }

        .contact-info {
            text-align: left;
            
        }
</style>
<body>
    <%@include file="files/navbar.jsp" %>

    <%
        String loginError=(String)request.getAttribute("error"); 
    %>

    <div id="Login-container">
        <div class="row">
            <div class="col-md-2 col-lg-3 col-1"></div>
                <div class="col-md-8 col-lg-6 col-10 p-3 mt-5">
                    <h1 class="display-6 text-center">
                        Admin Login
                    </h1>
                    <form name="adminLoginForm" action="credentials.jsp" method="post">
                        <input name="form" type="hidden" value="adminLoginForm">
                        <input class="form-control mx-auto mb-4 <%= loginError %> " type="text" name="username" placeholder="Enter Your Name">
                        <input class="form-control mx-auto mb-4 <%= loginError %> " type="password" name="password" placeholder="Enter Your password">
                            <div class="alert alert-danger invalid-feedback" role="alert">
         								Please enter a valid name and email   										
                            </div>
                        <input class="btn btn-outline-secondary d-block mx-auto col-sm-12 col-12 text-bold" type="submit" value="Login">
                    </form>
                </div>
            <div class="col-md-2 col-lg-3 col-1"></div>
        </div>                
    </div>
    <footer>     	
	
<div class="contact-info">
            <p>Contact us: FitFlexPro123@gmail.com</p>
            <p>Phone: +051 5225517</p>
        </div>
        <p>&copy; FitFlex Pro. All rights reserved.</p>
    </footer>    
</body>
</html>
