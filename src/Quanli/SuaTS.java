package Quanli;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.User;
import project.connectdb.ConnectDatabase;


@WebServlet("/edit_ts")
public class SuaTS extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaTS() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub




        RequestDispatcher dispatcher //
        = this.getServletContext().getRequestDispatcher("/WEB-INF/quanli/suathisinh.jsp");
        dispatcher.forward(request, response);

		


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
        String username = request.getParameter("username");
        String fullname = request.getParameter("fullname");
        String sql = "UPDATE users SET fullName='"+fullname+"'  WHERE userName='"+username+"'";
        System.out.println(sql);
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.executeUpdate();		
		} catch (SQLException e) {
			e.printStackTrace();
		}
        response.sendRedirect(request.getContextPath() + "/DSthisinh");

	}

}
