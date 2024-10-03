<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="bootstrap.jsp" %>
<style>
	*{
	font-family: 'Bree Serif', serif;

	}
	
	</style>
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark bg-secondary">
  <div class="container-fluid px-3">
    <a class="navbar-brand" href="index.jsp"><h2><i class="fas fa-fire-alt  " style="font-size:25px">FitFlex Pro</i></h2></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  
    <div class="collapse navbar-collapse" id="navbarScroll">
      <ul class="navbar-nav ms-auto navbar-nav-scroll" >
        
        <li class="nav-item">
          <a class="btn text-white  " aria-current="page" href="Admin.jsp"><h4>Admin</h4></a>
        </li>
        
        <li class="nav-item">
          <a class="btn text-white  " aria-current="page" href="Users.jsp"><h4>User</h4></a>
        </li>
        <li class="nav-item">
          <a class="btn text-white  " aria-current="page" href="services.jsp"><h4>Services</h4></a>
        </li>
        <li class="nav-item">
          <a class="btn text-white  " aria-current="page" href="AboutUs.jsp"><h4>About Us</h4></a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>
	
</body>
</html>

