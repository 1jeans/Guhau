package com.test.guhau.member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/member/comloginok.do")
public class ComLoginOk extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String c_id = req.getParameter("c_id");
        String c_pw = req.getParameter("c_pw");

        CmemberDTO dto = new CmemberDTO();

        dto.setC_id(c_id);
        dto.setC_pw(c_pw);

        //MemberDAO dao = new MemberDAO();
        CmemberDAO dao = new CmemberDAO();

        CmemberDTO result = dao.login(dto);
        
        System.out.println("result: " + result);

        if (result != null) {

            HttpSession session = req.getSession();
            
            System.out.println(dto);

            session.setAttribute("auth", c_id);
            
            session.setAttribute("name", result.getC_pw());
            session.setAttribute("tel", result.getC_tel());
            session.setAttribute("pic", result.getC_pic());
            session.setAttribute("authseq", "2");
            //System.out.println("Asdf");
            
            resp.sendRedirect("/guhau/jobs/cgetjob.do");
            ///jobs/getjob.do
            

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
