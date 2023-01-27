package com.test.guhau.member.general;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.guhau.member.MemberDAO;
import com.test.guhau.member.MemberTagDTO;

@WebServlet("/member/general/membertagok.do")
public class MemberTagOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		String m_id = (String)session.getAttribute("auth");
		
		String tag_name = req.getParameter("tag_name");
		
		MemberTagDTO tdto = new MemberTagDTO();
		
		tdto.setTag_name(tag_name);
		tdto.setM_id(m_id);
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.tagEdit(tdto);
		
		System.out.println(result);
		if(result == 1) {	
			
			resp.sendRedirect("/guhau/member/general/mypage.do");
			
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



















