package com.test.guhau.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/findid.do")
public class Findid extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Register.java
		
		String email = req.getParameter("email");
		
		
		MemberDAO dao = new MemberDAO();
		
		
		
		MemberDTO dto = dao.getMember_1(email);
		
		
		if (dto != null) {
			
			String id = dto.getM_id().substring(0, 3) + "****";
			String pw = dto.getM_pw().substring(0, 3) + "****";
			
			req.setAttribute("id", id);
			req.setAttribute("pw", pw);
			
			req.setAttribute("result", 1);
			
		} else {
			
			req.setAttribute("result", 0);
		}

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/findid.jsp");
		dispatcher.forward(req, resp);

	}

}



