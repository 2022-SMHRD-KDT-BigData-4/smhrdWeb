package com.smart.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smart.domain.Member;
import com.smart.domain.MemberDAO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[JoinCon]");
		//post 방식 요청 데이터 인코딩
		request.setCharacterEncoding("UTF-8");
		
		String mb_email = request.getParameter("mb_email");
		String mb_pw = request.getParameter("mb_pw");
		String mb_name = request.getParameter("mb_name");
		String mb_nick = request.getParameter("mb_nick");
		String mb_gender = request.getParameter("mb_gender");
		String mb_curriculum = request.getParameter("mb_curriculum");
		String mb_class = request.getParameter("mb_class");
		String mb_authority = request.getParameter("mb_authority");	

		Member m_vo = new Member(mb_email, mb_pw, mb_name, mb_nick, mb_gender, mb_curriculum, mb_class, mb_authority);
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(m_vo);
		
		if(cnt>0) { //회원가입 성공
			System.out.println("회원가입 성공");
			//회원가입한 회원의 정보중에서 email 넘겨 페이지 이동
			//fowarding방식으로 정보 담기
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("joinEmail", mb_email);
			rd.forward(request, response);
			
		}else { //회원가입 실패
			System.out.println("회원가입 실패");
			response.sendRedirect("join.jsp");
		}
		
	}

}
