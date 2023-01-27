package com.test.guhau.review;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/review/creview.do")
public class Creview extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cdata_seq = req.getParameter("cdata_seq");
		
		ReviewDAO dao = new ReviewDAO();
		
		ArrayList<CreivewDTO> list = dao.listCreview(cdata_seq);
		
		if (list.size() > 1) {
			
			for (int i=0; i<list.size(); i++) {
				
				String creview_txt = list.get(i).getCreview_txt();
				
				if (creview_txt != null || creview_txt.length() > 10) {
					
					creview_txt = creview_txt.substring(0, 10);
					creview_txt += "...";
					
					list.get(i).setCreview_txt(creview_txt);
					
				}
				
			}
			
		}

		req.setAttribute("list", list);		
		
		
		ReviewDTO dto = dao.getDetail(cdata_seq);

		
		req.setAttribute("dto", dto);	
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/review/creview.jsp");
		dispatcher.forward(req, resp);

	}

}
