import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Admins")
public class Admins extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String dbURL = "jdbc:mysql://localhost:3306/form";
			String username = "root";
			String password = "";
			Connection con = DriverManager.getConnection(dbURL, username, password);
			
		

			if (req.getParameter("id") == null && req.getParameter("btn_save")!=null && req.getParameter("btn_save").equals("save")) {

				

		        String Name = req.getParameter("Name");
		        String Gender = req.getParameter("Gender");
		        String Email = req.getParameter("Email");
		        String Phone = req.getParameter("Phone");
		        String DOB = req.getParameter("DOB");
		        String Services = req.getParameter("Services");
					
								
				
				String qry_insert = "INSERT INTO users (Name, Gender,Email,Phone,DOB,Services) VALUES (?, ?, ?,?, ?, ?)";
				PreparedStatement statement = con.prepareStatement(qry_insert);

                statement.setString(1, Name);
                statement.setString(2, Gender);
                statement.setString(3, Email);
                statement.setString(4, Phone);
                statement.setString(5, DOB);
                statement.setString(6, Services);

				int rowsInserted = statement.executeUpdate();
				if (rowsInserted > 0) {

					RequestDispatcher rd = req.getRequestDispatcher("/AdminOptions.jsp");
					rd.include(req, resp);

				} else {

					resp.setContentType("text/html");
					PrintWriter pw = resp.getWriter();
					pw.print("<script>alert('Error in adding admin')</script>");
					RequestDispatcher rd = req.getRequestDispatcher("/Addrecord.jsp");
					rd.include(req, resp);
				}
			}
			
			else {
				if (req.getParameter("btn_update")!=null && req.getParameter("btn_update").equals("update"))
				{
					
					int id = Integer.valueOf(req.getParameter("id_hidden"));
					
					   String Name = req.getParameter("Name");
				        String Gender = req.getParameter("Gender");
				        String Email = req.getParameter("Email");
				        String Phone = req.getParameter("Phone");
				        String DOB = req.getParameter("DOB");
				        String Services = req.getParameter("Services");
					
					String update_qry="update users set Name=?, Gender=?, Email=?, Phone=? , DOB=?,Services=? where id=?";
					
					PreparedStatement statement = con.prepareStatement(update_qry);
					   statement.setString(1, Name);
		                statement.setString(2, Gender);
		                statement.setString(3, Email);
		                statement.setString(4, Phone);
		                statement.setString(5, DOB);
		                statement.setString(6, Services);
					   statement.setInt(7, id);
					int rs = statement.executeUpdate();
					if (rs > 0) {
						resp.sendRedirect(req.getContextPath() + "/AdminOptions.jsp");
					}
					
				}
				
				
				else {
					int del_id = Integer.valueOf(req.getParameter("id"));
					Statement statement = con.createStatement();

					int rs = statement.executeUpdate("delete from users where id=" + del_id);
					if (rs > 0) {
						resp.sendRedirect(req.getContextPath() + "/AdminOptions.jsp");
					}

				}
			}

		} catch (SQLException | ClassNotFoundException e) {

			e.printStackTrace();
		}
	}
}