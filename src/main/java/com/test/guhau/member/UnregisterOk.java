package com.test.guhau.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/member/unregisterok.do")
public class UnregisterOk extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.unRegisterMember((String)session.getAttribute("auth"));
		
		if(result == 1) {
			
			session.invalidate();
			
			resp.sendRedirect("#!");
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
