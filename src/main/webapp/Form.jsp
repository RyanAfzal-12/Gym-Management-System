<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
<%@include file="files/bootstrap.jsp" %>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@1,300&display=swap" rel="stylesheet">

<style>
*{
		font-family: 'Bree Serif', serif;
	
}

</style>
</head>
<body>
    <%@include file="files/navbar.jsp" %>

    <body class="bg-light">
        <div class="container mt-5">
            <h2 class="text-center mb-4 ">Please Fill Out the Form</h2>
            <form action="InsertUser" method="post" class="bg-white p-4 rounded shadow">
                <div class="form-group">
                    <label for="Name">Name:</label>
                    <input type="text" class="form-control" id="Name" name="Name" required placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label>Gender:</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="Gender" id="male" value="Male" required placeholder="Select your gender">
                        <label class="form-check-label" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="Gender" id="female" value="Female" required>
                        <label class="form-check-label" for="female">Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="Email">Email:</label>
                    <input type="email" class="form-control" id="Email" name="Email" required placeholder="Enter your Email">
                </div>
                <div class="form-group">
                    <label for="Phone">Phone:</label>
                    <input type="tel" class="form-control" id="Phone" name="Phone" placeholder="Enter your Phone Number">
                </div>
                <div class="form-group">
                    <label for="DOB">DOB:</label>
                    <input type="date" class="form-control" id="DOB" name="DOB" placeholder="Enter your Date of Birth">
                </div>

                <div class="form-group">
                    <label for="Services">Services:</label>
                    <select class="form-control" id="Services" name="Services" required>
                        <option value="" disabled selected>Select a service</option>
                        <option value="PersonalTraining">Personal Training</option>
                        <option value="GroupClasses">Group Classes</option>
                        <option value="NutritionCounselling">Nutrition Counselling</option>
                        <option value="CardiovascularEquipment">Cardiovascular Equipment</option>
                        <option value="StrengthTraining">Strength Training</option>
                        <option value="SaunaAndSpa">Sauna and Spa</option>
                    </select>
                </div>
                <br>

                <button type="submit" class="btn btn-outline-secondary">Submit</button>
            </form>
         
        </div>
    </body>

    </html>

    
