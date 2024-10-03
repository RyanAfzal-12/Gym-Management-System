<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>GymManagementSystem</title>
    <%@include file="files/bootstrap.jsp" %>
</head>
<body>

<%@include file="files/navbar.jsp" %>

<%
try {
	String form = request.getParameter("form");

	if ("userLoginForm".equals(form)) {
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");

	    if (name != null && email != null && !name.isEmpty() && !email.isEmpty()) {
	        // Set session attributes
	        session.setAttribute("name", name);
	        session.setAttribute("type", "user");

	        response.sendRedirect("services.jsp");
	    } else {
	        request.setAttribute("error", "is-invalid");
	        // Forward back to the login page to display the error message
	        RequestDispatcher rd = request.getRequestDispatcher("Users.jsp");
            rd.forward(request, response);
        }

           
    }
	else if (form.equals("adminLoginForm")) // Admin Login Logic
    {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username.equals("admin") && password.equals("pass")) {
            // Set session attributes
            session.setAttribute("name", username);
            session.setAttribute("type", "admin");

            response.sendRedirect("AdminOptions.jsp");
        } else {
            // Set error attribute for invalid input
            request.setAttribute("error", "is-invalid");
            // Forward to the Admin.jsp page
            RequestDispatcher rd = request.getRequestDispatcher("Admin.jsp");
            rd.forward(request, response);
        }
    }
} catch (Exception e) {
    // Handle exceptions here
    e.printStackTrace();
    %>
    <%-- Include necessary files or error messages --%>
    <%@include file="files/navbar.jsp" %>
    <%@include file="files/bootstrap.jsp" %>
    <div class="alert alert-danger m-5 px-3" role="alert">
        <h4 class="alert-heading">Error</h4>
        <p><%= e %></p>
        <hr>
        <p class="mb-0"><a href="index.jsp">-HOME-</a></p>
    </div>
    <%
}
%>

</body>
</html>
