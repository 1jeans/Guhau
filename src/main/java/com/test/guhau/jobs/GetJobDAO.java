package com.test.guhau.jobs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.guhau.DBUtil;

public class GetJobDAO {

   private Connection conn;
   private Statement stat;
   private PreparedStatement pstat;
   private ResultSet rs;
   
   public GetJobDAO() {
      conn = DBUtil.open();
   }

   
   public ArrayList<GetJobDTO> listjobs(HashMap<String, String> map) {

       try {

           String sql = "select \r\n"
                   + "    e.*,cm.c_pic\r\n"
                   + "from employment e\r\n"
                   + "    left outer join cmember cm on cm.c_id = e.c_id";
           String where = "";

           String whereword = "";
           String wheresalary = "";
           String whereduty = "";
           String whereregion = "";

           int count = 0;

           if (map.get("isSearch").equals("y")) {

               sql += where;

               if (!(map.get("word") == null || map.get("word") == "")) {

                   whereword = String.format("e.emp_title like '%%' || '%s' || '%%'", map.get("word"));

               }

               if (!(map.get("salary") == null || map.get("salary").equals("0"))) {

                   wheresalary = String.format("e.emp_pay between %s and %s", Integer.parseInt(map.get("salary")) - 400, map.get("salary"));

               }

               if (!(map.get("duty") == null || map.get("duty").equals("0"))) {

                   whereduty = String.format("e.duty_seq = %s", map.get("duty"));

               }

               if (!(map.get("region") == null || map.get("region").equals("0"))) {

                   whereregion = String.format("cm.reg_seq = %s", map.get("region"));

               }

           }

           String[] searchlist = {whereword, wheresalary, whereduty, whereregion};

           for (int i=0; i<searchlist.length; i++) {

               if (!searchlist[i].equals("")) {

                   count++;

                   if (count > 1) {
                       sql += " and " + searchlist[i];
                   } else {
                       sql += " where " + searchlist[i];
                   }

               }

           }

           //System.out.println(sql);


           pstat = conn.prepareStatement(sql);

           rs = pstat.executeQuery();

           ArrayList<GetJobDTO> list = new ArrayList<GetJobDTO>();

           while (rs.next()) {

               GetJobDTO dto = new GetJobDTO();

           /*private String emp_seq;
           private String emp_title;
           private String emp_txt;
           private String emp_date;
           private String emp_pay;
           private String c_id;
           private String emp_deadline;
           private String emp_career;
           private String duty_seq;*/

               dto.setEmp_seq(rs.getString("emp_seq"));
               dto.setEmp_title(rs.getString("emp_title"));
               dto.setEmp_txt(rs.getString("emp_txt"));
               dto.setEmp_date(rs.getString("emp_date"));
               dto.setEmp_pay(rs.getString("emp_pay"));
               dto.setC_id(rs.getString("c_id"));
               dto.setEmp_deadline(rs.getString("emp_deadline"));
               dto.setEmp_career(rs.getString("emp_career"));
               dto.setDuty_seq(rs.getString("duty_seq"));
               dto.setC_pic(rs.getString("c_pic"));

               list.add(dto);

           }

           return list;

       } catch (Exception e) {
           System.out.println("ReviewDAO.listCompany");
           e.printStackTrace();
       }

       return null;

   }
   
   

