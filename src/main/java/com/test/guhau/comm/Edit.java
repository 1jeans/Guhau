package com.test.guhau.comm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/community/edit.do")
public class Edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

			HttpSession session = req.getSession();
		
			String m_id = (String)session.getAttribute("auth");
				
		
				String seq = req.getParameter("comm_seq");
				
				
				CommDAO dao = new CommDAO();
				
				CommDTO dto = dao.get(seq);
				
				
				
				
				
				
				/*
				 * if (session.getAttribute("auth") == null ||
				 * !dto.getM_id().equals((String)session.getAttribute("auth"))) { PrintWriter
				 * writer = resp.getWriter(); writer.print("<script>");
				 * writer.print("alert('failed');");
				 * writer.print("location.href='/guhau/index.do';"); writer.print("</script>");
				 * writer.close(); return; }
				 */
				
				
				
				//3.
				req.setAttribute("dto", dto);	

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/edit.jsp");
		dispatcher.forward(req, resp);

	}
}