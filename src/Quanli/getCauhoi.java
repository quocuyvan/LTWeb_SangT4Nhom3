package Quanli;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Question;
import project.connectdb.ConnectDatabase;

public class getCauhoi {
	public List<Question> getDS_CH() {
		List<Question> l_cauhoi = new ArrayList<Question>();

		String sql = "select * from questions";
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Question qs = new Question();

				qs.setID(rs.getInt("idQuestions"));
				qs.setQuestname(rs.getString("questName"));		
				qs.setA(rs.getString("a"));	
				qs.setB(rs.getString("b"));	
				qs.setC(rs.getString("c"));	
				qs.setD(rs.getString("d"));	
				qs.setAnswer(rs.getString("result"));
				qs.setType(rs.getString("type"));
				l_cauhoi.add(qs);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l_cauhoi;
	}
}