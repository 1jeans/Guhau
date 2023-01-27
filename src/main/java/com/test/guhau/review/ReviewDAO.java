package com.test.guhau.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.guhau.DBUtil;

public class ReviewDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	public ReviewDAO() {
		conn = DBUtil.open();
	}

	public ArrayList<ReviewDTO> listCompany(HashMap<String, String> map) {
		
		try {
			
			String sql = "select\r\n"
					+ "    c.cdata_seq, cm.c_id, c.cdata_name, r.reg_name, cm.c_tel, cm.c_email, cm.c_pic, cm.c_intro, cm.c_activeox, vs.staravg\r\n"
					+ "from COMPANY c\r\n"
					+ "    left outer join cmember cm on c.cdata_seq = cm.cdata_seq\r\n"
					+ "        left outer join region r on r.reg_seq = cm.reg_seq\r\n"
					+ "            left outer join vwStar vs on cm.c_id = vs.c_id";
			
			String where = "";
			
			if (map.get("isSearch").equals("y")) {
				
				where = String.format("where c.cdata_name like '%%' || '%s' || '%%'", map.get("word"));

				sql += " " + where;
				
			}
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<ReviewDTO> list = new ArrayList<ReviewDTO>();
			
			while (rs.next()) {
				
				ReviewDTO dto = new ReviewDTO();
				
				/*private String c_id;
				private String cdata_name;
				private String c_tel;
				private String c_email;
				private String c_pic;
				private String c_intro;
				private String c_activeox;*/
				
				dto.setCdata_seq(rs.getString("cdata_seq"));
				dto.setC_id(rs.getString("c_id"));
				dto.setCdata_name(rs.getString("cdata_name"));
				dto.setC_tel(rs.getString("c_tel"));
				dto.setC_email(rs.getString("c_email"));
				dto.setC_pic(rs.getString("c_pic"));
				dto.setC_intro(rs.getString("c_intro"));
				dto.setC_activeox(rs.getString("c_activeox"));
				dto.setReg_name(rs.getString("reg_name"));
				dto.setStaravg(rs.getString("staravg"));
								
				list.add(dto);
				
			}
			
			return list;

		} catch (Exception e) {
			System.out.println("ReviewDAO.listCompany");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ReviewDTO getDetail(String cdata_seq) {
		
		try {
			
			String sql = "select\r\n"
					+ "    c.cdata_seq, cm.c_id, c.cdata_name, cm.c_tel, cm.c_email, cm.c_pic, cm.c_intro, cm.c_activeox, r.reg_name\r\n"
					+ "from COMPANY c\r\n"
					+ "    left outer join cmember cm on c.cdata_seq = cm.cdata_seq\r\n"
					+ "        left outer join region r on r.reg_seq = cm.reg_seq";
			
			String where = String.format("where c.cdata_seq= %s", cdata_seq);
			
			sql += " " + where;
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ReviewDTO dto = new ReviewDTO();
			
			while (rs.next()) {
			
				dto.setCdata_seq(rs.getString("cdata_seq"));
				dto.setC_id(rs.getString("c_id"));
				dto.setCdata_name(rs.getString("cdata_name"));
				dto.setC_tel(rs.getString("c_tel"));
				dto.setC_email(rs.getString("c_email"));
				dto.setC_pic(rs.getString("c_pic"));
				dto.setC_intro(rs.getString("c_intro"));
				dto.setC_activeox(rs.getString("c_activeox"));
				dto.setReg_name(rs.getString("reg_name"));
			
			}
			
			return dto;

		} catch (Exception e) {
			System.out.println("ReviewDAO.listCompany");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ArrayList<CreivewDTO> listCreview(String cdata_seq) {

		try {
			
			String sql = "select\r\n"
					+ "    c.cdata_seq, c.cdata_name, cr.*, vcc.years, m.m_name\r\n"
					+ "from COMPANY c\r\n"
					+ "    left outer join cmember cm on c.cdata_seq = cm.cdata_seq\r\n"
					+ "        left outer join creview cr on cm.c_id = cr.c_id\r\n"
					+ "            left outer join vwCarrerCount vcc on cr.m_id= vcc.m_id\r\n"
					+ "                left outer join member m on m.m_id = cr.m_id";
			
			String where = String.format("where c.cdata_seq=%s", cdata_seq);
			
			/*if (map.get("isSearch").equals("y")) {
				
				where = String.format("where c.cdata_name like '%%' || '%s' || '%%'", map.get("word"));

				sql += " " + where;
				
			}*/
			
			sql += " " + where;
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<CreivewDTO> list = new ArrayList<CreivewDTO>();
			
			while (rs.next()) {
				
				CreivewDTO dto = new CreivewDTO();
				
				/*private String creview_seq;
				private String creview_date;
				private String creview_star;
				private String creview_txt;
				private String creview_title;
				private String m_id;
				private String c_id;
				private String carrer_seq;*/
				
				dto.setCdata_seq(rs.getString("cdata_seq"));
				dto.setCdata_name(rs.getString("cdata_name"));
				dto.setCreview_seq(rs.getString("creview_seq"));
				dto.setCreview_date(rs.getString("creview_date"));
				dto.setCreview_star(rs.getString("creview_star"));
				dto.setCreview_txt(rs.getString("creview_txt"));
				dto.setCreview_title(rs.getString("creview_title"));
				dto.setM_id(rs.getString("m_id"));
				dto.setM_name(rs.getString("m_name"));
				dto.setC_id(rs.getString("c_id"));
				dto.setCarrer_seq(rs.getString("carrer_seq"));
				dto.setYears(rs.getString("years"));
								
				list.add(dto);
				
			}
			
			return list;

		} catch (Exception e) {
			System.out.println("ReviewDAO.listCompany");
			e.printStackTrace();
		}
		
		return null;
		
	}

	public ArrayList<IreviewDTO> listIreview(String cdata_seq, HashMap<String, String> map) {
		
		try {
			
			String sql = "select\r\n"
					+ "    c.cdata_seq, c.cdata_name, ir.*, d.duty_name, m.m_name\r\n"
					+ "from COMPANY c\r\n"
					+ "    left outer join cmember cm on c.cdata_seq = cm.cdata_seq\r\n"
					+ "        left outer join ireview ir on cm.c_id = ir.c_id\r\n"
					+ "            left outer join duty d on d.duty_seq = ir.duty_seq\r\n"
					+ "                left outer join member m on m.m_id = ir.m_id";
			
			String where = String.format("where c.cdata_seq=%s", cdata_seq);
			
			sql += " " + where;
			
			
			if (map.get("isSearch").equals("y")) {
			 
				where = String.format("and d.duty_seq=%s", map.get("word"));
			 
				sql += " " + where;
			 
			}
			 
			
			
			pstat = conn.prepareStatement(sql);
			
			rs = pstat.executeQuery();
			
			ArrayList<IreviewDTO> list = new ArrayList<IreviewDTO>();
			
			while (rs.next()) {
				
				IreviewDTO dto = new IreviewDTO();
				
				/*private String ireview_seq;
				private String ireview_date;
				private String ireview_txt;
				private String ireview_title;
				private String m_id;
				private String c_id;
				private String duty_seq;*/
				
				dto.setCdata_seq(rs.getString("cdata_seq"));
				dto.setCdata_name(rs.getString("cdata_name"));
				dto.setIreview_seq(rs.getString("ireview_seq"));
				dto.setIreview_date(rs.getString("ireview_date"));
				dto.setIreview_txt(rs.getString("ireview_txt"));
				dto.setIreview_title(rs.getString("ireview_title"));
				dto.setM_id(rs.getString("m_id"));
				dto.setM_name(rs.getString("m_name"));
				dto.setC_id(rs.getString("c_id"));
				dto.setDuty_seq(rs.getString("duty_seq"));
				dto.setDuty_name(rs.getString("duty_name"));
								
				list.add(dto);
				
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("ReviewDAO.listIreview");
			e.printStackTrace();
		}
		
		return null;
		
	}
	
}
