package com.test.guhau.jobs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/jobs/cgetjob.do")
public class CGetJob extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		
		req.setCharacterEncoding("UTF-8");
		
		String auth = (String)session.getAttribute("auth");
		//System.out.println(auth);
		
		if (session.getAttribute("auth") == null) {
			PrintWriter writer = resp.getWriter();
			writer.print("<script>");
			writer.print("alert('login');");
			writer.print("location.href='/guhau/member/comlogin.do';");
			writer.print("</script>");
			writer.close();
			return;
		}
		
		/*
		 * if (word == null || word == "") { isSearch = "n"; } else { isSearch = "y"; }
		 */
		
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		
		GetJobDAO dao = new GetJobDAO();
		
		ArrayList<GetJobDTO> joblist = dao.listcjobs(auth);
		ArrayList<GetJobDTO> jobnowlist = dao.listnowcjobs(auth);
		ArrayList<GetJobDTO> jobendlist = dao.listendcjobs(auth);
		ArrayList<CRecommendDTO> recommend = dao.listrecommend(auth);
		//ArrayList<EmpmemberDTO> empmemberlist = dao.listempmember(auth);
		
		for (int i=0; i<joblist.size(); i++) {
			
			String temp = joblist.get(i).getEmp_deadline().substring(0, 10);
			
			joblist.get(i).setEmp_deadline(temp);
			
		}
		
		for (int i=0; i<jobnowlist.size(); i++) {
					
					String temp = jobnowlist.get(i).getEmp_deadline().substring(0, 10);
					
					jobnowlist.get(i).setEmp_deadline(temp);
					
				}
		
		for (int i=0; i<jobendlist.size(); i++) {
			
			String temp = jobendlist.get(i).getEmp_deadline().substring(0, 10);
			
			jobendlist.get(i).setEmp_deadline(temp);
			
		}

		
		req.setAttribute("joblist", joblist);	
		req.setAttribute("jobnowlist", jobnowlist);	
		req.setAttribute("jobendlist", jobendlist);	
		req.setAttribute("recommend", recommend);	
		//System.out.println(recommend.toString());
		
		req.setAttribute("map", map);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/jobs/cgetjob.jsp");
		dispatcher.forward(req, resp);

	}

}
