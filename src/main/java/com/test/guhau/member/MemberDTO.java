package com.test.guhau.member;

import java.util.ArrayList;

import lombok.Data;

@Data
public class MemberDTO {

	// 일반회언
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_birth;
	private String m_tel;
	private String m_email;
	private String m_pic;
	private String m_address;
	private String m_ox;
	private String m_join;
	private String m_activeox;
	private String m_gender;
	
	// 이력서
	private String resume_seq;
	private String resume_intro;
	private String resume_school;
	private String resume_skill;
	
	// 경력
	private String carrer_seq;
	private String carrer_startdate;
	private String carrer_enddate;
	
	// 직무
	private String duty_seq;
	private String duty_name;
	
	
	// 지원현황
	private String m_emp_seq;
	private String m_emp_check;
	private String emp_seq;
	private String m_emp_date;
	
	// 채용공고 
	private String emp_date;
	private String emp_pay;
	private String emp_deadline;
	private String emp_career;
	private String emp_title;
	private String emp_txt;
	
	// 일반회원 관심 태그
	private String tag_name;
	
	// 기업회원
		private String c_id;
		private String c_pw;
		private String c_tel;
		private String c_email;
		private String c_pic;
		private String c_intro;
		private String c_name;
		private String c_ox;
		private String reg_seq;
		private String cdata_seq;
		private String reg_name;
		private String c_join;
		private String c_activeox;
		private String cdata_name;
	
}
