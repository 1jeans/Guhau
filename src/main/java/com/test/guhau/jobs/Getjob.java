package com.test.guhau.jobs;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jobs/getjob.do")
public class Getjob extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String word = req.getParameter("word");
		String salary = req.getParameter("salary");
		String duty = req.getParameter("duty");
		String region = req.getParameter("region");
		String isSearch = "n"; //n(목록), y(검색)
		
		if ((word == null || word == "") && (salary == null || salary == "0") && (duty == null || duty == "0") && (region == null || region == "0")) {
			isSearch = "n";
		} else {
			isSearch = "y";
		}
		
		/*'
		 * if (word == null || word == "") { isSearch = "n"; } else { isSearch = "y"; }
		 */
		
		
		HashMap<String,String> map = new HashMap<String,String>();
		
		map.put("word", word);
		map.put("salary", salary);
		map.put("duty", duty);
		map.put("region", region);
		map.put("isSearch", isSearch);
		
		
		GetJobDAO dao = new GetJobDAO();
		
		ArrayList<GetJobDTO> joblist = dao.listjobs(map);
		ArrayList<RegionDTO> regionlist = dao.listregions();
		ArrayList<DutyDTO> dutylist = dao.listduty();
		
		for (int i=0; i<joblist.size(); i++) {
			
			String temp = joblist.get(i).getEmp_deadline().substring(0, 10);
			
			joblist.get(i).setEmp_deadline(temp);
			
		}

		
		req.setAttribute("joblist", joblist);		
		req.setAttribute("regionlist", regionlist);		
		req.setAttribute("dutylist", dutylist);		
		
		req.setAttribute("map", map);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/jobs/getjob.jsp");
		dispatcher.forward(req, resp);

	}

}