<%@page import="java.util.List"%>
<%@page import="com.smart.domain.MemberDAO"%>
<%@page import="com.smart.domain.Member"%>
<%@page import="com.smart.domain.BoardDAO"%>
<%@page import="com.smart.domain.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>시간표</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/media.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/tableMain.css"> 
</head>
<body>
    <nav>
        <div class="wrap">
            <!-- 로고이미지,스마트타임 -->
            <div id="logo">
                <a href="main.jsp" class="mainimg"><img src="image/시계.png"></a>
                <p><span class="name multiple">스마트타임</span><span class="subname"
                        onclick="location.href='main.jsp'">스마트인재개발원</span></p>
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
                            <li><a href="smartfood.jsp">스마트맛집</a></li>
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
            <div id="account">
                <a href="https://smhrd.or.kr"
                    title="스인재" class="icon web">스인재</a>
                <a href="my.jsp" title="내 정보" class="icon my">내 정보</a>
            </div>
            <!-- 시간표 선택 -->
            <aside><a href="image/스인재로고.jpg"></a>
                <form class="select">
                    <select id="mainClass" onchange="javascript:flip();">
                        <option url="image/스인재로고.jpg">반을 선택하세요</option>
                        <option url="image/시간표/빅데이터A.png" value='dataA'>빅데이터A반</option>
                        <option url="image/시간표/빅데이터1.png" value='dataB'>빅데이터B반</option>
                        <option url="image/시간표/인공지능1.png" value='aiA'>인공지능A반</option>
                        <option url="image/시간표/인공지능2.png" value='aiB'>인공지능B반</option>
                        <option url="image/시간표/인공지능E.PNG" value='adE'>인공지능E반</option>
                        <option url="image/시간표/파이썬1.png" value='pythonA'>파이썬A반</option>
                    </select>
                </form>

                <img src="image/스인재로고.jpg" id="myimage">

                <script type="text/javascript" language='javascript'>
                    // place this after <body> to run it after body has loaded.
                    var myimage = document.getElementById('myimage');
                    var mainClass = document.getElementById('mainClass');
                </script>
            </aside>
    </nav>
	<!-- <script src="assets/js/join.js?=ver123"></script> -->
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!-- 스크립트 주소 -->
	<script type="text/javascript" language='javascript'>

        function flip() {
            myimage.src = mainClass.children[mainClass.selectedIndex].getAttribute('url');
        }

    </script> 
	<script src="assets/js/noticewrite.js"></script>
	<script src="assets/js/upload.js"></script>
</body>
</html>