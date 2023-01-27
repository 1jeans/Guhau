package com.test.guhau.member.company;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.guhau.classes.ClassesDAO;
import com.test.guhau.classes.ClassesDTO;
import com.test.guhau.member.MemberDAO;
import com.test.guhau.member.MemberDTO;

@WebServlet("/member/company/c_mypage.do")
public class c_mypage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

	       req.setCharacterEncoding("UTF-8");
	      
	       String c_id = (String)session.getAttribute("auth");
	        
	        MemberDAO dao = new MemberDAO();
	        
	        
	        MemberDTO dto = dao.getC_Member(c_id);
	        

	        
	        ClassesDAO cdao = new ClassesDAO();
	        
	        ArrayList<ClassesDTO> cclist = cdao.comscraplist(c_id);
	        
	        
	        req.setAttribute("cdto", cclist);
	        req.setAttribute("dto", dto);


		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/company/c_mypage.jsp");
		dispatcher.forward(req, resp);

	}

}
























