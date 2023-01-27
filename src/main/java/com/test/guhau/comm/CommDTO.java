package com.test.guhau.comm;

import lombok.Data;

@Data
public class CommDTO {
	
	private String comm_seq;
	private String comm_cate;
	private String comm_title;
	private String comm_txt;
	private String comm_date;
	private String m_id;
	private String comm_count;
	private String comm_bancount;
	private String duty_seq;
	private String comm_black;
	
	private String m_name;
	
	private String duty_name; //새로추가한거
	
	
 
}







//CREATE TABLE commuity (
//		comm_seq NUMBER NOT NULL, /* 커뮤니티번호 */
//		comm_cate VARCHAR2(5) NOT NULL, /* 커뮤니티카테고리 */
//		comm_title VARCHAR2(100) NOT NULL, /* 커뮤니티제목 */
//		comm_txt VARCHAR2(4000) NOT NULL, /* 커뮤니티내용 */
//		comm_date DATE DEFAULT sysdate NOT NULL, /* 커뮤니티게시날짜 */
//		m_id VARCHAR2(50) NOT NULL, /* 일반회원 아이디 */ 		-----------------FK
//		comm_count NUMBER DEFAULT 0 NOT NULL, /* 커뮤니티조회수 */
//		comm_bancount NUMBER DEFAULT 0 NOT NULL, /* 커뮤니티신고누적수 */
//		duty_seq NUMBER NOT NULL, /* 직무번호 */				-----------------------FK						
//		comm_black VARCHAR2(5) DEFAULT 'n' NOT NULL /* 커뮤니티블랙리스트 */
//	);