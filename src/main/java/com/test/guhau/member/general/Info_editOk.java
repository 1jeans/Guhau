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
import com.test.guhau.member.MemberDTO;

@WebServlet("/member/general/info_editok.do")
public class Info_editOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");	
		
		String m_name = req.getParameter("m_name");
		String m_email = req.getParameter("m_email");
		String m_tel = req.getParameter("m_tel");
		String m_address = req.getParameter("m_address");
		String m_pic = req.getParameter("m_pic");
		String m_id = (String)session.getAttribute("auth");	// 이거 써야함. 아이디로 가져오는거라 auth 써놨음.
		
		MemberDTO dto = new MemberDTO();
		
		dto.setM_name(m_name);
		dto.setM_email(m_email);
		dto.setM_tel(m_tel);
		dto.setM_address(m_address);
		dto.setM_pic(m_pic);
		dto.setM_id(m_id);
		
		MemberDAO dao = new MemberDAO();
		
		int result = dao.edit(dto);
		
		//System.out.println(result);
		//System.out.println(m_name);
		
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
