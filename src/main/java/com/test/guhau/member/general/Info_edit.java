package com.test.guhau.member.general;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.guhau.member.MemberDAO;
import com.test.guhau.member.MemberDTO;

@WebServlet("/member/general/info_edit.do")
public class Info_edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//		String id = req.getParameter("id");
//		String pw = req.getParameter("pw");
//		
//		
//		MemberDTO dto = new MemberDTO();
//		
//		dto.setM_id(id);
//		dto.setM_pw(pw);
		
		HttpSession session = req.getSession();
		
		 String m_id = (String)session.getAttribute("auth");
		  
		  MemberDAO dao = new MemberDAO();
		  
		  MemberDTO dto = dao.getMember(m_id);
		
//		MemberDTO result = dao.login(dto);
		
		req.setAttribute("dto", dto);	// 이걸로 넘기면 세션 넘기는거라, dto안에 데이터 다 있어서 이케..
		
		
//		if (result != null) {
//			HttpSession session = req.getSession(); // 위 세션 넘기면 이거 if문 쓸필요없음.
			
			
			
//			session.setAttribute("activeox", result.getM_activeox());
//			session.setAttribute("address", result.getM_address());
//			session.setAttribute("birth", result.getM_birth());
//			session.setAttribute("email", result.getM_email());
//			session.setAttribute("gender", result.getM_gender());
//			session.setAttribute("id", result.getM_id());
//			session.setAttribute("join", result.getM_join());
//			session.setAttribute("name", result.getM_name());
//			session.setAttribute("ox", result.getM_ox());
//			session.setAttribute("pic", result.getM_pic());
//			session.setAttribute("pw", result.getM_pw());
//			session.setAttribute("tel", result.getM_tel());
			
//			resp.sendRedirect("/guhau/member/general/mypage.do");
//		}
		

		// 공통 코드 (마지막에 자기 짝꿍(jsp) 부르니까)
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/general/info_edit.jsp");
		dispatcher.forward(req, resp);

	}

}
