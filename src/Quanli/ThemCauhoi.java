package Quanli;

import java.io.IOException;
import test.test;
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

/**
 * Servlet implementation class DSthisinh
 */
@WebServlet("/add_qs")
public class ThemCauhoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ThemCauhoi() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub




        RequestDispatcher dispatcher //
        = this.getServletContext().getRequestDispatcher("/WEB-INF/quanli/themcauhoi.jsp");
        dispatcher.forward(request, response);

		


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html; charset=UTF-8");
	    String error=" ";
	    String idQuestions = request.getParameter("idQuestions");
        String questName = request.getParameter("questName");
        String a = request.getParameter("a");
        String b = request.getParameter("b");
        String c = request.getParameter("c");
        String d = request.getParameter("d");
        String result = request.getParameter("result");
        String type = request.getParameter("type");
        String idClass = request.getParameter("idClass");
        

		try {
			
			Connection con = ConnectDatabase.CreateConnection();
			if (test.findQS(con, idQuestions) == false) {
				String sql = "INSERT INTO questions ( idQuestions, questName, a,b,c,d,result,type, idClass) VALUES ('"+idQuestions+"','" +questName+"','"+a+"','"+b+"','"+c+"','"+d+"','"+result+"','"+type+"','"+idClass+"')";
		        System.out.println(sql);
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.execute();
		        error = "Thêm câu hỏi thành công ";
		        }	
			else error = "ID câu hỏi đã có ";
		} catch (SQLException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("error", error);
		request.setAttribute("error", error);
        response.sendRedirect(request.getContextPath() + "/DScauhoi");

	}

}
