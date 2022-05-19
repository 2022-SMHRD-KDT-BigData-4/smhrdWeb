package com.smart.domain;

public class Member {
	private String mb_email;
	private String mb_pw;
	private String mb_name;
	private String mb_nick;
	private String mb_gender;
	private String mb_curriculum;
	private String mb_class;
	private String mb_authority;

	public Member(String mb_email, String mb_pw, String mb_name, String mb_nick,
			String mb_gender, String mb_curriculum, String mb_class, String mb_authority) {
		super();
		this.mb_email = mb_email;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_nick = mb_nick;
		this.mb_gender = mb_gender;
		this.mb_curriculum = mb_curriculum;
		this.mb_class = mb_class;
		this.mb_authority = mb_authority;
	}
	
	public Member(String mb_email, String mb_pw) {
		super();
		this.mb_email = mb_email;
		this.mb_pw = mb_pw;
	}
	
	public Member() {

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

	public String getMb_gender() {
		return mb_gender;
	}

	public String getMb_currculum() {
		return mb_curriculum;
	}

	public String getMb_class() {
		return mb_class;
	}


	public String getmb_authority() {
		return mb_authority;
	}
	
	
}
