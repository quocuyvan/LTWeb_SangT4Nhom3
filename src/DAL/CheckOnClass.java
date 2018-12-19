package DAL;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import BEAN.Exam;
import BEAN.User;
import project.connectdb.*;

public class CheckOnClass {
	public boolean Check(String username, int classID) {
		String sql = "select * from userclass where idClass='"+classID+"'";
		boolean check = false;
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				if(rs.getString("userName").equals(username))
				{
					check = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
	}
}