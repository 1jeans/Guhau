package com.test.guhau.classes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/classes/classes.do")
public class Classes extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");

		String auth = (String)session.getAttribute("auth");
		
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
		
		
		ClassesDAO dao = new ClassesDAO();
		
		ArrayList<ClassesDTO> countlist = dao.listClassCount(map);
		
		for (int i=0; i<countlist.size(); i++) {
			
			String class_content = countlist.get(i).getClass_content();
			
			if (class_content.length() > 10) {
				
				class_content = class_content.substring(0, 10);
				class_content += "...";
				
				countlist.get(i).setClass_content(class_content);
				
			}
			
		}
		
		ArrayList<ClassesDTO> newlist = dao.listClassNew(map);
		
		for (int i=0; i<newlist.size(); i++) {
			
			String class_content = newlist.get(i).getClass_content();
			
			if (class_content.length() > 10) {
				
				class_content = class_content.substring(0, 10);
				class_content += "...";
				
				newlist.get(i).setClass_content(class_content);
				
			}
			
		}
		
		
		if (!(auth == null || auth == "")) {
			
			ArrayList<ClassesDTO> recommendlist = dao.listClassRecom(auth);
			req.setAttribute("recommendlist", recommendlist);
			
		}

		
		req.setAttribute("countlist", countlist);		
		req.setAttribute("newlist", newlist);		
		req.setAttribute("newlist", newlist);		
		
		

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/classes/classes.jsp");
		dispatcher.forward(req, resp);

	}

}