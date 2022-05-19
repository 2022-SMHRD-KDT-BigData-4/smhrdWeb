package com.smhrd.domain;

import java.sql.Date;

public class tb_Member {
	private String mb_email;
	private String mb_pw;
	private String mb_name;
	private	String mb_nick;
	private String mb_addr;
	private String mb_phone;
	private String mb_gender;
	private String mb_curriculum;
	private String mb_class;
	private String mb_authority;
	private String mb_joindate;
	
	public tb_Member(String mb_email, String mb_pw, String mb_name, String mb_nick, String mb_addr, String mb_phone,
			String mb_gender, String mb_curriculum, String mb_class, String mb_authority, String mb_joindate) {
		super();
		this.mb_email = mb_email;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_addr = mb_addr;
		this.mb_phone = mb_phone;
		this.mb_gender = mb_gender;
		this.mb_curriculum = mb_curriculum;
		this.mb_class = mb_class;
		this.mb_authority = mb_authority;
		this.mb_joindate = mb_joindate;
	}

	public String getMb_email() {
		return mb_email;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public String getMb_nick() {
		return mb_nick;
	}

	public String getMb_addr() {
		return mb_addr;
	}

	public String getMb_phone() {
		return mb_phone;
	}

	public String getMb_gender() {
		return mb_gender;
	}

	public String getMb_curriculum() {
		return mb_curriculum;
	}

	public String getMb_class() {
		return mb_class;
	}

	public String getMb_authority() {
		return mb_authority;
	}

	public String getMb_joindate() {
		return mb_joindate;
	}
	
}