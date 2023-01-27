package com.test.guhau.member.general;

import lombok.Data;

@Data
public class ResumeListDTO {
	
	//resume
	private String resume_intro;
	private String resume_skill;
	private String resume_school;
	
	//carrer
	private String cdata_seq;
	private String carrer_startdate;
	private String carrer_enddate;
	
	
	// 일반회원
	private String m_id;
	
	// duty
	private String duty_seq;
	private String duty_name;

}
