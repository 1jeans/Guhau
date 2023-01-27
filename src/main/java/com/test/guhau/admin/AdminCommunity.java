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

@WebServlet("/admin/adminCommunity.do")
public class AdminCommunity extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        HttpSession session = req.getSession();


        AdminDAO dao = new AdminDAO();
        ArrayList<AdminDTO> clist = dao.clist();
        ArrayList<AdminDTO> mlist = dao.mlist();

        for (AdminDTO dto : clist) {

            //날짜 자르기
            String creview_date = dto.getCreview_date();

            creview_date = creview_date.substring(0, 10);

            dto.setCreview_date(creview_date);

            String creview_title = dto.getCreview_title();

            //제목 자르기
            if (creview_title.length() > 10) {
                creview_title = creview_title.substring(0, 10);
                dto.setCreview_title(creview_title + "..");
            }

        }

        for (AdminDTO dto : mlist) {

            //날짜 자르기
            String ireview_date = dto.getIreview_date();

            ireview_date = ireview_date.substring(0, 10);

            dto.setIreview_date(ireview_date);

            String ireview_title = dto.getIreview_title();

            //제목 자르기
            if (ireview_title.length() > 10) {
                ireview_title = ireview_title.substring(0, 10);
                dto.setIreview_title(ireview_title + "..");
            }

        }

        req.setAttribute("clist", clist);
        req.setAttribute("mlist", mlist);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/community.jsp");
        dispatcher.forward(req,resp);
    }
}
