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

@WebServlet("/review/review.do")
public class Review extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String word = req.getParameter("word");
		String isSearch = "n"; //n(목록), y(검색)
		
		if (word == null || word == "") {
			isSearch = "n";
		} else {
			isSearch = "y";
		}
		
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("word", word);
		map.put("isSearch", isSearch);
		
		
		ReviewDAO dao = new ReviewDAO();
		
		ArrayList<ReviewDTO> list = dao.listCompany(map);
		
		for (int i=0; i<list.size(); i++) {
			
			String staravg = list.get(i).getStaravg();
			
			if (staravg != null && staravg.length() > 3) {
	            
	            staravg = staravg.substring(0, 3);
	            
	            list.get(i).setStaravg(staravg);
	            
	         }
			
		}

		
		req.setAttribute("list", list);		
		
		req.setAttribute("map", map);

		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/review/review.jsp");
		dispatcher.forward(req, resp);

	}

}