package com.test.guhau.classes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/classes/classesdetail.do")
public class ClassesDetail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		
		if (session.getAttribute("auth") == null) {
			PrintWriter writer = resp.getWriter();
			writer.print("<script>");
			writer.print("alert('login');");
			writer.print("location.href='/guhau/classes/classes.do';");
			writer.print("</script>");
			writer.close();
			return;
		}
		
		String class_seq = req.getParameter("class_seq");
		
		
		ClassesDAO dao = new ClassesDAO();
		ClassesDTO dto = dao.getClassDetail(class_seq);
		ClassesDTO countup = dao.setClassCount(dto);

		
		if (countup == null) {
			
			PrintWriter writer = resp.getWriter();
	         writer.print("<script>");
	         writer.print("alert('다시 시도해주세요.');");
	         writer.print("history.back();");
	         writer.print("</script>");
	         writer.close();  
			
		}
		
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/classes/classesdetail.jsp");
		dispatcher.forward(req, resp);

	}

}