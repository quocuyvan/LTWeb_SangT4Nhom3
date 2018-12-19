package test;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class test {

    public static boolean findQS(Connection conn, String id_) throws SQLException {
        java.sql.Statement stmt =  conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from questions");
        String id;
        while(rs.next())
        {
        	id=rs.getString("idQuestions");
        	if (id.compareTo(id_)==0)
        	{
                return true;
        	}
        }
        return false;
    }
    public static boolean findTS(Connection conn, String username) throws SQLException {
        java.sql.Statement stmt =  conn.createStatement();
        ResultSet rs = stmt.executeQuery("select * from users");
        String username_;
        while(rs.next())
        {
        	username_=rs.getString("userName");
        	if (username_.compareTo(username)==0)
        	{
                return true;
        	}
        }
        return false;
    }
}

