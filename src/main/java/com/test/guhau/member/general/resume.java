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

@WebServlet("/member/general/resume.do")
public class resume extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		 String m_id = (String)session.getAttribute("auth");
		  
		 MemberDAO dao = new MemberDAO();
		 
		 

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/general/resume.jsp");
		dispatcher.forward(req, resp);

	}

}
