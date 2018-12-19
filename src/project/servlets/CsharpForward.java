package project.servlets;

import java.io.IOException;
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
import project.connectdb.ConnectDatabase;

/**
 * Servlet implementation class CsharpForward
 */
@WebServlet("/CsharpForward")
public class CsharpForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CsharpForward() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		java.sql.Connection conn = ConnectDatabase.CreateConnection();
		
		HttpSession session = request.getSession();
		
		
		List<Question> list = new ArrayList<>();
		list=(List<Question>) session.getAttribute("list_Question");
		
		request.setAttribute("listcsharp", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/TestSheet.jsp");
		rd.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
