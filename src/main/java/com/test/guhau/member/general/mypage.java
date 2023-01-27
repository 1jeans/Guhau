package com.test.guhau.member.general;

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
import com.test.guhau.member.MemberTagDTO;
import com.test.guhau.member.SupportingDTO;

@WebServlet("/member/general/mypage.do")
public class mypage extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		req.setCharacterEncoding("UTF-8");


		  String m_id = (String)session.getAttribute("auth");
		  
		  MemberDAO dao = new MemberDAO();
		  
		  MemberDTO dto = dao.getMember(m_id);
		  
		  //MemberDTO dto = dao.support(m_id);

		  //view.do
		  //1. BoardDTO dto = dao.get(seq)
		  //2. ArrayList<CommentDTO> clist = dao.clist(seq);
		  
		  // 지원현황
		  ArrayList<SupportingDTO> list = dao.getList(m_id);
		  
		  
		  // 관심태그
		  ArrayList<MemberTagDTO> taglist = dao.getTagList(m_id);
		  
		  ArrayList<ResumeListDTO> rlist = dao.getResumeList(m_id);
		  
		  
		  ClassesDAO cdao = new ClassesDAO();
          
	        ArrayList<ClassesDTO> gclist = cdao.gerscraplist(m_id);
	           
	           
	         req.setAttribute("gcdto", gclist);
		  
		  
		  req.setAttribute("dto", dto);
		  
		  req.setAttribute("list", list);
		  req.setAttribute("taglist", taglist);
		  req.setAttribute("rlist", rlist);
		  

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/general/mypage.jsp");
		dispatcher.forward(req, resp);

	}

}