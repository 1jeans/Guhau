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

@WebServlet("/member/comjoinok.do")
public class ComjoinOk extends HttpServlet {

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
		String path = req.getRealPath("/asset/pic/");
		
		System.out.println(path);
		
		int size = 1024 * 1204 * 10;
		
		String c_id = "";
		String c_pw = "";
		String c_tel = "";
		String c_email = "";
		String c_pic = "";
		String reg_seq = "";
		String cdata_seq = "";


//		
//		
//		CREATE TABLE cmember (
//				   c_id VARCHAR2(50) NOT NULL, /* 기업회원 아이디 */
//				   c_pw VARCHAR2(50) NOT NULL, /* 기업회원 비밀번호 */
//				   c_tel VARCHAR2(20) NOT NULL, /* 회사연락처 */
//				   c_email VARCHAR2(100) NOT NULL, /* 회사이메일 */
//				   c_pic VARCHAR2(100), /* 회사사진 */
//				   c_intro VARCHAR2(4000), /* 회사소개 */
//				   reg_seq NUMBER NOT NULL, /* 지역번호 */
//				   cdata_seq NUMBER NOT NULL, /* 기업번호 */
//				   c_ox VARCHAR2(5) DEFAULT 'n' NOT NULL, /* 기업회원탈퇴여부 */
//				   c_join DATE DEFAULT sysdate NOT NULL, /* 기업회원가입날짜 */
//				   c_activeox VARCHAR2(5) DEFAULT 'y' NOT NULL /* 기업활성화여부 */
//				);

		
		
		
		
		
		
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
			c_id = multi.getParameter("c_id");
			c_pw = multi.getParameter("c_pw");
			c_tel = multi.getParameter("c_tel");
			c_email = multi.getParameter("c_email");
			c_pic = multi.getFilesystemName("c_pic");
			reg_seq = multi.getParameter("reg_seq");
			cdata_seq = multi.getParameter("cdata_seq");

			

			
			if (c_pic == null) {
				c_pic = "deafult.png";

			}


			//4.
			CmemberDTO dto = new CmemberDTO();
			
			dto.setC_id(c_id);
			dto.setC_pw(c_pw);
			dto.setC_tel(c_tel);
			dto.setC_email(c_email);
			dto.setC_pic(c_pic);
			dto.setReg_seq(reg_seq);
			dto.setCdata_seq(cdata_seq);

			

		
		
			
			
			
			
			
			
			//MemberDTO(m_id=aaaa, m_pw=1111, m_name=aaaa, m_birth=19900101, m_tel=01012345678, m_email=aaaa@gmail.com, m_pic=01.png, m_address=null, m_ox=null, m_join=null, m_activeox=null, m_gender=m)

			System.out.println(dto);
			
			

			CmemberDAO dao = new CmemberDAO();
			

			result = dao.joinMember(dto);
			
			
			
		} catch (Exception e) {
			System.out.println("ComjoinOk.doGet");
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



















































