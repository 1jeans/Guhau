package com.test.guhau.comm;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/community/community_all.do")
public class community_all extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//검색
				String column = req.getParameter("column");
				String word = req.getParameter("word");
				String isSearch = "n"; //n(목록), y(검색)
				
				if ((column == null || word == null) || (column == "" || word == "") ) {
					isSearch = "n";
				} else {
					isSearch = "y";
				}
				
				HashMap<String,String> map = new HashMap<String,String>();
				
				map.put("column", column);
				map.put("word", word);
				map.put("isSearch", isSearch);
								
				
				
					
				String tag = req.getParameter("tag");
				map.put("tag", tag);
				
				
				
				
				/* HttpSession session = req.getSession(); */
				
				CommDAO dao = new CommDAO();
				
				ArrayList<CommDTO> list = dao.list(map);
				
				
				
				
				
				req.setAttribute("list", list);
				
				//검색 내용 넘기기
				req.setAttribute("map", map);
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/community_all.jsp");
		dispatcher.forward(req, resp);

	}
}
