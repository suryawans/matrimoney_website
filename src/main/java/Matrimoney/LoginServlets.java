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
	           
	        	Class.forName("com.mysql.cj.jdbc.Driver");

	            // Connect to the database
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimoney", "root", "tiger");

	            String email = request.getParameter("email");
	            String password = request.getParameter("password");

	            // Prepare a SQL statement with parameterized query
	            PreparedStatement ps = con.prepareStatement("SELECT * FROM register WHERE email=? AND password=?");
	            ps.setString(1, email);
	            ps.setString(2, password);

	            // Execute the query
	            ResultSet rs = ps.executeQuery();

	            if (rs.next()) {
	                // Login successful
	                HttpSession session = request.getSession();
	                session.setAttribute("email", email); // Store user's email in session for further authentication

	                // Redirect to the home page
	                response.sendRedirect("index1.jsp");
	            } else {
	                // Login failed
	                response.sendRedirect("login.jsp?error=1"); // Redirect back to login page with an error parameter
	            }

	            // Close resources
	            rs.close();
	            ps.close();
	            con.close();
	        } catch (Exception ex) {
	            // Log the exception
	            ex.printStackTrace();
	            out.println(ex.toString());
	            // Redirect to an error page
	            response.sendRedirect("error.jsp");
		  

}

    
	}
}


