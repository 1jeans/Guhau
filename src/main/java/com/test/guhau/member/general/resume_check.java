//resume_check

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

@WebServlet("/member/general/resume_check.do")
public class resume_check extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");	
		
		String m_id = (String)session.getAttribute("auth");
		
		MemberDAO dao = new MemberDAO();
		
		ResumeDTO rdto = new ResumeDTO();
		
		String resume_intro = req.getParameter("resume_intro");
		String resume_school = req.getParameter("resume_school");
		String resume_skill = req.getParameter("resume_skill");
		
		rdto.setResume_intro(resume_intro);
		rdto.setResume_school(resume_school);
		rdto.setResume_skill(resume_skill);
		rdto.setM_id(m_id);
		
		//int result = dao.editResume(rdto);
		
		
		CarrerDTO cdto = new CarrerDTO();
		
		
		String cdata_seq = req.getParameter("cdata_seq");
		String duty_name = req.getParameter("duty_name");
		String carrer_startdate = req.getParameter("carrer_startdate");
		String carrer_enddate = req.getParameter("carrer_enddate");
		
		cdto.setCdata_seq(cdata_seq);
		cdto.setDuty_name(duty_name);
		cdto.setCarrer_startdate(carrer_startdate);
		cdto.setCarrer_enddate(carrer_enddate);
		cdto.setM_id(m_id);
		
		//result = dao.editCarrer(cdto);
		
		System.out.println();

		// 공통 코드 (마지막에 자기 짝꿍(jsp) 부르니까)
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/general/resume_check.jsp");
		dispatcher.forward(req, resp);

	}

}