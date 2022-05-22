package com.smart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smart.domain.Board;
import com.smart.domain.BoardDAO;

public class YoungPyoWriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[YoungPyoWriteCon]");
		//post 방식 요청 데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String article_seq = request.getParameter("article_seq");
		String article_title = request.getParameter("article_title");
		String article_content = request.getParameter("article_content");
		String article_cnt = request.getParameter("article_cnt");
		String mb_email = request.getParameter("mb_email");
		String mb_nick = request.getParameter("mb_nick");
		String article_type = request.getParameter("article_type");
		String article_likes = request.getParameter("article_likes");
		String article_wdate = request.getParameter("article_wdate");
		String article_rdate = request.getParameter("article_rdate");

		Board b_vo = new Board(article_seq, article_title, article_content, article_cnt, mb_email, mb_nick, article_type, article_likes, article_wdate, article_rdate);
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.insertBoard(b_vo);
		
		if(cnt>0) {
			System.out.println("글작성 성공!");
			response.sendRedirect("youngpyo.jsp");
		}else {
			System.out.println("글작성 실패");
			response.sendRedirect("youngpyo.jsp");
		}
	
	}

}
