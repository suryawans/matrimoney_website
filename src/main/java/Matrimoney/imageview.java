package Matrimoney;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class imageview  {
	public static void main(String[]args) {
	Connection con=null;
	ResultSet rs=null;
	PreparedStatement ps=null;
	String url="jdbc:mysql://localhost:3306/matrimoney";
	String  user="root";
	String  pwd="tiger";
	String query="SELECT * FROM IMAGE WHERE ID=?";
	Scanner sc=new Scanner(System.in);
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		con=DriverManager.getConnection(url,user,pwd);
	
		ps=con.prepareStatement(query);
		
		System.out.println("enter id");
		int SID=sc.nextInt();
		ps.setInt(1,SID);
		
		rs=ps.executeQuery();
		if(rs.next()) {
			Blob img=rs.getBlob(2);
			byte[] arr=img.getBytes(1, (int) img.length());
			FileOutputStream fos=new FileOutputStream("C:\\Users\\SAM\\biodataimages\\1.pdf");
			fos.write(arr);
			fos.flush();
			fos.close();
			System.out.println("downloaded");
		}
		else {
			System.out.println(" not downloaded");
		}
		
	} catch (ClassNotFoundException | SQLException | IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

    }
	   
	
	




