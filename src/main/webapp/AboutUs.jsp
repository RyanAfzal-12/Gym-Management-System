<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>About</title>
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&family=Ubuntu:ital,wght@0,300;1,300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Baloo+2&family=Barlow+Condensed:ital@1&family=Bree+Serif&display=swap" rel="stylesheet">
    <style>
       body {
    margin: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
   
}


        header {
            background-image: url("files/gym.avif");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            text-align: center;
            color: #fff;
            padding: 100px 20px; /* Adjust the padding as needed */
            height: 100vh; /* Set the height to 100% of the viewport height */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        #content-container {
            background: rgba(0, 0, 0, 0.3);
            padding: 20px;
            border-radius: 10px;
            color: #fff;
            flex: 1; /* Allow the container to grow to fill available space */
        }

        .card-title {
            font-family: 'Bree Serif', serif;
        }

        .card-text  {
            font-family: 'Ubuntu', sans-serif;
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
        .book {
  position: relative;
  border-radius: 10px;
  width: 220px;
  height: 300px;
  background-color: whitesmoke;
  -webkit-box-shadow: 1px 1px 12px #000;
  box-shadow: 1px 1px 12px #000;
  -webkit-transform: preserve-3d;
  -ms-transform: preserve-3d;
  transform: preserve-3d;
  -webkit-perspective: 2000px;
  perspective: 2000px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  color: #000;
}

.cover {
  top: 0;
  position: absolute;
  background-color: lightgray;
  width: 100%;
  height: 100%;
  border-radius: 10px;
  cursor: pointer;
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
  -webkit-transform-origin: 0;
  -ms-transform-origin: 0;
  transform-origin: 0;
  -webkit-box-shadow: 1px 1px 12px #000;
  box-shadow: 1px 1px 12px #000;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.book:hover .cover {
  -webkit-transition: all 0.5s;
  transition: all 0.5s;
  -webkit-transform: rotatey(-80deg);
  -ms-transform: rotatey(-80deg);
  transform: rotatey(-80deg);
}
	 .col-md-4 {
        margin-bottom: 25px;
    }
    .card-body {
    background-color: grey;
    padding: 20px;
}
.hey{
	 background: #808080;
}

        <%@include file="files/bootstrap.jsp" %>
    </style>
</head>
<body>
    <%@include file="files/navbar.jsp" %>

    <header>
        
    </header>
    
    <section class="hey">
        <h2 class="text-center mb-4 text-white">About Us</h2>
    

   <div class="container mt-4">
    <div class="row">
        <div class="col-md-4">
    <div class="card text-center book"> <!-- Added the "book" class -->
        <div class="card-body">
            <p class="card-text text-white">Explore the expertise within FitFlex Pro through our Trainer SpotlightsGet an in-depth look at each member of our dedicated team, their fitness philosophies, and personal fitness journeys.</p>
        </div>
        <div class="cover">
            <p>Trainer Spotlights</p>
        </div>
    </div>
</div>

        
    

     

         <div class="col-md-4">
        <div class="card text-center book ">
          <div class="card-body">
            <p class="card-text text-white ">Our mission is to inspire and empower individuals to lead healthier, happier lives. We strive to provide a welcoming and inclusive environment that fosters personal growth and fitness success.r.</p>
          </div>
          <div class="cover">
            <p>Our Mission</p>
        </div>
        </div>
      </div>
      <br>
     

      <div class="col-md-4">
        <div class="card text-center book">
          <div class="card-body">
            <p class="card-text text-white">Discover our cutting-edge facilities equipped with the latest technology and top-of-the-line fitness gear. From cardio and strength training areas to specialized workout zones.</p>
          </div>
          <div class="cover">
            <p>Cutting-Edge Facilities</p>
        </div>
        </div>
        </div>
      

        
      <div class="col-md-4">
        <div class="card text-center book ">
          <div class="card-body">
            <p class="card-text text-white "> Read what our members have to say about their experiences at FitFlex Pro. Hear inspiring stories of transformation, success, and the impact our gym has had on their lives.</p>
          </div>
          <div class="cover">
            <p>What Our Members Say</p>
        </div>
        </div>
      </div>
      
      
      
      <div class="col-md-4">
        <div class="card text-center book ">
          <div class="card-body">
            <p class="card-text text-white">  We believe in giving back to the community. Explore our initiatives, events, and community partnerships that extend beyond fitness. Join us in making a positive impact on the lives of others.</p>
          </div>
          <div class="cover">
            <p>Beyond Fitness</p>
        </div>
        </div>
      </div>
      
      
      
      <div class="col-md-4">
        <div class="card text-center book">
          <div class="card-body">
            <p class="card-text text-white"> Embark on your fitness journey with our New Member Orientation program. Designed to acclimate you to FitFlex Pro, this program introduces you to our facilities.</p>
          </div>
          <div class="cover">
            <p>New Member Orientation</p>
        </div>
        </div>
      </div>
      </div>
      </div>
      <section>
      <footer>
    <div class="contact-info">
            <p>Contact us: FitFlexPro123@gmail.com</p>
            <p>Phone: +051 5225517</p>
        </div>
        <p>&copy; FitFlex Pro. All rights reserved.</p>
    </footer>    
</body>
</html>
