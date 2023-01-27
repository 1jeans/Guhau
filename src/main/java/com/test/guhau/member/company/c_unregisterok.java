package com.test.guhau.member.company;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.guhau.member.MemberDAO;
import com.test.guhau.member.MemberDTO;

@WebServlet("/member/company/c_unregisterok.do")
public class c_unregisterok extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HttpSession session = req.getSession();
		
		String c_id = (String)session.getAttribute("auth");
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.c_unregister(c_id);
		

		// 4.
		if (result == 1) {
			resp.sendRedirect("#");
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
