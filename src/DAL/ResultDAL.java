package DAL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import project.connectdb.ConnectDatabase;

public class ResultDAL {
	public boolean AddResult(String username, int idTest, int point) {
		PreparedStatement preparedStatement = null; 
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			String query = "insert into results(userName,idTest,point) values (?,?,?)"; //Insert user details into the table 'USERS' 
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data 
			preparedStatement.setString(1, username); 
			preparedStatement.setLong(2, idTest); 
			preparedStatement.setLong(3, point); 
			preparedStatement.executeUpdate(); 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return true;
	}
	public boolean CheckTested(String username, int idTest) {
		PreparedStatement preparedStatement = null; 
		boolean check= true;
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			String query = "select * from results where userName='" + username + "'and idTest='"+idTest+"'"; //Insert user details into the table 'USERS' 
			preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data 
			
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next())
			{
				//String iVal = rs.getString("userName");
			    check= false;
			    
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return check;
	}
}
