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
import test.test;


@WebServlet("/del_qs")
public class XoaCauhoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaCauhoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub




        RequestDispatcher dispatcher //
        = this.getServletContext().getRequestDispatcher("/WEB-INF/quanli/xoacauhoi.jsp");
        dispatcher.forward(request, response);

		


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
        String id = request.getParameter("idQuestions");;
        
        String error=" ";

        
		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			String sql = "DELETE FROM questions WHERE idQuestions='"+id+"'";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println(sql);
			if (test.findQS(con, id)==true) {
			ps.executeUpdate();
			error= "Xóa câu hỏi thành công ";
			}
			else error ="Chưa có câu hỏi có ID="+id;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("error", error);
		request.setAttribute("error", error);
        response.sendRedirect(request.getContextPath() + "/DScauhoi");

	}

}
