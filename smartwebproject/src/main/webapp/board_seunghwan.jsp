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
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>승환쌤(IN)</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/media.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/board.css">
</head>
<body>
    <!-- 상단 -->
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
            <!-- 스인재웹, 내정보 상단아이콘 -->
            <div id="account">
                <a href="https://smhrd.or.kr"
                    title="스인재" class="icon web">스인재</a>
                <a href="my.jsp" title="내 정보" class="icon my">내 정보</a>
            </div>
        </div>
    </nav>
    <!-- 공지사항 게시글작성 --> 
    <div id="container" class="article">
    
        <div class="wrap title">
            <h1>
                <a href="seunghwan.jsp">승환쌤게시판</a>
            </h1>
            <hr>
        </div>
        <div class="wrap articles">
            <article>
                <a class="article">
                    <img src="image/사용자정보.png" class="picture large">
                    <div class="profile">
                        <h3 class="large">교징어</h3>
                        <button type="submit"><li class="correct">수정</li></button>
                        <button type="submit"><li class="delete">삭제</li></button>
                    </div>
                    <ul class="status">
                        <li class="abuse">신고</li>
                    </ul>
                    <hr>
                    <h2 class="large">[취업지원실]2022 공무원 온라인 솔루션 참여자모집</h2>
                    <p class="large">
                        공무원 온라인 솔루션 강의 무료 지원(해커스)
                        <br>
                        <br>
                        자세한 사항은 취업진로포털을 확인하세요!
                    </p>
                    <div class="attaches full">
                        <figure class="attach full">
                            <img src="image/잠깐쓰는거 예시/취업지원실.jpg">
                        </figure>
                    </div>
                    <hr>
                    <ul class="status left">
                        <li title="좋아요" class="like">4</li>
                        <li title="댓글" class="comment">2</li>
                        <li title="스크랩" class="scrap">1</li>
                    </ul>
                    <hr>
                    <div class="buttons">
                        <button type="submit"><span class="poslike">공감</span></button>
                        <button type="submit"><span class="posscrap">스크랩</span></button>
                    </div>
                </a>
                <div class="comments" style="display: block;">
                    <!-- 댓글 부모 -->
                    <article class="parent">
                        <img src="image/사용자정보.png" class="picture medium">
                        <h3 class="medium">교징어</h3>
                        <ul class="status">
                            <button type="submit"></button><li class="childcomment">대댓글</li></button>
                            <button type="submit"><li class="commentvote">공감</li></button>
                        </ul>
                        <hr>
                        <p class="large">항상 감사합니다</p>
                        <time class="medium">05/15 21:44</time>
                        <ul class="status commentvotestatus">
                            <li class="vote commentvote" style="display: list-item;">2</li>
                        </ul>
                    </article>
                    <!-- 댓글 자식 -->
                    <article class="child">
                        <img src="image/사용자정보.png" class="picture medium" >
                        <h3 class="medium writer">교제</h3>
                        <ul class="status">
                            <button type="submit"><li class="commentvote">공감</li></button>
                        </ul>
                        <hr>
                        <p class="large">
                            도움이 되어서 다행이에요~~
                        </p>
                        <time class="medium">05/15 21:46</time>
                        <ul class="status commentvotestatus">
                            <li class="vote commentvote" style="display: list-item;">1</li>
                        </ul>
                    </article>
                    <form action="#" method="#" class="writecomment">
                        <input type="text" name="text" maxlength="300" autocomplete="off" placeholder="댓글을 입력하세요." class="text">
                        <ul class="option">
                            <li title="완료" class="submit"></li>
                        </ul>
                    </form>
                </div>
            </article>
            <div class="clearBothOnly"></div>
            <div class="pagination">
                <a id="goListButton" class="list" href="seunghwan.jsp">글 목록</a><br><br><br>
            </div>
        </div>
        
    
    <!-- 오른쪽사이드 -->
        <div class="rightside">
            <form class="search">
                <input type="text" name="keyword" plcaeholder="전체 게시판의 글을 검색하세요!" class="text">
            </form>
            <div class="card">
                <div class="board">
                    <h3><a>실시간 인기 글</a></h3>
                    <a href="#" class="article">
                        <p class="title">사이드바 소스</p>
                        <p class="small">이 글은 진짜 사이드바를 만들지 못하는 사람을 위한 쓴글입니다.</p>
                        <h4>공용소스</h4>
                        <ul class="status">
                            <li class="vote active">49</li>
                            <li class="comment active">120</li>
                        </ul>
                        <hr>
                        <a href="#" class="article">
                            <p class="title">급똥마려운데 참는법좀</p>
                            <p class="small">강의중에 똥마려운데 참는법좀....</p>
                            <h4>익명게시판</h4>
                            <ul class="status">
                                <li class="vote active">20</li>
                                <li class="comment active">84</li>
                            </ul>
                            <hr>
                        </a>
                </div>
            </div>

            <div class="card">
                <div class="board">
                    <h3>
                        <a href="best..jsp">BEST게시판
                            <span>더보기</span>
                        </a>
                    </h3>
                    <a href="best..jsp" class="list">
                        <time>05/12 12:50</time>
                        [취업지원실]2022 공무원 온라인 솔루션 참여자모집
                        <hr>
                    </a>
                    <a href="#" class="list">
                        <time>05/12 14:04</time>
                        충장로 맛집 리스트
                        <hr>
                    </a>
                    <a href="#" class="list">
                        <time>05/11 21:50</time>
                        혼밥할때 좋은 영화
                        <hr>
                    </a>
                    <a href="#" class="list">
                        <time>05/12 15:25</time>
                        비올때 듣기 좋은 노래
                        <hr>
                    </a>
                    <a href="#" class="list">
                        <time>05/12 12:50</time>
                        20대 비타민 추천
                        <hr>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- <script src="assets/js/join.js?=ver123"></script> -->
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!-- 스크립트 주소 -->
	<script src="assets/js/like.js"></script>
	<script src="assets/js/scrap.js"></script>
</body>
</html>