   public ArrayList<RegionDTO> listregions() {
      
      try {
         
         String sql = "select * from region";
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         ArrayList<RegionDTO> list = new ArrayList<RegionDTO>();
         
         while (rs.next()) {
            
            RegionDTO dto = new RegionDTO();
            
            dto.setReg_seq(rs.getString("reg_seq"));
            dto.setReg_name(rs.getString("reg_name"));
                        
            list.add(dto);
            
         }
         
         return list;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public String getEmploymentTxt(String seq) {
      
      try {
         
         String sql = String.format("select emp_txt from employment where emp_seq = %s", seq);
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         String txt = "";
         
         while (rs.next()) {
            txt = rs.getString("emp_txt");
         }
         
         txt = txt.replace("<", "&lt;").replace(">", "&gt;");
         txt = txt.replace("\r\n", "<br>");
         
         return txt;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public ArrayList<DutyDTO> listduty() {
      
      try {
         
         String sql = "select * from duty";
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         ArrayList<DutyDTO> list = new ArrayList<DutyDTO>();
         
         while (rs.next()) {
            
            DutyDTO dto = new DutyDTO();
            
            dto.setDuty_seq(rs.getString("duty_seq"));
            dto.setDuty_name(rs.getString("duty_name"));
                        
            list.add(dto);
            
         }
         
         return list;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public String getEmploymentSalary(String seq) {
      
      try {
         
         String sql = String.format("select emp_pay from employment where emp_seq = %s", seq);
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         String sal = "";
         
         while (rs.next()) {
            sal = rs.getString("emp_pay");
         }
         
         return sal;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public String getEmploymentDuty(String seq) {
      
      try {
         
         String sql = String.format("select\r\n"
               + "    d.duty_name\r\n"
               + "from employment e\r\n"
               + "    left outer join duty d on d.duty_seq = e.duty_seq\r\n"
               + "        where e.emp_seq=%s", seq);
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         String dutyname = "";
         
         while (rs.next()) {
            dutyname = rs.getString("duty_name");
         }
         
         return dutyname;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public String getEmploymentRegion(String seq) {
      
      try {
         
         String sql = String.format("select\r\n"
               + "    r.reg_name\r\n"
               + "from region r\r\n"
               + "    left outer join cmember cm on r.reg_seq = cm.reg_seq\r\n"
               + "        left outer join employment e on cm.c_id = e.c_id\r\n"
               + "            where e.emp_seq = %s", seq);
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         String regname = "";
         
         while (rs.next()) {
            regname = rs.getString("reg_name");
         }
         
         return regname;
         
         
      } catch (Exception e) {
         System.out.println("GetJobDAO.listregions");
         e.printStackTrace();
      }
      
      return null;
      
   }

   public ArrayList<GetJobDTO> listcjobs(String auth) {
	
	   try {
	         
	         String sql = String.format("select \r\n"
	         		+ "    e.*, vwem.countemp\r\n"
	         		+ "from employment e\r\n"
	         		+ "    left outer join cmember cm on cm.c_id = e.c_id\r\n"
	         		+ "        left outer join vwEmpMemberCounter vwem on e.emp_seq = vwem.emp_seq\r\n"
	         		+ "        where cm.c_id = '%s'\r\n"
	         		+ "            order by emp_date desc", auth);
	         
	         pstat = conn.prepareStatement(sql);
	         
	         rs = pstat.executeQuery();
	         
	         ArrayList<GetJobDTO> list = new ArrayList<GetJobDTO>();
	         
	         while (rs.next()) {
	            
	            GetJobDTO dto = new GetJobDTO();
	            
	            /*private String emp_seq;
	            private String emp_title;
	            private String emp_txt;
	            private String emp_date;
	            private String emp_pay;
	            private String c_id;
	            private String emp_deadline;
	            private String emp_career;
	            private String duty_seq;*/
	            
	            dto.setEmp_seq(rs.getString("emp_seq"));
	            dto.setEmp_title(rs.getString("emp_title"));
	            dto.setEmp_txt(rs.getString("emp_txt"));
	            dto.setEmp_date(rs.getString("emp_date"));
	            dto.setEmp_pay(rs.getString("emp_pay"));
	            dto.setC_id(rs.getString("c_id"));
	            dto.setEmp_deadline(rs.getString("emp_deadline"));
	            dto.setEmp_career(rs.getString("emp_career"));
	            dto.setDuty_seq(rs.getString("duty_seq"));
	            dto.setCountemp(rs.getString("countemp"));
	                        
	            list.add(dto);
	            
	         }
	         
	         return list;

	      } catch (Exception e) {
	         System.out.println("ReviewDAO.listCompany");
	         e.printStackTrace();
	      }
	
	   return null;
	
   }

	public ArrayList<GetJobDTO> listnowcjobs(String auth) {
	
		try {
	        
	        String sql = String.format("select \r\n"
	        		+ "    e.*, vwem.countemp\r\n"
	        		+ "from employment e\r\n"
	        		+ "    left outer join cmember cm on cm.c_id = e.c_id\r\n"
	        		+ "        left outer join vwEmpMemberCounter vwem on e.emp_seq = vwem.emp_seq\r\n"
	        		+ "        where cm.c_id = '%s' and emp_deadline >= sysdate\r\n"
	        		+ "            order by emp_date desc", auth);
	        
	        pstat = conn.prepareStatement(sql);
	        
	        rs = pstat.executeQuery();
	        
	        ArrayList<GetJobDTO> list = new ArrayList<GetJobDTO>();
	        
	        while (rs.next()) {
	           
	           GetJobDTO dto = new GetJobDTO();
	           
	           /*private String emp_seq;
	           private String emp_title;
	           private String emp_txt;
	           private String emp_date;
	           private String emp_pay;
	           private String c_id;
	           private String emp_deadline;
	           private String emp_career;
	           private String duty_seq;*/
	           
	           dto.setEmp_seq(rs.getString("emp_seq"));
	           dto.setEmp_title(rs.getString("emp_title"));
	           dto.setEmp_txt(rs.getString("emp_txt"));
	           dto.setEmp_date(rs.getString("emp_date"));
	           dto.setEmp_pay(rs.getString("emp_pay"));
	           dto.setC_id(rs.getString("c_id"));
	           dto.setEmp_deadline(rs.getString("emp_deadline"));
	           dto.setEmp_career(rs.getString("emp_career"));
	           dto.setDuty_seq(rs.getString("duty_seq"));
	           dto.setCountemp(rs.getString("countemp"));
	                       
	           list.add(dto);
	           
	        }
	        
	        return list;
	
	     } catch (Exception e) {
	        System.out.println("ReviewDAO.listCompany");
	        e.printStackTrace();
	     }
	
	  return null;
		
	}

	public ArrayList<GetJobDTO> listendcjobs(String auth) {

		try {
	        
	        String sql = String.format("select \r\n"
	        		+ "    e.*, vwem.countemp\r\n"
	        		+ "from employment e\r\n"
	        		+ "    left outer join cmember cm on cm.c_id = e.c_id\r\n"
	        		+ "        left outer join vwEmpMemberCounter vwem on e.emp_seq = vwem.emp_seq\r\n"
	        		+ "        where cm.c_id = '%s' and emp_deadline < sysdate\r\n"
	        		+ "            order by emp_date desc", auth);
	        
	        pstat = conn.prepareStatement(sql);
	        
	        rs = pstat.executeQuery();
	        
	        ArrayList<GetJobDTO> list = new ArrayList<GetJobDTO>();
	        
	        while (rs.next()) {
	           
	           GetJobDTO dto = new GetJobDTO();
	           
	           /*private String emp_seq;
	           private String emp_title;
	           private String emp_txt;
	           private String emp_date;
	           private String emp_pay;
	           private String c_id;
	           private String emp_deadline;
	           private String emp_career;
	           private String duty_seq;*/
	           
	           dto.setEmp_seq(rs.getString("emp_seq"));
	           dto.setEmp_title(rs.getString("emp_title"));
	           dto.setEmp_txt(rs.getString("emp_txt"));
	           dto.setEmp_date(rs.getString("emp_date"));
	           dto.setEmp_pay(rs.getString("emp_pay"));
	           dto.setC_id(rs.getString("c_id"));
	           dto.setEmp_deadline(rs.getString("emp_deadline"));
	           dto.setEmp_career(rs.getString("emp_career"));
	           dto.setDuty_seq(rs.getString("duty_seq"));
	           dto.setCountemp(rs.getString("countemp"));
	                       
	           list.add(dto);
	           
	        }
	        
	        return list;
	
	     } catch (Exception e) {
	        System.out.println("ReviewDAO.listCompany");
	        e.printStackTrace();
	     }
	
	  return null;
		
	}

	public ArrayList<CRecommendDTO> listrecommend(String auth) {
		
		try {
	        
	        String sql = String.format("select\r\n"
	        		+ "    c.c_id, ccs.class_seq, vwm.*\r\n"
	        		+ "from cmember c\r\n"
	        		+ "    left outer join cclassscrap ccs on c.c_id = ccs.c_id\r\n"
	        		+ "        inner join vwMemberRecommend vwm on ccs.class_seq = vwm.class_seq\r\n"
	        		+ "            where c.c_id = '%s' and vwm.m_class_score > 4 and rownum < 6", auth);
	        
	        pstat = conn.prepareStatement(sql);
	        
	        rs = pstat.executeQuery();
	        
	        //System.out.println(sql);
	        
	        ArrayList<CRecommendDTO> list = new ArrayList<CRecommendDTO>();
	        
	        while (rs.next()) {
	           
	        	CRecommendDTO dto = new CRecommendDTO();
	           
	           /*private String c_id;
				private String class_seq;
				private String m_name;
				private String m_tel;
				private String m_email;
				private String class_name;
				private String m_class_score;*/
	        	
	           dto.setC_id(rs.getString("c_id"));
	           dto.setClass_seq(rs.getString("class_seq"));
	           dto.setM_name(rs.getString("m_name"));
	           dto.setM_tel(rs.getString("m_tel"));
	           dto.setM_email(rs.getString("m_email"));
	           dto.setClass_name(rs.getString("class_name"));
	           dto.setM_class_score(rs.getString("m_class_score"));
	           
	           //System.out.println(dto.toString());
	                       
	           list.add(dto);
	           
	        }
	        //System.out.println(list.toString());
	        //System.out.println(sql);
	        return list;
	
	     } catch (Exception e) {
	        System.out.println("ReviewDAO.listCompany");
	        e.printStackTrace();
	     }
		
		return null;
		
	}

	public ArrayList<String> getEmpmemberName(String auth) {
		
		try {
	         
	         String sql = String.format("select\r\n"
	         		+ "    emp_seq, c_id, count(*)\r\n"
	         		+ "from vwEmpMemberCount\r\n"
	         		+ "    group by emp_seq, c_id\r\n"
	         		+ "        having c_id = '%s'", auth);
	         
	         pstat = conn.prepareStatement(sql);
	         
	         rs = pstat.executeQuery();
	         
	         ArrayList<String> list = new ArrayList<String>();
	         
	         while (rs.next()) {
	        	 
	        	 String name = rs.getString("m_name");
	        	 
	        	 list.add(name);
	        	 
	         }
	         
	         return list;
	         
	         
	      } catch (Exception e) {
	         System.out.println("GetJobDAO.listregions");
	         e.printStackTrace();
	      }
		
		return null;
		
	}
   
}