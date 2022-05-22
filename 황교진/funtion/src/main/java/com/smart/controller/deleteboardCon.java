package com.smart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smart.domain.Member;
import com.smart.domain.BoardDAO;


public class deleteboardCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardseq = Integer.parseInt(request.getParameter("boardseq"));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.deleteOneBoard(boardseq);
		
		if(cnt>0) {
			System.out.println("게시글삭제 성공");
		}else {
			System.out.println("게시글삭제 실패");
		}
		
		response.sendRedirect("notice.jsp");
	}
	

}
