package Matrimoney;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImp implements UserDao {

		@Override
	public boolean addUser(User user) {
		
		String query = "INSERT INTO register (id,fullname, email, password, gender, mobile_no, country, cast, occuption, Education, height, About) VALUES (?,  ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try (Connection connection = DButil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
			   preparedStatement.setString(1, user.getId());
			   
	            preparedStatement.setString(2, user.getFullname());
	            preparedStatement.setString(3,user.getEmail());
	            preparedStatement.setString(4,user.getPassword());
	            preparedStatement.setString(5,user.getGender());
	            preparedStatement.setString(6, user.getMobile_no());
	            preparedStatement.setString(7, user.getCountry());
	            preparedStatement.setString(8, user.getCast());
	            preparedStatement.setString(9, user.getOccuption());
	            preparedStatement.setString(10, user.getEducation());
	            preparedStatement.setString(11, user.getHeight());
	            preparedStatement.setString(12, user.getAbout());
	            
	            int  rows = preparedStatement.executeUpdate();
		
		return rows >0;
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return false;
	}

	
}


