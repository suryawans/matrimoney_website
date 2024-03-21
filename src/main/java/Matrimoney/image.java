package Matrimoney;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/image")

@MultipartConfig(
	    fileSizeThreshold = 1024 * 1024 * 1,  // 1 MB
	    maxFileSize = 1024 * 1024 * 10,       // 10 MB
	    maxRequestSize = 1024 * 1024 * 20     // 20 MB
	)

public class image extends HttpServlet {
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		    
	        Part filePart = request.getPart("pdfFile");

	        // Get the input stream of the file
	        try (InputStream inputStream = filePart.getInputStream()) {
	        	  Class.forName("com.mysql.cj.jdbc.Driver");
	            try (Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimoney", "root", "tiger")) {
	                // Prepare SQL statement
	                String sql = "INSERT INTO image (image) VALUES (?)";
	                try (PreparedStatement pstmt1 = conn1.prepareStatement(sql)) {
	                    // Set the input stream as a parameter for the SQL statement
	                    pstmt1.setBlob(1, inputStream);
	                    // Execute the SQL statement
	                    pstmt1.executeUpdate();
	                    // Inform the client about successful upload
	                    response.getWriter().println(" uploaded successfully.");
	                } catch (SQLException e) {
	                    // Handle SQL exception
	                    response.getWriter().println("Error in SQL: " + e.getMessage());
	                }
	            } catch (SQLException e) {
	                // Handle database connection exception
	                response.getWriter().println("Error connecting to database: " + e.getMessage());
	            }
	        } catch (IOException | ClassNotFoundException e) {
	            // Handle IO exception
	            response.getWriter().println("Error in file upload: " + e.getMessage());
	        }
	
	 }
	
  
	}


