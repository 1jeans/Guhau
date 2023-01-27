package com.test.guhau.admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

   @WebServlet("/admin/adminLogin.do")
public class AdminLogin extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      

      RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/adminLogin.jsp");
      dispatcher.forward(req, resp);

   }

}