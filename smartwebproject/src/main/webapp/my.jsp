<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.List"%>
<%@page import="com.smart.domain.MemberDAO"%>
<%@page import="com.smart.domain.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/media.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/my.css">  
</head>
<body>
	    <nav>
        <div class="wrap">
            <!-- 로고이미지,스마트타임 -->
            <div id="logo">
                <a href="main.jsp" class="mainimg"><img src="image/시계.png"></a>
                <p><span class="name multiple">스마트타임</span><span class="subname" onclick="location.href='main.html'">스마트인재개발원</span></p>
            </div>
            <!-- Nav 상단바 -->
            <div id="cate">
                <ul>
                    <li class="menu">
                        <a href="notice.jsp">공지사항</a>
                        <ul class="sub1">
                            <li><a href="notice.jsp">공지사항</a></li>
                            <li><a href="contest.jsp">공모전</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="free.jsp">게시판</a>
                        <ul class="sub2">
                            <li><a href="free.jsp">자유게시판</a></li>
                            <li><a href="question.jsp">질문게시판</a></li>
                            <li><a href="information.jsp">정보게시판</a></li>
                            <li><a href="anonymous.jsp">익명게시판</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="download.jsp">자료실</a>
                        <ul class="sub3">
                            <li><a href="download.jsp">자료실</a></li>
                            <li><a href="source.jsp">공용소스</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <a href="timetable.jsp">시간표</a>
                    </li>
                    <li class="menu">
                        <a href="fan.jsp">팬게시판</a>
                    </li>
                </ul>
            </div>
            <!-- 스인재웹, 내정보 상단아이콘 -->
            <div id="account">
                <a href="https://smhrd.or.kr"
                    title="스인재" class="icon web">스인재</a>
                <a href="#" title="내 정보" class="icon my">내 정보</a>
            </div>
        </div>
    </nav>
    <div>
        <div class="board_wrap">
            <h1 id="my">정보 수정</h1>
            <form action="memberUpdateCon" method="post">
                <dl>
                    <dt>아이디</dt>
                    <dd>
                    	${loginMember.mb_email }
                    	<select id='log' name='mb_email'><option value='${loginMember.mb_email }' selected/></select>
                       <%-- <input type="text" name="mb_email" id="mb_email" placeholder="아이디 입력">
                        <input type="button" value="중복 확인" onclick="emailCheck()"> --%>
                    </dd>
                </dl>
                <dl>
                    <dt>비밀번호</dt>
                    <dd><input type="password" name="mb_pw" class="pw1" id="pw1" placeholder="영문 숫자 특수문자 포함 8~20자 입력"></dd>
                </dl>
                <dl>
                    <dt>비밀번호 확인</dt>
                    <dd><input type="password" class="pw2" id="pw2" placeholder="비밀번호 재입력"></dd>
                    <dt></dt>
                    <dd><font id="chkpw" size="2"></font></dd>
                </dl>
                
                <dl>
                    <dt>닉네임</dt>
                    <dd>
                        <input type="text" name="mb_nick" id="mb_nick" placeholder="닉네임 입력">
                        <input type="button" value="중복 확인" onclick="nickCheck()">
                    </dd>
                </dl>
            
                <input type="button" id="back" value="뒤로가기" onclick="location.href ='login.html'">
                <input type="submit" id="join" value="정보수정" onclick="joinform_check();">
    </div>
    <!-- <script src="assets/js/join.js?=ver123"></script> -->
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!-- 스크립트 주소 -->
	<script>$("#log").hide();</script>
</body>
</html>
