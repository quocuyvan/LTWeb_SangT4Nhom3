package Quanli;

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

/**
 * Servlet implementation class DSthisinh
 */
@WebServlet("/DScauhoi")
public class DScauhoi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DScauhoi() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		List<Question> l_cauhoi = new ArrayList<>();
		getCauhoi log= new getCauhoi(); 
		l_cauhoi = log.getDS_CH();
		session.setAttribute("l_cauhoi", l_cauhoi);
		request.setAttribute("l_cauhoi", l_cauhoi);
        RequestDispatcher dispatcher //
        = this.getServletContext().getRequestDispatcher("/WEB-INF/quanli/danhsachcauhoi.jsp");

        dispatcher.forward(request, response);


	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
