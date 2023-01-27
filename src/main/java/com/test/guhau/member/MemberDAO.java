package com.test.guhau.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.test.guhau.DBUtil;
import com.test.guhau.member.general.CarrerDTO;
import com.test.guhau.member.general.ResumeDTO;
import com.test.guhau.member.general.ResumeListDTO;

public class MemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public MemberDAO() {
		conn = DBUtil.open();
	}

	

	public int unRegisterMember(String id) {

		try {

			String sql = "update member set m_ox= 'y' where m_id = ? ";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, id);

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("MemberDAO.unRegisterMember");
			e.printStackTrace();
		}
		return 0;
	}

	public int edit(MemberDTO dto) {

		try {

			String sql = "update member set m_name = ?, m_email = ?, m_tel = ?, m_address = ? where m_id = ?";

			//System.out.println(dto.getM_id());

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getM_name());
			pstat.setString(2, dto.getM_email());
			pstat.setString(3, dto.getM_tel());
			pstat.setString(4, dto.getM_address());
			pstat.setString(5, dto.getM_id());

			return pstat.executeUpdate();

		} catch (Exception e) {
			System.out.println("MemberDAO.edit");
			e.printStackTrace();
		}

		return 0;
	}

	public MemberDTO getMember(String id) {
		try {

			String sql = "select * from member where m_id = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, id);
			rs = pstat.executeQuery();

			if (rs.next()) {

				MemberDTO dto = new MemberDTO();

				dto.setM_id(rs.getString("m_id"));
				dto.setM_pw(rs.getString("m_pw"));
				dto.setM_activeox(rs.getString("m_activeox"));
				dto.setM_address(rs.getString("m_address"));
				dto.setM_birth(rs.getString("m_birth"));
				dto.setM_email(rs.getString("m_email"));
				dto.setM_gender(rs.getString("m_gender"));
				dto.setM_join(rs.getString("m_join"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_ox(rs.getString("m_ox"));
				dto.setM_pic(rs.getString("m_pic"));
				dto.setM_tel(rs.getString("m_tel"));

				return dto;

			}

		} catch (Exception e) {
			System.out.println("MemberDAO.getMember");
			e.printStackTrace();
		}
		return null;
	}

	public ArrayList<SupportingDTO> getList(String m_id) {
		
		try {
			
			String sql = "select t.emp_title, e.m_emp_date, t.emp_deadline from empmember e inner join employment t  on e. emp_seq = t.emp_seq inner join member m on  e.m_id = m.m_id where m.m_id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			System.out.println(m_id);
			
			pstat.setString(1, m_id);
			rs = pstat.executeQuery();
			
			ArrayList<SupportingDTO> list = new ArrayList<SupportingDTO>();
			
			while (rs.next()) {
				
				SupportingDTO dto = new SupportingDTO();

				dto.setEmp_title(rs.getString("emp_title"));
				dto.setM_emp_date(rs.getString("m_emp_date"));
				dto.setEmp_deadline(rs.getString("emp_deadline"));
				
				list.add(dto);
			}
			
			return list;
			
		} catch (Exception e) {
			System.out.println("MemberDAO.getList");
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	public ArrayList<MemberTagDTO> getTagList(String m_id) {
		
		try {
			
			String sql = "select g.tag_name from member m inner join membertag t on m.m_id = t.m_id inner join tag g on t.tag_seq = g.tag_seq where m.m_id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, m_id);
			rs = pstat.executeQuery();
			
			ArrayList<MemberTagDTO> taglist = new ArrayList<MemberTagDTO>();
			
			while(rs.next()) {
				
				MemberTagDTO dto = new MemberTagDTO();
				
				dto.setTag_name(rs.getString("tag_name"));
				
				taglist.add(dto);
			}
			
			return taglist;
			
		} catch (Exception e) {
			System.out.println("MemberDAO.getTagList");
			e.printStackTrace();
		}
		return null;
	}
	
	
	
	
	

	public int addResume(ResumeDTO rdto) {
		
		try {
			
			String sql = "insert into resume values (seqresume.nextVal, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, rdto.getResume_intro());
			pstat.setString(2, rdto.getResume_school());
			pstat.setString(3, rdto.getResume_skill());
			pstat.setString(4, rdto.getM_id());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.addResume");
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	
		
	public int addCarrer(CarrerDTO cdto) {
		
		try {
			
			String sql = "insert into carrer values (seqcarrer.nextVal, ?, ?, ?, ?, ?)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, cdto.getCdata_seq());;
			pstat.setString(2, cdto.getM_id());
			pstat.setString(3, cdto.getDuty_name());
			pstat.setString(4, cdto.getCarrer_startdate());
			pstat.setString(5, cdto.getCarrer_enddate());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.addCarrer");
			e.printStackTrace();
		}
		
		return 0;
	}

	
	
	
	
	public int tagEdit(MemberTagDTO tdto) {
		try {
			
			String sql = "update membertag set tag_seq = ? where m_id = ?";
			
			pstat = conn.prepareStatement(sql);

			pstat.setString(1, tdto.getTag_name());
			pstat.setString(2, tdto.getM_id());

			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.tagEdit");
			e.printStackTrace();
		}
		return 0;
	}

	
	
public int joinMember(MemberDTO dto) {
		
		try {
			
			
			//insert into member values ('sonjiyeon', '1234', '손지연', '19910101', '01012341234', 'sjy@naver.com', 'pic', 'address', default, sysdate, default, 'f');

			String sql = "insert into member (m_id, m_pw, m_name, m_birth, m_tel, m_email, m_pic, m_address, m_ox, m_join, m_activeox, m_gender) values (?,?,?,?,?,?,?,?,default,default,default,?)";
	         
	         
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getM_id());
			pstat.setString(2, dto.getM_pw());
			pstat.setString(3, dto.getM_name());
			pstat.setString(4, dto.getM_birth());
			pstat.setString(5, dto.getM_tel());
			pstat.setString(6, dto.getM_email());
			pstat.setString(7, dto.getM_pic());
			pstat.setString(8, dto.getM_address());
			pstat.setString(9, dto.getM_gender());

			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.joinMember");
			e.printStackTrace();
		}

		return 0;
	}


	public MemberDTO login(MemberDTO dto) {
		
		try {
			

			String sql = "select * from member where m_id=? and m_pw=?";
					
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getM_id());
			pstat.setString(2, dto.getM_pw());
			
			
			rs = pstat.executeQuery();
			
			if (rs.next()) {
				
				
				dto.setM_name(rs.getString("m_name"));
				
				
				
				return dto;
				
			}
			
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.login");
			e.printStackTrace();
		}
		
		
		return null;
	}
	

	public int joinMember(CmemberDTO dto) {
		
		try {
			
			
			//insert into member values ('sonjiyeon', '1234', '손지연', '19910101', '01012341234', 'sjy@naver.com', 'pic', 'address', default, sysdate, default, 'f');

			String sql = "insert into member (c_id, c_pw, c_tel, c_email, c_pic, c_intro, reg_seq, cdata_seq, c_ox, c_join, c_activeox) values (?,?,?,?,?,?,?,?,default,default,default)";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, dto.getC_id());
			pstat.setString(2, dto.getC_pw());
			pstat.setString(3, dto.getC_tel());
			pstat.setString(4, dto.getC_email());
			pstat.setString(5, dto.getC_pic());
			pstat.setString(6, dto.getC_intro());
			pstat.setString(7, dto.getReg_seq());
			pstat.setString(8, dto.getCdata_seq());


			
			return pstat.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("CmemberDAO.joinMember");
			e.printStackTrace();
		}

		return 0;
	}


	public MemberDTO getMember_1(String m_email) {
	      
	      
	      try {
	         
	         
	         //insert into member values ('sonjiyeon', '1234', '손지연', '19910101', '01012341234', 'sjy@naver.com', 'pic', 'address', default, sysdate, default, 'f');

	         String sql = "select m_id as id, m_pw as pw from member where m_email = ? union select c_id as id, c_pw as pw from cmember where c_email = ?";
	         
	         
	         pstat = conn.prepareStatement(sql);
	         
	         pstat.setString(1, m_email);
	         pstat.setString(2, m_email);
	         
	         rs = pstat.executeQuery();
	         
	         if (rs.next()) {
	            
	            MemberDTO dto = new MemberDTO();
	            
	            dto.setM_id(rs.getString("id"));
	            dto.setM_pw(rs.getString("pw"));
	            
	            return dto;
	            
	         }
	         
	         
	      } catch (Exception e) {
	         System.out.println("MemberDAO.getMember");
	         e.printStackTrace();
	      }
	      
	      
	      
	      return null;
	   }
	
	
	
	
	public MemberDTO getC_Member(String c_id) {
		
		try {
			
			String sql = "select * \r\n"
					+ "from region \r\n"
					+ "    join cmember\r\n"
					+ "    on cmember.reg_seq = region.reg_seq\r\n"
					+ "        join company\r\n"
					+ "        on cmember.cdata_seq = company.cdata_seq\r\n"
					+ "where c_id = ? and c_ox ='n'";
			
			pstat = conn.prepareStatement(sql);
	         
	        pstat.setString(1, c_id);
	         
	        rs = pstat.executeQuery();
	         
	        System.out.println(c_id);
	         if(rs.next()) {
	            
	        	MemberDTO dto = new MemberDTO();
	        	
	            dto.setC_tel(rs.getString("c_tel"));
	            dto.setC_email(rs.getString("c_email"));
	            dto.setC_pic(rs.getString("c_pic"));
	            dto.setC_intro(rs.getString("c_intro"));
	            dto.setC_ox(rs.getString("c_ox"));
	            dto.setReg_name(rs.getString("reg_name"));
	            dto.setCdata_name(rs.getString("cdata_name"));
	            dto.setC_join(rs.getString("c_join"));
	            dto.setC_activeox(rs.getString("c_activeox"));
	            
	            
	            return dto;
	            
	            
	         }
			
		} catch (Exception e) {
			System.out.println("MemberDAO.getC_Member");
			e.printStackTrace();
		}
		
		return null;
	}

	public int c_unregister(String c_id) {
		
		try {
			
			String sql = "UPDATE cmember SET c_ox = 'y' WHERE c_id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, c_id);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.c_unregister");
			e.printStackTrace();
		}
		
		return 0;
	}

	public MemberDTO CInfoEdit(String c_id) {
		
		try {
			
			String sql = "select * \r\n"
					+ "from region \r\n"
					+ "    join cmember\r\n"
					+ "    on cmember.reg_seq = region.reg_seq\r\n"
					+ "        join company\r\n"
					+ "        on cmember.cdata_seq = company.cdata_seq\r\n"
					+ "where c_id = ? and c_ox ='n'";
			
			pstat = conn.prepareStatement(sql);
	         
	        pstat.setString(1, c_id);
	         
	        rs = pstat.executeQuery();
	         
	         if(rs.next()) {
	            
	        	MemberDTO dto = new MemberDTO();
	        	
	        	dto.setReg_name(rs.getString("reg_name"));
	        	dto.setC_email(rs.getString("c_email"));
	        	dto.setC_tel(rs.getString("c_tel"));
	        	dto.setCdata_name(rs.getString("cdata_name"));
	        	dto.setReg_seq(rs.getString("reg_seq"));
	            
	            return dto;
	            
	            
	         }
			
			
		} catch (Exception e) {
			System.out.println("MemberDAO.CInfoEdit");
			e.printStackTrace();
		}
		
		return null;
	}

	public int c_info_editok(String c_id) {
		
		try {
			
			String sql = "UPDATE cmember SET c_ox = 'y' WHERE c_id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			pstat.setString(1, c_id);
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.c_info_editok");
			e.printStackTrace();
		}
		
		return 0;
	}

	public int CInfoEditOK(MemberDTO dto) {
		
		try {
			
			String sql = "UPDATE cmember SET c_email = ?, c_tel = ?, reg_seq = ?  WHERE c_id = ?";
			
			pstat = conn.prepareStatement(sql);
			
			
			pstat.setString(1, dto.getC_email());
			pstat.setString(2, dto.getC_tel());
			pstat.setString(3, dto.getReg_seq());
			pstat.setString(4, dto.getC_id());
			
			return pstat.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("MemberDAO.CInfoEditOK");
			e.printStackTrace();
		}
		
		return 0;
	}



	
	 public int editResume(ResumeDTO rdto) {
	 
	 try {
	 
	 String sql = "update resume set resume_intro= ?, resume_school=?, resume_skill=? where m_id=?" ;
	 
	 pstat = conn.prepareStatement(sql);
	 
	 pstat.setString(1, rdto.getResume_intro()); pstat.setString(2,
	 rdto.getResume_school()); pstat.setString(3, rdto.getResume_skill());
	 pstat.setString(4, rdto.getM_id());
	 
	 return pstat.executeUpdate();
	 
	 } catch (Exception e) { System.out.println("MemberDAO.editResume");
	 e.printStackTrace(); }
	 
	 return 0; }
	 
	 
	 
	 public int editCarrer(CarrerDTO cdto) {
	 
	 try {
	 
	 String sql = "update carrer set cdata_seq = ?, duty_seq = ?, carrer_startdate = ?, carrer_enddate = ? where m_id = ?";
	 
	 pstat = conn.prepareStatement(sql);
	 
	 pstat.setString(1, cdto.getCdata_seq()); 
	 pstat.setString(2, cdto.getDuty_name()); 
	 pstat.setString(3, cdto.getCarrer_startdate());
	 pstat.setString(4, cdto.getCarrer_enddate()); 
	 pstat.setString(5, cdto.getM_id());
	 
	 return pstat.executeUpdate();
	 
	 } catch (Exception e) { System.out.println("MemberDAO.editCarrer");
	 e.printStackTrace(); } return 0; }



	public ArrayList<ResumeListDTO> getResumeList(String m_id) {
		try {
			
			String sql = "select *  from member m\r\n"
					+ "            inner join carrer c\r\n"
					+ "                on c.m_id = m.m_id\r\n"
					+ "                    inner join resume r\r\n"
					+ "                        on r.m_id = m.m_id\r\n"
					+ "                            inner join duty d\r\n"
					+ "                                on d.duty_seq = c.duty_seq\r\n"
					+ "                                    inner join company cp\r\n"
					+ "                                        on cp.cdata_seq = c.cdata_seq\r\n"
					+ "                                            where m.m_id=?\r\n"
					+ "                                                order by resume_seq desc";
			
			pstat = conn.prepareStatement(sql);
			 
			pstat.setString(1, m_id); 
			
			rs = pstat.executeQuery();
	         
			ArrayList<ResumeListDTO> rlist = new ArrayList<ResumeListDTO>();
			
	         while(rs.next()) {
	            
	        	ResumeListDTO dto = new ResumeListDTO();
	        	
	        	dto.setResume_intro(rs.getString("resume_intro"));
	        	dto.setResume_school(rs.getString("resume_school"));
	        	dto.setResume_skill(rs.getString("resume_skill"));
	        	dto.setCdata_seq(rs.getString("cdata_name"));
	        	dto.setDuty_name(rs.getString("duty_name"));
	        	dto.setCarrer_startdate(rs.getString("carrer_startdate"));
	        	dto.setCarrer_enddate(rs.getString("carrer_enddate"));
	        	 
	        	rlist.add(dto);
				}
				
				return rlist;
			 
		} catch (Exception e) {
			System.out.println("MemberDAO.getResumeList");
			e.printStackTrace();
		}
		return null;
	}

	
	
	


}

	
	
	
	




























































