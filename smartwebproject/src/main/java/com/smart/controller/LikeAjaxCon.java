package com.smart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smart.domain.BoardDAO;

public class LikeAjaxCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String status = request.getParameter("status");
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		
	    BoardDAO dao = new BoardDAO();
		dao.updateLike(article_seq, status);
		
		int like = dao.getLike(article_seq);

		PrintWriter out = response.getWriter();
		out.print(like);*/
		System.out.println("LikeAjaxCon");
		request.setCharacterEncoding("UTF-8");
		
		String article_seq = request.getParameter("article_seq");
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardCount(article_seq);
		
		
		if(cnt > 0) {
			System.out.println("라이크+1 성공");

		}else {
			System.out.println("라이크 증가 실패");
		}
		//BoardCountCon?article_seq=${article_seq }
		//--------------------------------
		//response.sendRedirect("board_notice.jsp");
	}

}
