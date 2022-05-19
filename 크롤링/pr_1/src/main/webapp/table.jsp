<%@page import="com.smhrd.domain.tb_board"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>






<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC를 이용한 데이터베이스 테이블 만들기</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>스마트타임</title>
<link rel="stylesheet" href="./assets//css/media.css">
<link rel="stylesheet" href="./assets/css/main.css">

</head>
<body>

	<nav>
		<div class="wrap">
			<!-- 로고이미지,스마트타임 -->
			<div id="logo">
				<a href="/html,css,js/html/main.html" class="mainimg"><img
					src="/이미지/시계.png"></a>
				<p>
					<span class="name multiple">스마트타임</span><span class="subname"
						onclick="location.href='main.html'">스마트인재개발원</span>
				</p>
			</div>
			<!-- Nav 상단바 -->
			<div id="cate">
				<ul>
					<li class="menu"><a href="/스마트타임/main2.html">공지사항</a>
						<ul class="sub1">
							<li><a href="/html,css,js/html/Login스마트타임.html">공지사항</a></li>
							<li><a href="#">공모전</a></li>
						</ul></li>
					<li class="menu"><a href="/스마트타임/main2.html">게시판</a>
						<ul class="sub2">
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">질문게시판</a></li>
							<li><a href="#">정보게시판</a></li>
							<li><a href="#">익명게시판</a></li>
						</ul></li>
					<li class="menu"><a href="/스마트타임/main2.html">자료실</a>
						<ul class="sub3">
							<li><a href="#">자료실</a></li>
							<li><a href="#">공용소스</a></li>
						</ul></li>
					<li class="menu"><a href="/스마트타임/main2.html">시간표</a></li>
					<li class="menu"><a href="/스마트타임/main2.html">팬게시판</a></li>
				</ul>
			</div>
			<!-- 스인재웹, 내정보 상단아이콘 -->
			<div id="account">
				<a
					href="https://smhrd.or.kr/?utm_source=google&utm_medium=search&utm_campaign=all_search&gclid=CjwKCAjwve2TBhByEiwAaktM1ERX55CmehfPPfe_N3y9vOM4MJ0_YBXbrmT8UcpBOxtIUTC4uMkcFhoCu2wQAvD_BwE"
					title="스인재" class="icon web">스인재</a> <a href="#" title="내 정보"
					class="icon my">내 정보</a>
			</div>
		</div>
	</nav>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%
	boardDAO dao = new boardDAO();
	List<tb_board> boardList = dao.titleAll();
	System.out.print("되고있는중" + boardList.size());
	pageContext.setAttribute("boardList", boardList);
	%>

	<table border="1">
		<tr>
			<td>NUM</td>

			<td>제목</td>
	
			<c:forEach var="b" items="${boardList}" varStatus="status">
		</tr>
		<td><c:out value='${b.num }' /></td>
		<td ><a href="./board.jsp?bcro_title=${b.cro_title }"><c:out value='${b.cro_title }' /></a></td>
		</tr>
		</c:forEach>
	</table>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>


</body>
</html>