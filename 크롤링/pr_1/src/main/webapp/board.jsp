<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.domain.tb_board"%>
<%@page import="com.smhrd.domain.boardDAO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
<link rel="stylesheet" href="./assets/css/media.css">
<link rel="stylesheet" href="./assets/css/main.css">
<link rel="stylesheet" href="./assets/css/board.css">

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


	<%
	boardDAO dao = new boardDAO();
	List<tb_board> cboardList = dao.contentsALl();
	System.out.println("되고있는중 : " + cboardList.size());
	pageContext.setAttribute("cboardList", cboardList);

	String bcro_title = request.getParameter("bcro_title");
	System.out.println("값 : " + bcro_title);
	%>




	<div class="contest_poster">
		<c:forEach var="bc" items="${cboardList}" varStatus="status">
				<br>
				<br>
				<br>
				<br>
				<br>
			<c:if test="${bc.cro_title eq bcro_title}">
				
				<h1>${bc.cro_title }</h2>
					<picture> <a href="<c:out value='${bc.cro_home}' />">
						<img src="<c:out value='${bc.cro_img }' />" class="yamy">
					</a> </picture>
	</div>
	<div class="contest_field">
		<table>
			<caption>공모전/대외활동 정보</caption>
			<tbody>

				<tr>
					<th>주최</th>
					<td><c:out value='${bc.cro_host }' /></td>
				</tr>
				<tr>
					<th>분야</th>
					<td><c:out value='${bc.cro_field }' /></td>
				</tr>
				<tr>
					<th>대회지역</th>
					<td><c:out value='${bc.cro_area }' /></td>
				</tr>
				<tr>
					<th>접수기간</th>
					<td><c:out value='${bc.cro_app }' /></td>
				</tr>
				<tr>
					<th>심사기간</th>
					<td><c:out value='${bc.cro_period }' /></td>
				</tr>
				<tr>
					<th>참가대상</th>
					<td><c:out value='${bc.cro_attend }' /></td>
				</tr>
				<tr>
					<th>시상내역</th>
					<td><c:out value='${bc.cro_awards }' /></td>
				</tr>
				<tr>
					<th>접수방법</th>
					<td><c:out value='${bc.crom_apply }' /></td>
				</tr>
				<tr>
					<th>관련홈페이지</th>
					<td><a href=''><c:out value='${bc.cro_home }' /></a></td>
				</tr>
			</tbody>

		</table>
		</c:if>
		</c:forEach>
</body>
</html>