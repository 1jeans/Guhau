package com.test.guhau.review;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/review/cdetail.do")
public class Cdetail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cdata_seq = req.getParameter("cdata_seq");
		
		
		ReviewDAO dao = new ReviewDAO();
		
		ReviewDTO dto = dao.getDetail(cdata_seq);

		
		req.setAttribute("dto", dto);		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/review/cdetail.jsp");
		dispatcher.forward(req, resp);

	}

}