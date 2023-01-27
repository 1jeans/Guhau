package com.test.guhau.comm;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;



@WebServlet("/community/addok.do")
public class AddOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

				//AddOk.java
				//1. 인코딩 + 데이터 가져오기
				//2. DB 작업 > DAO 위임 > insert
				//3. 결과
				//4. 피드백
		
		HttpSession session = req.getSession();
		
		
		//1.
		req.setCharacterEncoding("UTF-8");
								
		String title = req.getParameter("title");
		String txt = req.getParameter("txt");
		String duty = req.getParameter("duty");
		String cate = req.getParameter("cate");
		
		//2.
		CommDTO dto = new CommDTO();
				
		dto.setComm_title(title);
		dto.setComm_txt(txt);
		dto.setM_id((String)session.getAttribute("auth"));
		dto.setDuty_seq(duty);
		dto.setComm_cate(cate);
		
				
		CommDAO dao = new CommDAO();		
				
		int result = dao.add(dto);
		
		
		//4.
		if (result == 1) {
			resp.sendRedirect("/guhau/community/community_view.do");
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










