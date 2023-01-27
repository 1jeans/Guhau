package com.test.guhau.member.general;

import lombok.Data;

@Data
public class ResumeDTO {

	private String resume_intro;
	private String resume_skill;
	private String resume_school;
	
	
	// 일반회원
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
	
}
