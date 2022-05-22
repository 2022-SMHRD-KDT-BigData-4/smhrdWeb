package com.smart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

import com.smart.domain.Board;




public class BoardCountCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[BoardCountCon]");
		// post방식 데이터 전송 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// email넣을때 세션에서 가져오기
		HttpSession session = request.getSession();
		
		Board boardCount = (Board)session.getAttribute("boardCount");
		
		//form태그 통해서 넘겨준 pw, tel, address가져오기request.
		String article_cnt = request.getParameter("article_cnt");
		String article_seq = request.getParameter("article_seq");
		
		Board b_vo = new Board(article_cnt,article_seq);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(m_vo);

		
		if(cnt>0) {
			System.out.println("회원정보 수정 성공");
			
			//수정된 값으로 loginMember 세션 값을 재설정
			session.setAttribute("loginMember", m_vo);
			
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("회원정보 수정 실패");
			response.sendRedirect("update.jsp");
		}
		
		
	}		
}
