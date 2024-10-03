<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GymManagementSystem</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&display=swap" rel="stylesheet">
    <%@include file="files/bootstrap.jsp" %>
    <%@include file="files/navbar.jsp" %>
    <style>
        body {
            background-image: url("files/about.avif");
            background-repeat: no-repeat;
            background-size: cover;
            margin: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        
        footer {
            background-color: #5d686d;
            color: #fff;
            padding: 5px;
            text-align: center;
            display: flex;
            justify-content: space-between; 
            align-items: center;
            margin-top: auto; /* Set margin-top to auto to push the footer to the bottom */
        }

        .contact-info {
            text-align: left;
        }

        #font {
            font-family: 'Bree Serif', serif;
        }

        #para {
            font-family: 'Ubuntu', sans-serif;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-md-2 col-lg-3 col-1"></div>
        <div class="col-md-8 col-lg-6 col-10 p-3 mt-5">
            <h1 class="display-6 text-center text-white" id="font">Welcome to Fit Flex Pro</h1>
            <p id="para" class="text-white">We have a variety of fitness programs and classes to suit every fitness level. Our team is here to guide you on your path to you. Join us today and experience the FitFlex difference. Let's work together to achieve your fitness goals and lead a healthier life. We believe that fitness is not just a routine; it's a lifestyle. Embrace the Fit Flex Pro lifestyle, and let us help unlock full potential. Your fitness journey starts here!</p>
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
