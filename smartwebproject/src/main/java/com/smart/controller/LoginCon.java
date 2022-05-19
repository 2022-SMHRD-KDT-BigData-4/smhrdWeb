package com.smart.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smart.domain.Member;
import com.smart.domain.MemberDAO;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("[LoginCon]");
		// post 방식으로 데이터 전송 시 인코딩
		request.setCharacterEncoding("UTF-8");
		
		// 아이디, 비밀번호를 받아와서
		String mb_email = request.getParameter("mb_email");
		String mb_pw = request.getParameter("mb_pw");
		// Member객체에 담기
		Member m_vo = new Member(mb_email, mb_pw);
		
		MemberDAO dao = new MemberDAO();
		Member loginMember = dao.selectMember(m_vo);
		
		if(loginMember != null) {
			//로그인 성공
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			response.sendRedirect("notice.jsp");
		}else {
			//로그인 실패
			System.out.println("로그인 실패");
			response.sendRedirect("login.jsp");
		}
	}

}