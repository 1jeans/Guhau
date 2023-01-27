package com.test.guhau.jobs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/jobs/getjobtxt.do")
public class GetJobTxt extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String seq = req.getParameter("seq");
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		//DAO
		//1. DTO = dao.get(seq)
		//2. String = dao.get(seq)
		
		GetJobDAO dao = new GetJobDAO();
		
		String txt = dao.getEmploymentTxt(seq);
		String sal = dao.getEmploymentSalary(seq);
		String duty = dao.getEmploymentDuty(seq);
		String reg = dao.getEmploymentRegion(seq);
		
		JSONObject obj = new JSONObject();
		obj.put("txt", txt);
		obj.put("sal", sal);
		obj.put("duty", duty);
		obj.put("reg", reg);
		
		PrintWriter writer = resp.getWriter();
		
		writer.print(obj);
		
		writer.close();
		/*
		
			{
				"txt": "lkajsdfl;asjdflajsfㅇㄴㅈ바ㅇㅇfd"
			}
		
		*/

	}

}
