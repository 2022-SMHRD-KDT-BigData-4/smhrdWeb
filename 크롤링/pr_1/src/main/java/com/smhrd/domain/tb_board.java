package com.smhrd.domain;


public class tb_board {
	private String num;
	private String cro_title;
	private String cro_img;
	private String cro_host;
	private String cro_field;
	private String cro_attend;
	private String cro_app;
	private String cro_period;
	private String cro_area;
	private String cro_awards;
	private String cro_home;
	private String crom_apply;
	private String cro_date;
	// title 필드 
	public tb_board(String cro_title, String cro_img, String cro_field, String cro_date) {
		super();
		this.cro_title = cro_title;
		this.cro_img = cro_img;
		this.cro_field = cro_field;
		this.cro_date = cro_date;
	}
	
	// title get 
	
	
	public String getNum() {
		return num;
	}
	public String getCro_title() {
		return cro_title;
	}
	public String getCro_img() {
		return cro_img;
	}
	public String getCro_host() {
		return cro_host;
	}
	public String getCro_field() {
		return cro_field;
	}
	public String getCro_attend() {
		return cro_attend;
	}
	public String getCro_app() {
		return cro_app;
	}
	public String getCro_period() {
		return cro_period;
	}
	public String getCro_area() {
		return cro_area;
	}
	public String getCro_awards() {
		return cro_awards;
	}
	public String getCro_home() {
		return cro_home;
	}
	public String getCrom_apply() {
		return crom_apply;
	}
	public String getCro_date() {
		return cro_date;
	}
	public tb_board(String cro_title, String cro_img, String cro_host, String cro_field, String cro_attend, String cro_app, String cro_period,
			String cro_area, String cro_awards, String cro_home, String crom_apply) {
		super();
		this.cro_title = cro_title;
		this.cro_img = cro_img;
		this.cro_host = cro_host;
		this.cro_field = cro_field;
		this.cro_attend = cro_attend;
		this.cro_app = cro_app;
		this.cro_period = cro_period;
		this.cro_area = cro_area;
		this.cro_awards = cro_awards;
		this.cro_home = cro_home;
		this.crom_apply = crom_apply;
	}
	
}
