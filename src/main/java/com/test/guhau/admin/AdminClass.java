package com.test.guhau.admin;

import com.test.guhau.member.MemberDAO;
import com.test.guhau.member.MemberDTO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin/adminClass.do")
public class AdminClass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        HttpSession session = req.getSession();

        AdminDAO dao = new AdminDAO();

        ArrayList<AdminDTO> adminclass = dao.adminclass();

        req.setAttribute("adminclass", adminclass);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/adminClass.jsp");
        dispatcher.forward(req,resp);
    }
}
