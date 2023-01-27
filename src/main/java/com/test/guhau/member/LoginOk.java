package com.test.guhau.member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/member/loginok.do")
public class LoginOk extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String m_id = req.getParameter("m_id");
        String m_pw = req.getParameter("m_pw");

        MemberDTO dto = new MemberDTO();

        dto.setM_id(m_id);
        dto.setM_pw(m_pw);

        MemberDAO dao = new MemberDAO();

        MemberDTO result = dao.login(dto);
        
        System.out.println("result: " + result);

        if (result != null) {

            HttpSession session = req.getSession();
            
            System.out.println(dto);

            session.setAttribute("auth", m_id);
            
            session.setAttribute("name", result.getM_pw());
            session.setAttribute("tel", result.getM_tel());
            session.setAttribute("pic", result.getM_pic());
            session.setAttribute("authseq", "1");
            
            resp.sendRedirect("/guhau/jobs/getjob.do");
            

        } else {

            PrintWriter writer = resp.getWriter();
            writer.print("<script>");
            writer.print("alert('failed');");
            writer.print("history.back();");
            writer.print("</script>");
            writer.close();
            System.out.println(dto);

        }

    }
}
