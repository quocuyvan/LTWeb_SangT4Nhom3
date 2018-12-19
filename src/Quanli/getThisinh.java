package Quanli;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.User;
import project.connectdb.ConnectDatabase;

public class getThisinh {
	public List<User> getDS_TS() {
		List<User> l_thisinh = new ArrayList<User>();

		String sql = "select * from users where role='thisinh'";
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("userName"));
				user.setFullname(rs.getString("fullName"));		
				user.setPassword("1");
				l_thisinh.add(user);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l_thisinh;
	}
}