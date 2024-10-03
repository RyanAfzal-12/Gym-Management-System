<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
<link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
<%@include file="files/bootstrap.jsp" %>
<style>
.font{

	font-family: 'Ubuntu', sans-serif;
	}
	
	body::before {
    content: "";
    background-image: url("files/about.avif");
    background-repeat: no-repeat;
    background-size: cover;
    opacity: 4;
    z-index: -1;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}
.joinNow {
  --width: 150px;
  --timing: 2s;
  border: 0;
  width: var(--width);
  padding-block: 1em;
  color: #fff;
  font-weight: bold;
  font-size: 1em;
  background: rgb(64, 192, 87);
  transition: all 0.2s;
  border-radius: 3px;
}

.joinNow:hover {
  background-image: linear-gradient(to right,  #ff00cc, #00ffcc, #cc00ff, #00ccff 100%);
  animation: var(--timing) linear dance6123 infinite;
  transform: scale(1.1) translateY(-1px);
}

@keyframes dance6123 {
  to {
    background-position: var(--width);
  }
}


	
}

	</style>
</head>
<body>
     <%@include file="files/navbar.jsp" %>


	<%
	if(session.getAttribute("name")==null || session.getAttribute("type") != "user")
	{
		response.sendRedirect("Users.jsp");
	}
%>
	
	<div class="container mt-4">
    <h2 class="text-center mb-4 text-white">Our Services</h2>
    <div class="row">
      <!-- Service 1 -->
      <div class="col-md-4">
        <div class="card text-center ">
         <img src="files/personal Training.avif" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Personal Training</h5>
            <p class="card-text font"> Get personalized training sessions with our experienced trainers to achieve your fitness goals faster.</p>
            <a href="Form.jsp?service=PersonalTraining" class="btn btn-secondary joinNow">Join Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center ">
         <img src="files/group classes.avif" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Group Classes</h5>
            <p class="card-text font">Join our group fitness classes for a fun and motivating workout experience with others friends of same interest.</p>
            <a href="Form.jsp?service=GroupClasses" class="btn btn-secondary joinNow">Join Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center">
         <img src="files/nutrition counselling.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Nutrition Counselling</h5>
            <p class="card-text font">Receive expert advice on nutrition to complement your fitness routine and achieve optimal results.</p>
            <a href="Form.jsp?service=NutritionCounselling" class="btn btn-secondary joinNow">Join Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center">
         <img src="files/cardios.avif" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Cardiovascular Equipment </h5>
           
            <p class="card-text font">Access a variety of top-notch cardiovascular equipment for effective cardio workouts.</p>

            <a href="Form.jsp?service=CardiovascularEquipment" class="btn btn-secondary joinNow">Join Now</a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center">
         <img src="files/strength Training.avif" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Strength Training</h5>
             
           
            <p class="card-text font">Utilize state-of-the-art strength training equipment to build muscle and improve.</p>

            <a href="Form.jsp?service=StrengthTraining" class="btn btn-secondary joinNow">Join Now <a href="Form.jsp"> </a> </a>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card text-center">
         <img src="files/sauna and spa.avif" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Sauna and Spa </h5>
           
            <p class="card-text font">Relax and rejuvenate after your workout with our sauna and spa facilities.</p>


            <a href="Form.jsp?service=Saunaandspa" class="btn btn-secondary joinNow">Join Now</a>
          </div>
        </div>
      </div>
        </div>
      </div>
		

      	<%@include file="files/footer.jsp" %>
      
</body>
</html>