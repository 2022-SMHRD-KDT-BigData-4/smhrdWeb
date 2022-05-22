package com.smart.domain;

public class Board {
	private String article_seq; //글 순번
	private String article_title; //글 제목
	private String article_content; //글 내용
	private String article_cnt; //글 조회수
	private String mb_email; //글 작성자
	private String mb_nick; //글 작성닉네임
	private String article_type; //글 타입
	private String article_likes; //글 좋아요
	private String article_wdate; //등록일자
	private String article_rdate; //수정일자
	
	public Board(String article_seq, String article_title, String article_content, String article_cnt, String mb_email, String mb_nick,
			String article_type, String article_likes, String article_wdate, String article_rdate) {
		super();
		this.article_seq = article_seq;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_cnt = article_cnt;
		this.mb_email = mb_email;
		this.mb_nick = mb_nick;
		this.article_type = article_type;
		this.article_likes = article_likes;
		this.article_wdate = article_wdate;
		this.article_rdate = article_rdate;
	}
	
	public Board(String article_seq, String article_cnt) {
		super();
		this.article_seq = article_seq;
		this.article_cnt = article_cnt;
	}

	public Board() {
		
	}
	
	public String getArticle_seq() {
		return article_seq;
	}

	public String getArticle_title() {
		return article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public String getArticle_cnt() {
		return article_cnt;
	}

	public String getMb_email() {
		return mb_email;
	}
	
	public String getMb_nick() {
		return mb_nick;
	}

	public String getArticle_type() {
		return article_type;
	}

	public String getArticle_likes() {
		return article_likes;
	}
	
	public String getArticle_wdate() {
		return article_wdate;
	}

	public String getArticle_rdate() {
		return article_rdate;
	}

}
