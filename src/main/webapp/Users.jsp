<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<%@include file="files/bootstrap.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@1,300&display=swap" rel="stylesheet">
<style>
        body {
            background-image: url("files/darkimage.avif");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        #Login-container {
            background: rgba(0, 0, 0, 0.3);
            /* Adjust the opacity and color as needed */
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
            color: #fff;
        }

          
       footer {
            background-color: #5d686d;
            color: #fff;
            padding: 10px;                 
       		margin-top: auto;
            text-align: center;
            display: flex;
            justify-content: space-between; 
            align-items: center;
        }

        .contact-info {
            text-align: left;
            
        }
     
    </style>
</head>
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
          		  User Login
        		</h1>
					<form name="loginFormUser" action="credentials.jsp" method="post">
						<input name="form" type="hidden" value="userLoginForm">
						<input class="form-control mx-auto mb-4 <%= loginError %> " type="text" name="name" placeholder="Enter Your Name">
						<input class="form-control mx-auto mb-4 <%= loginError %> " type="email" name="email" placeholder="Enter Your Email">
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