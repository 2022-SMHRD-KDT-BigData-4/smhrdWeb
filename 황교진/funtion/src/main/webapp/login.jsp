<%@page import="java.util.List"%>
<%@page import="com.smart.domain.MemberDAO"%>
<%@page import="com.smart.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="assets/css/media.css">
<link rel="stylesheet" type="text/css" href="assets/css/login.css">
</head>
<body>
	<div id="container" class="login">
        <h1 class="logo">
            <a href="LoginTitle.jsp">스마트타임</a>
        </h1>
        <form action="LoginCon" method="post">
            <p class="input">
                <input type="text" name="mb_email" maxlength="30" class="text" placeholder="아이디">
            </p>
            <p class="input">
                <input type="password" name="mb_pw" maxlength="30" class="text" placeholder="비밀번호">
            </p>
            <div>
            <p class="submit">
                <input type="submit" value="로그인" class="text">
            </p>
            </div>
            <label class="autologin">
                <input type="checkbox" name="autologin" value="1">
                로그인 유지
            </label>
            <p class="find">
                <a href="#">아이디/비밀번호 찾기</a>
            </p>
            <p class="register">
                <span>처음이신가요?</span>
                <a href="join.jsp">회원가입</a>
            </p>
        </form>
    </div>
</body>
</html>