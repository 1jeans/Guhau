package com.test.guhau.member.general;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/general/mypage_edit.do")
public class mypage_edit extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		

		// 공통 코드 (마지막에 자기 짝꿍(jsp) 부르니까)
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/general/mypage_edit.jsp");
		dispatcher.forward(req, resp);

	}

}
