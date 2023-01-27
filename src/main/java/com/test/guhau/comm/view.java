package com.test.guhau.comm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/community/view.do")
public class view extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String comm_seq = req.getParameter("comm_seq");
		
		CommDAO dao = new CommDAO();
		
		CommDTO dto = dao.get(comm_seq);
		
		
		//데이터 조작
		//조회수 증가
		//if (session.getAttribute("readcount") == null || session.getAttribute("readcount").toString().equals("n")) {
			
			dao.addComm_Count(comm_seq);
			
		//	session.setAttribute("readcount", "y");
		//}
		
		
		
		
		
		
		req.setAttribute("dto", dto);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/view.jsp");
		dispatcher.forward(req, resp);

	}
}