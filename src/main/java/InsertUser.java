import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/InsertUser")
public class InsertUser extends HttpServlet {

    protected void service (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Name = request.getParameter("Name");
        String Gender = request.getParameter("Gender");
        String Email = request.getParameter("Email");
        String Phone = request.getParameter("Phone");
        String DOB = request.getParameter("DOB");
        String Services = request.getParameter("Services");

        // JDBC database connection details
        try {
            String url = "jdbc:mysql://localhost:3306/form";
            String username = "root";
            String password = "";

            Class.forName("com.mysql.cj.jdbc.Driver");
            
            try (Connection connection = DriverManager.getConnection(url, username, password);
                 PreparedStatement statement = connection.prepareStatement(
                         "INSERT INTO users (Name, Gender, Email, Phone, DOB, Services) VALUES (?, ?, ?, ?, ?, ?)")) {
                
                statement.setString(1, Name);
                statement.setString(2, Gender);
                statement.setString(3, Email);
                statement.setString(4, Phone);
                statement.setString(5, DOB);
                statement.setString(6, Services);
                
                statement.executeUpdate();
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        // Redirect to form.jsp after successful submission
        response.sendRedirect("services.jsp");
    }
}
