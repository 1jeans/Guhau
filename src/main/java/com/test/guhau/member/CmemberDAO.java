package com.test.guhau.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CmemberDAO {

	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;

	public CmemberDAO() {
			// conn = DBUtil.open();
			conn = com.test.guhau.DBUtil.open();
		}

	public CmemberDTO login(CmemberDTO dto) {

		try {

			String sql = "select * from cmember where c_id=? and c_pw=?";
			
			System.out.println(dto);

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getC_id());
			pstat.setString(2, dto.getC_pw());

			rs = pstat.executeQuery();

			if (rs.next()) {

				CmemberDTO result = new CmemberDTO();

				dto.setC_intro("intro");

				return dto;

			}

		} catch (Exception e) {
			System.out.println("CmemberDAO.login");
			e.printStackTrace();
		}

		return null;

	}
	
	public int joinMember(CmemberDTO dto) {
		
		try {
			
			
			//insert into member values ('sonjiyeon', '1234', '손지연', '19910101', '01012341234', 'sjy@naver.com', 'pic', 'address', default, sysdate, default, 'f');

			String sql = "insert into cmember (c_id, c_pw, c_tel, c_email, c_pic, c_intro, reg_seq, cdata_seq, c_ox, c_join, c_activeox) values (?,?,?,?,?,?,?,?,default,default,default)";
			
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
			System.out.println("MemberDAO.joinMember");
			e.printStackTrace();
		}

		return 0;
	}

}

//이름이 [com.test.guhau.member.ComLoginOk]과 [com.test.guhau.member.LoginOk]인 두 서블릿들 모두 url-pattern [/member/loginok.do]에 매핑되어 있는데, 이는 허용되지 않습니다.










