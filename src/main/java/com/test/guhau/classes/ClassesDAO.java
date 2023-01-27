package com.test.guhau.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.guhau.DBUtil;

public class ClassesDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ClassesDAO() {
		conn = DBUtil.open();
	}
	
	

	public ArrayList<ClassesDTO> listClassCount(HashMap<String, String> map) {
		
		try {
			
			String sql = "select * from vwClassCount\r\n"
					+ "    where rownum <= 3";
			String where = "";
			
			if (map.get("isSearch").equals("y")) {
				
				where = String.format("and class_name like '%%' || '%s' || '%%'", map.get("word"));

				sql += " " + where;
				
			}
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ClassesDTO> list = new ArrayList<ClassesDTO>();
			
			while (rs.next()) {
				
				ClassesDTO dto = new ClassesDTO();
				
				/*private String class_seq;
				private String class_name;
				private String class_content;
				private String class_date;
				private String class_count;
				private String class_test;
				private String class_pic;*/
				
				dto.setClass_seq(rs.getString("class_seq"));
				dto.setClass_name(rs.getString("class_name"));
				dto.setClass_content(rs.getString("class_content"));
				dto.setClass_date(rs.getString("class_date"));
				dto.setClass_count(rs.getString("class_count"));
				dto.setClass_test(rs.getString("class_test"));
				dto.setClass_pic(rs.getString("class_pic"));
								
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ClassesDAO.listClass");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ArrayList<ClassesDTO> listClassNew(HashMap<String, String> map) {
		
		try {
			
			String sql = "select * from vwClassNew\r\n"
					+ "    where rownum <= 3";
			String where = "";
			
			if (map.get("isSearch").equals("y")) {
				
				where = String.format("and class_name like '%%' || '%s' || '%%'", map.get("word"));

				sql += " " + where;
				
			}
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ClassesDTO> list = new ArrayList<ClassesDTO>();
			
			while (rs.next()) {
				
				ClassesDTO dto = new ClassesDTO();
				
				/*private String class_seq;
				private String class_name;
				private String class_content;
				private String class_date;
				private String class_count;
				private String class_test;
				private String class_pic;*/
				
				dto.setClass_seq(rs.getString("class_seq"));
				dto.setClass_name(rs.getString("class_name"));
				dto.setClass_content(rs.getString("class_content"));
				dto.setClass_date(rs.getString("class_date"));
				dto.setClass_count(rs.getString("class_count"));
				dto.setClass_test(rs.getString("class_test"));
				dto.setClass_pic(rs.getString("class_pic"));
								
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ClassesDAO.listClass");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ClassesDTO getClassDetail(String class_seq) {

		try {
			
			String sql = String.format("select * from class where class_seq = %s", class_seq);
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ClassesDTO dto = new ClassesDTO();
			
			while (rs.next()) {
			
				dto.setClass_seq(rs.getString("class_seq"));
				dto.setClass_name(rs.getString("class_name"));
				dto.setClass_content(rs.getString("class_content"));
				dto.setClass_date(rs.getString("class_date"));
				dto.setClass_count(rs.getString("class_count"));
				dto.setClass_test(rs.getString("class_test"));
				dto.setClass_pic(rs.getString("class_pic"));
			
			}
			
			return dto;

		} catch (Exception e) {
			System.out.println("ReviewDAO.listCompany");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ArrayList<ClassesDTO> listClassRecom(String auth) {
		
		try {
			
			String sql = String.format("select\r\n"
					+ "    c.*, ct.tag_seq, mt.m_id\r\n"
					+ "from class c\r\n"
					+ "    left outer join classtag ct on c.class_seq = ct.class_seq\r\n"
					+ "        left outer join membertag mt on ct.tag_seq = mt.tag_seq\r\n"
					+ "            where mt.m_id = '%s' and rownum < 4", auth);
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ClassesDTO> list = new ArrayList<ClassesDTO>();
			
			while (rs.next()) {
				
				ClassesDTO dto = new ClassesDTO();
				
				/*private String class_seq;
				private String class_name;
				private String class_content;
				private String class_date;
				private String class_count;
				private String class_test;
				private String class_pic;*/
				
				dto.setClass_seq(rs.getString("class_seq"));
				dto.setClass_name(rs.getString("class_name"));
				dto.setClass_content(rs.getString("class_content"));
				dto.setClass_date(rs.getString("class_date"));
				dto.setClass_count(rs.getString("class_count"));
				dto.setClass_test(rs.getString("class_test"));
				dto.setClass_pic(rs.getString("class_pic"));
								
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ClassesDAO.listClass");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ClassesDTO setClassCount(ClassesDTO dto) {
		
		try {
			
			String sql = String.format("update class set class_count=%s where class_seq = %s", Integer.parseInt(dto.getClass_count()) + 1, dto.getClass_seq());
			
			
			pstat = conn.prepareStatement(sql);
			
			pstat.executeUpdate();
			
			//System.out.println(sql);
			
			return dto;
			
		} catch (Exception e) {
			System.out.println("ClassesDAO.setClassCount");
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	
	public int gScrap(ClassesDTO dto) {

	      //System.out.println(dto);
	      
	      try {

	         String sql = "select * from scrap where m_id = ? and class_seq = ?";

	         pstat = conn.prepareStatement(sql);

	         pstat.setString(1, dto.getM_id());
	         pstat.setString(2, dto.getClass_seq());

	         rs = pstat.executeQuery();

	         if (!rs.next()) {

	            sql = "insert into scrap (scrap_seq, m_id, class_seq) values (seqscrap.nextVal, ?, ?)";

	            pstat = conn.prepareStatement(sql);

	            pstat.setString(1, dto.getM_id());
	            pstat.setString(2, dto.getClass_seq());

	            return pstat.executeUpdate();

	         } else {
	            
	            return 2;
	         }

	      } catch (Exception e) {
	         System.out.println("ClassesDAO.gScrap");
	         e.printStackTrace();
	      }

	      return 0;

	   }

	   public int gApply(ClassesDTO dto) {
	      
	      try {
	         
	         String sql = "select * from memberclass where m_id = ? and class_seq = ?";

	         pstat = conn.prepareStatement(sql);

	         pstat.setString(1, dto.getM_id());
	         pstat.setString(2, dto.getClass_seq());

	         rs = pstat.executeQuery();

	         if (!rs.next()) {

	            sql = "insert into memberclass (m_class_seq, m_id, class_seq, m_class_score) values (seqmemberclass.nextVal, ?, ?, null)";

	            pstat = conn.prepareStatement(sql);

	            pstat.setString(1, dto.getM_id());
	            pstat.setString(2, dto.getClass_seq());

	            return pstat.executeUpdate();

	         } else {
	            
	            return 2;
	         }
	         
	      } catch (Exception e) {
	         System.out.println("ClassesDAO.gApply");
	         e.printStackTrace();
	      }
	      
	      return 0;
	      
	   }

	   public int cScrap(ClassesDTO dto) {
	      
	      try {
	         
	         String sql = "select * from cclassscrap where c_id = ? and class_seq = ?";

	         pstat = conn.prepareStatement(sql);

	         pstat.setString(1, dto.getC_id());
	         pstat.setString(2, dto.getClass_seq());

	         rs = pstat.executeQuery();

	         if (!rs.next()) {    

	            sql = "insert into cclassscrap (c_classscrap_seq, c_id, class_seq) values (seqcclassscrap.nextVal, ?, ?)";

	            pstat = conn.prepareStatement(sql);

	            pstat.setString(1, dto.getC_id());
	            pstat.setString(2, dto.getClass_seq());

	            return pstat.executeUpdate();

	         } else {
	            
	            return 2;
	         }
	         
	      } catch (Exception e) {
	         System.out.println("ClassesDAO.cScrap");
	         e.printStackTrace();
	      }
	      
	      return 0;
	   }

	   public ArrayList<ClassesDTO> comscraplist(String id) {
	      
	      try {
	         
	         String sql = "select c.* \r\n"
	               + "from cmember cm \r\n"
	               + "    inner join cclassscrap cc on cm.c_id = cc.c_id\r\n"
	               + "        inner join class c on cc.class_seq = c.class_seq\r\n"
	               + "            where cm.c_id = ?";
	         
	         pstat = conn.prepareStatement(sql);

	         pstat.setString(1, id);
	         
	         rs = pstat.executeQuery();
	         
	         ArrayList<ClassesDTO> list = new ArrayList<ClassesDTO>();
	         
	         while (rs.next()) {
	            
	            ClassesDTO dto = new ClassesDTO();
	            
	            dto.setClass_seq(rs.getString("class_seq"));
	            dto.setClass_name(rs.getString("class_name"));
	            dto.setClass_content(rs.getString("class_content"));
	            dto.setClass_date(rs.getString("class_date"));
	            dto.setClass_count(rs.getString("class_count"));
	            dto.setClass_test(rs.getString("class_test"));
	            dto.setClass_pic(rs.getString("class_pic"));
	                        
	            list.add(dto);
	            
	         }
	         
	         return list;
	         
	      } catch (Exception e) {
	         System.out.println("ClassesDAO.comscraplist");
	         e.printStackTrace();
	      }
	      
	      return null;
	   }
	   
	   
	   
	   public ArrayList<ClassesDTO> gerscraplist(String m_id) {
		      
		      try {
		         
		         String sql = "select c.* \r\n"
		               + "from member m \r\n"
		               + "    inner join scrap s on m.m_id = s.m_id\r\n"
		               + "        inner join class c on s.class_seq = c.class_seq\r\n"
		               + "            where m.m_id = ?";
		         
		         pstat = conn.prepareStatement(sql);

		         pstat.setString(1, m_id);
		         
		         rs = pstat.executeQuery();
		         
		         ArrayList<ClassesDTO> list = new ArrayList<ClassesDTO>();
		         
		         while (rs.next()) {
		            
		            ClassesDTO dto = new ClassesDTO();
		            
		            dto.setClass_seq(rs.getString("class_seq"));
		            dto.setClass_name(rs.getString("class_name"));
		            dto.setClass_content(rs.getString("class_content"));
		            dto.setClass_date(rs.getString("class_date"));
		            dto.setClass_count(rs.getString("class_count"));
		            dto.setClass_test(rs.getString("class_test"));
		            dto.setClass_pic(rs.getString("class_pic"));
		                        
		            list.add(dto);
		            
		         }
		         
		         return list;
		         
		      } catch (Exception e) {
		         System.out.println("ClassesDAO.gerscraplist");
		         e.printStackTrace();
		      }
		      
		      return null;
		   }
	
	
	
	
}
