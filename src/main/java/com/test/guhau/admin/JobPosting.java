package com.test.guhau.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin/jobPosting.do")
public class JobPosting extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        HttpSession session = req.getSession();

        AdminDAO dao = new AdminDAO();

        ArrayList<AdminDTO> jlist = dao.jlist();

        for (AdminDTO dto : jlist) {

            //날짜 자르기
            String emp_date = dto.getEmp_date();

            emp_date = emp_date.substring(0, 10);

            dto.setEmp_date(emp_date);

            String emp_title = dto.getEmp_title();

            //제목 자르기
            if (emp_title.length() > 10) {
                emp_title = emp_title.substring(0, 10);
                dto.setEmp_title(emp_title + "..");
            }

        }

        req.setAttribute("jlist", jlist);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/job_posting.jsp");
        dispatcher.forward(req,resp);
    }
}
