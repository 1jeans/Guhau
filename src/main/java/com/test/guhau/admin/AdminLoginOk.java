package com.test.guhau.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/admin/adminLoginOk.do")
public class AdminLoginOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//LoginOk.java
		//1. 데이터 가져오기
		//2. DB 작업 > DAO 위임 > select
		//3. 결과 > 인증 티켓 발급
		//4. 피드백

		//1.
		String a_id = req.getParameter("a_id");
		String a_pw = req.getParameter("a_pw");

		//2.
		AdminDTO dto = new AdminDTO();

		dto.setA_id(a_id);
		dto.setA_pw(a_pw);

		AdminDAO dao = new AdminDAO();

		AdminDTO result = dao.login(dto); //성공(result), 실패(null)


		//3. + 4.
		if (result != null) {

			//인증 티켓 발급
			HttpSession session = req.getSession();

			session.setAttribute("auth", a_id); //로그인


			resp.sendRedirect("/guhau/admin/adminIndex.do");

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





































