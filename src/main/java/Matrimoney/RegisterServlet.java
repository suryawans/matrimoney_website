package Matrimoney;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private UserDao userDao=new UserDaoImp();
   
    public RegisterServlet() {
        super();
            }

	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		res.setContentType("text/html");
		
	String fullname=req.getParameter("fullname");
	String email=req.getParameter("email");
	
	String password=req.getParameter("password");
	String gender=req.getParameter("gender");
	String mobile_no=req.getParameter("mobile_no");
	
	String country=req.getParameter("country");
	String cast=req.getParameter("cast");
	String occuption=req.getParameter("occuption");
	String Education=req.getParameter("Education");
	String height=req.getParameter("height");
	String  About=req.getParameter("About");


 User user=new User();
    
    String id = null;
    user.setId( 1, id);


    user.setFullname (fullname);
    user.setEmail(email);
    user.setPassword(password);
    user.setGender( gender);
    user.setMobile_no( mobile_no);
    user.setCountry( country);
    user.setCast( cast);
    user.setOccuption(occuption);
    user.setEducation(Education);
    user.setHeight(height);
    user.setAbout(About);
   if(userDao.addUser(user)) {
	   res.sendRedirect("Biodata.html? registration=successs");
   }
   else {
	   res.sendRedirect("register.jsp? error1");
   }
   }
  
  
}

    

	


	
	

	
