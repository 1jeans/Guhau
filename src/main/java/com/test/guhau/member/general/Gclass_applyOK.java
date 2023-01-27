package com.test.guhau.member.general;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.guhau.classes.ClassesDAO;
import com.test.guhau.classes.ClassesDTO;

@WebServlet("/member/general/Gclass_applyOK.do")
public class Gclass_applyOK extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		//PrintWriter 한글 깨질때
		resp.setContentType("text/html; charset=UTF-8");

		String m_id = (String)session.getAttribute("auth");
		
		String cseq = req.getParameter("class_seq");
		
		ClassesDAO dao = new ClassesDAO();
		
		ClassesDTO dto = new ClassesDTO();
		
		dto.setM_id(m_id);
		dto.setClass_seq(cseq);
		
		
		int result = dao.gApply(dto);
		
		System.out.println(result);
		
		if (result == 1) {
			resp.sendRedirect("/guhau/classes/classesdetail.do?class_seq=" + dto.getClass_seq());
			
		} else if (result == 2) {
			
			PrintWriter writer = resp.getWriter();
			writer.print("<script>");
			writer.print("alert('이미 수강중인 강의입니다.');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.close();	
			
		} else {
			
			PrintWriter writer = resp.getWriter();
			writer.print("<script>");
			writer.print("alert('failed');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.close();	
			
		}	
		
	}

}
