 package com.test.guhau.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/member/joinok.do")
public class JoinOk extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//RegisterOk.java
		//1. 인코딩
		//2. 파일 업로드
		//3. 데이터 가져오기
		//4. DB 작업 > DAO 위임 > insert
		//5. 결과
		//6. 피드백
		
		//1.
		req.setCharacterEncoding("UTF-8");
		
		//2.
		String path = req.getRealPath("/asset/images/");
		
		System.out.println(path);
		
		int size = 1024 * 1204 * 10;
		
		String m_id = "";
		String m_pw = "";
		String m_email = "";
		String m_name = "";
		String m_birth = "";
		String m_gender = "";
		String m_tel = "";
		String m_pic = "";

		
//		
//		CREATE TABLE member (
//			    m_id       VARCHAR2(50) NOT NULL, /* 일반회원 아이디 */
//			    m_pw       VARCHAR2(50) NOT NULL, /* 일반회원 비밀번호 */
//			    m_name     VARCHAR2(50) NOT NULL, /* 일반회원 이름 */
//			    m_birth    VARCHAR2(10) NOT NULL, /* 일반회원 생년월일 */
//			    m_tel      VARCHAR2(20) NOT NULL, /* 일반회원 연락처 */
//			    m_email    VARCHAR2(100) NOT NULL, /* 일반회원 이메일 */
//			    m_pic      VARCHAR2(100), /* 일반회원 사진 */
//			    m_address  VARCHAR2(500), /* 일반회원 주소 */
//			    m_ox       VARCHAR2(5) DEFAULT 'n' NOT NULL, /* 일반회원탈퇴여부 */
//			    m_join     DATE DEFAULT sysdate NOT NULL, /* 일반회원가입날짜 */
//			    m_activeox VARCHAR2(5) DEFAULT 'y' NOT NULL, /* 일반회원활성화여부 */
//			    m_gender   VARCHAR2(5) NOT NULL /* 성별 */
//		
//		
		
		
		
		int result = 0;
		
		try {
			
			MultipartRequest multi = new MultipartRequest(
											req,
											path,
											size,
											"UTF-8",
											new DefaultFileRenamePolicy()
										);
		
			//3.
			m_id = multi.getParameter("m_id");
			m_pw = multi.getParameter("m_pw");
			m_email = multi.getParameter("m_email");
			m_name = multi.getParameter("m_name");
			m_birth = multi.getParameter("m_birth");
			m_gender = multi.getParameter("m_gender");
			m_tel = multi.getParameter("m_tel");
			m_pic = multi.getFilesystemName("m_pic");
			
			
			if (m_pic == null) {
				m_pic = "deafult.png";

			}


			//4.
			MemberDTO dto = new MemberDTO();
			
			dto.setM_id(m_id);
			dto.setM_pw(m_pw);
			dto.setM_email(m_email);
			dto.setM_name(m_name);
			dto.setM_birth(m_birth);
			dto.setM_gender(m_gender);
			dto.setM_tel(m_tel);
			dto.setM_pic(m_pic);
			
			
			//MemberDTO(m_id=aaaa, m_pw=1111, m_name=aaaa, m_birth=19900101, m_tel=01012345678, m_email=aaaa@gmail.com, m_pic=01.png, m_address=null, m_ox=null, m_join=null, m_activeox=null, m_gender=m)

			System.out.println(dto);
			
			

			MemberDAO dao = new MemberDAO();
			

			result = dao.joinMember(dto);
			
			
			
		} catch (Exception e) {
			System.out.println("JoinOk.doGet");
			e.printStackTrace();
		}
		
		//6.
		if (result == 1) {
			resp.sendRedirect("/guhau/member/login.do");
		} else {
			PrintWriter writer = resp.getWriter();
			writer.print("<script>");
			writer.print("alert('failed');");
			writer.print("history.back();");
			writer.print("</script>");
			writer.close();			
		}		
	}
}



















































