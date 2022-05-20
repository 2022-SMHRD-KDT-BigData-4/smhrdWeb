//package com.smart.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.smart.domain.Board;
//import com.smart.domain.BoardDAO;
//
//
//
//public class BoardListCon extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//
//	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		request.setCharacterEncoding("UTF-8");
//		
//		String article_seq = request.getParameter("article_seq");
//		String article_title = request.getParameter("article_title");
//		String article_content = request.getParameter("article_content");
//		String article_cnt = request.getParameter("article_cnt");
//		String mb_email = request.getParameter("mb_email");
//		String article_type = request.getParameter("article_type");
//		String article_likes = request.getParameter("article_likes");
//		
//		
//		Board ms_vo = new Board(article_seq, article_title, article_content, article_cnt, mb_email, article_type, article_likes);
//		
//		BoardDAO dao = new BoardDAO();
//		
//		int cnt = dao.selectBoard(ms_vo);
//		
//		if(cnt>0) {
//			System.out.println("목록갱신 성공!");
//			response.sendRedirect("notice.jsp");
//		}else {
//			System.out.println("목록갱신 실패");
//			response.sendRedirect("boradlist.jsp");
//		}
//		
//
//			
//	}
//
//}
