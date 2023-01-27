package com.test.guhau.member.company;

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

@WebServlet("/member/company/c_info_edit.do")
public class c_info_edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		HttpSession session = req.getSession();

	    req.setCharacterEncoding("UTF-8");
		
	    String c_id = (String)session.getAttribute("auth");
        
        MemberDAO dao = new MemberDAO();
        
        MemberDTO dto = dao.CInfoEdit(c_id);
        
        //System.out.println(dto);
        
        req.setAttribute("dto", dto);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/company/c_info_edit.jsp");
		dispatcher.forward(req, resp);

	}

}
