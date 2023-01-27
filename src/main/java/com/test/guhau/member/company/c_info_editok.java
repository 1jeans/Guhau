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

@WebServlet("/member/company/c_info_editok.do")
public class c_info_editok extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

	    req.setCharacterEncoding("UTF-8");
		
	    String c_id = (String)session.getAttribute("auth");
	    
	    
	    String c_email = req.getParameter("c_email");
		String c_tel = req.getParameter("c_tel");
	    String region = req.getParameter("region");
	    
	   	MemberDTO dto = new MemberDTO();
	    
	   	dto.setC_id(c_id);
	    dto.setC_email(c_email);
	    dto.setC_tel(c_tel);
	    dto.setReg_seq(region);
	    
	    
	    MemberDAO dao = new MemberDAO();
	    
	    int result = dao.CInfoEditOK(dto);
	    
	    if (result == 1) {
	    	
			resp.sendRedirect("/guhau/member/company/c_info_edit.do");
			
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