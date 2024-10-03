<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
 <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

<style>
body{
    background-image: url("files/darkimage.avif");
    background-repeat: no-repeat;
    background-size: cover;
    margin: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
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
        
        
        
       
</style>
     <%@include file="files/navbar.jsp" %>

</head>
<body>

<br><br>

<h1 class="display-3 text-center text-white">Add New Record</h1><br>
<%@ page import="java.sql.*" %>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
<% if (request.getParameter("id") == null) { %>

			<form method="post" action="InsertUser">
				<div class="form-group">
                    <label class="text-white" for="Name">Name:</label>
                    <input type="text" class="form-control" id="Name" name="Name" required placeholder="Enter your name">
                </div>
                <div class="form-group">
                    <label class="text-white">Gender:</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="Gender" id="male" value="Male" required placeholder="Select your gender">
                        <label class="form-check-label text-white" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="Gender" id="female" value="Female" required>
                        <label class="form-check-label text-white" for="female">Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="text-white" for="Email">Email:</label>
                    <input type="email" class="form-control" id="Email" name="Email" required placeholder="Enter your Email">
                </div>
                <div class="form-group">
                    <label class="text-white" for="Phone">Phone:</label>
                    <input type="tel" class="form-control" id="Phone" name="Phone" placeholder="Enter your Phone Number">
                </div>
                <div class="form-group">
                    <label  class="text-white" for="DOB">DOB:</label>
                    <input type="date" class="form-control" id="DOB" name="DOB" placeholder="Enter your Date of Birth">
                </div>

                <div class="form-group">
                    <label class="text-white" for="Services">Services:</label>
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
</div>
</div>
			<% }
			else {
				
			
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/form", "root", "");
				Statement statement = connection.createStatement();
				
				int admin_id = Integer.valueOf(request.getParameter("id"));
				
				ResultSet resultset = statement.executeQuery("select * from users where id="+admin_id);
				while(resultset.next())
				{
				
				%>

			<form method="post" action="Admins">
				<div class="mb-3 mt-3">
					<label for="name" class="form-label">Name:</label> <input
						type="text" class="form-control"
						value="<%= resultset.getString(2) %>" name="Name">
				</div>
				<div class="mb-3">
					<div class="form-group">
                    <label class="text-white">Gender:</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input is-selected" type="radio"  checked name="Gender" id="male" value="Male" required placeholder="Select your gender">
                        <label class="form-check-label text-white" for="male">Male</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="Gender" id="female" value="Female" required>
                        <label class="form-check-label text-white" for="female">Female</label>
                    </div>
                </div>
				</div>
				
				<div class="mb-3">
					<label for="Email" class="form-label">Email:</label> <input
						type="email" class="form-control"
						value="<%= resultset.getString(4) %>" name="Email">
				</div>
				<div class="mb-3">
					<label for="Phone" class="form-label">Phone:</label> <input
						type="number" class="form-control"
						value="<%= resultset.getString(5) %>" name="Phone">
				</div>
				<div class="mb-3">
					<label for="DOB" class="form-label">DOB:</label> <input
						type="date" class="form-control"
						value="<%= resultset.getString(6) %>" name="DOB">
				</div>
				<div class="mb-3">
					<label for="Services" class="form-label">Services:</label> <input
						type="text" class="form-control"
						value="<%= resultset.getString(7) %>" name="Services">
				</div>

				<input type="hidden" name="id_hidden"
					value="<%= resultset.getString(1) %>">
					
					<div class="centered-button">
				<button type="submit" class="btn btn-secondary btn-lg" name="btn_update"
					value="update">Update</button>
</div>
			</form>

			<% }
				} %>
				<br>
				
				
		


</body>
</html>