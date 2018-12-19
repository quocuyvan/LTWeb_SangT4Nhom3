package project.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.connectdb.ConnectDatabase;

/**
 * Servlet implementation class LoginFormServlet
 */
@WebServlet("/LoginFormServlet")
public class LoginFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user = request.getParameter("uname");
		String pass = request.getParameter("psw");
		
		if(ConnectDatabase.ConDB(user, pass).equals("thisinh")) {
			HttpSession session = request.getSession(false);
			// 
			session.setAttribute("username", user);
			RequestDispatcher rd =  request.getRequestDispatcher("WEB-INF/thisinh.jsp");
			rd.forward(request, response);
		} 
		else {
			if(ConnectDatabase.ConDB(user, pass).equals("rade"))
			{
				RequestDispatcher rd =  request.getRequestDispatcher("quanlydethi.jsp");
				rd.forward(request, response);
			}
			else {
				if(ConnectDatabase.ConDB(user, pass).equals("quanlits"))
				{
					RequestDispatcher rd =  request.getRequestDispatcher("/WEB-INF/quanli/hiendanhsach.jsp");
					rd.forward(request, response);
					
				}
				else {
					if (ConnectDatabase.ConDB(user, pass).equals("qlnhcauhoi"))
					{
						RequestDispatcher rd =  request.getRequestDispatcher("/WEB-INF/quanli/danhsachcauhoi.jsp");
						rd.forward(request, response);
					}
				
					else
					{
					RequestDispatcher rd =  request.getRequestDispatcher("dangnhap.jsp");
					rd.forward(request, response);
					}
				}
			}
		}
	}

}
