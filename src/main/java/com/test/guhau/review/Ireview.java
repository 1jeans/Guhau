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

@WebServlet("/review/ireview.do")
public class Ireview extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cdata_seq = req.getParameter("cdata_seq");
		String word = req.getParameter("word");
		String isSearch = "n"; //n(목록), y(검색)
		
		if (word == null || word == "" || word.equals("0")) {
			isSearch = "n";
		} else {
			isSearch = "y";
		}
		
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("word", word);
		map.put("isSearch", isSearch);	
		
		req.setAttribute("map", map);
		
		ReviewDAO dao = new ReviewDAO();
		
		ArrayList<IreviewDTO> list = dao.listIreview(cdata_seq, map);
		
		//System.out.println(list.size());
		
		if (list.size() > 1) {
			
			for (int i=0; i<list.size(); i++) {
				
				String ireview_txt = list.get(i).getIreview_txt();
				
				if (ireview_txt != null || ireview_txt.length() > 10) {
					
					ireview_txt = ireview_txt.substring(0, 10);
					ireview_txt += "...";
					
					list.get(i).setIreview_txt(ireview_txt);
					
				}
				
			}
			
		}
		
		//System.out.println(list.toString());

		req.setAttribute("list", list);
		
		
		ReviewDTO dto = dao.getDetail(cdata_seq);

		
		req.setAttribute("dto", dto);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/review/ireview.jsp");
		dispatcher.forward(req, resp);

	}

}