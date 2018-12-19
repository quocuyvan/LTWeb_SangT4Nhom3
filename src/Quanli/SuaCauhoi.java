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

import BEAN.Question;
import test.test;
import project.connectdb.ConnectDatabase;


@WebServlet("/edit_qs")
public class SuaCauhoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaCauhoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub




        RequestDispatcher dispatcher //
        = this.getServletContext().getRequestDispatcher("/WEB-INF/quanli/suacauhoi.jsp");
        dispatcher.forward(request, response);

		


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    String error="";
	    String idQuestions = request.getParameter("idQuestions");
	    String questName = request.getParameter("questname");
	    String a = request.getParameter("a");
	    String b = request.getParameter("b");
	    String c = request.getParameter("c");
	    String d = request.getParameter("d");
	    String result = request.getParameter("answer");
	    String type = request.getParameter("type");
	    String idClass = request.getParameter("idClass");

		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			if (test.findQS(con, idQuestions)==true) {
		        String sql = "UPDATE questions SET questName='"+questName+"', a= '"+a+"', b= '"+b+"', c= '"+c+"', d= '"+d+"', result= '"+result+"', type= '"+type+"', idClass= "+idClass  //
		        		+ " WHERE idQuestions='"+idQuestions+"'";
		        System.out.println(sql);
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.executeUpdate();	
		        error = "Sửa câu hỏi thành công ";
			}
			else error = "Câu hỏi chưa có để chỉnh sửa! ";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("error", error);
		request.setAttribute("error", error);
		System.out.println(error);
        response.sendRedirect(request.getContextPath() + "/DScauhoi");

	}

}
