package com.smart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smart.domain.Member;
import com.smart.domain.MemberDAO;


public class memberUpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[MemberUpdateCon]");
		request.setCharacterEncoding("UTF-8");
		
		
		// email넣을때 세션에서 가져오기
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		String email = loginMember.getMb_email();
		
		//form태그 통해서 넘겨준  pw, nickname가져오기
		String mb_email = request.getParameter("mb_email");
		System.out.println("testE : "+mb_email);
		String mb_pw = request.getParameter("mb_pw");
		System.out.println("testPW : "+mb_pw);
		String mb_nick = request.getParameter("mb_nick");
		System.out.println("testNI : "+mb_nick);
		
		
		Member m_vo = new Member(mb_email, mb_pw, mb_nick);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(m_vo);
		//System.out.println(cnt);
		
		if(cnt>0) {
			System.out.println("회원정보 수정 성공");
			
			//수정된 값으로 loginMember 세션 값을 재설정
			session.setAttribute("loginMember", m_vo);
			
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("회원정보 수정 실패");
			response.sendRedirect("my.jsp");
		}
		
		
		
	}

}
