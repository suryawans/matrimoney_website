package Matrimoney;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlets")
public class LoginServlets extends HttpServlet {
	
 public LoginServlets() {
     super();
 }

	


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();

	        

	        try {
	            // Load the MySQL JDBC driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Connect to the database
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimoney", "root",
	                    "tiger");
	            String email = request.getParameter("email");
		        String password = request.getParameter("password");

	            PreparedStatement ps = con.prepareStatement("select * from register where email=? and password=?");
	            ps.setString(1, email);
	            ps.setString(2, password);

	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                // Login successful
	                out.println("<h2>Login successful</h2>");
	                // You can redirect to another page here
	            } else {
	                // Login failed
	                out.println("<h2>Login failed. Invalid email or password.</h2>");
	                // You can redirect back to the login page here
	            }
	        } catch (Exception e) {
	            out.println("Error: " + e);
	        }
	    }
		  

}

    



