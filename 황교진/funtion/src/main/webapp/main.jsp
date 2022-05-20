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
    <title>메인페이지</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/media.css">
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
        </div>
            <!-- 스인재웹, 내정보 상단아이콘 -->
            <div id="account">
                <a href="https://smhrd.or.kr"
                    title="스인재" class="icon web">스인재</a>
                <a href="my.jsp" title="내 정보" class="icon my">내 정보</a>
            </div>
            <!-- 스인재 배너 -->
            <div id="submenu">
                <div class="wrap" OnClick="location.href ='https://smhrd.or.kr'">
                    <img src="image/스인재소개.png">
                </div>
            </div>
            <!-- 하단 leftside ,rightside , main  -->
            <div id="container" class="community">
                <div class="leftside">
                    <div class="card pconly">
                        <form class="logged">
                            <img src="image/사용자정보.png" class="picture">
                            <p class="nickname">교징어</p>
                            <p class="school">황교진</p>
                            <p class="school">rywls18</p>
                            <ul class="buttons">
                                <li><a href="my.jsp">내 정보</a></li>
                                <li><a href="Login.jsp">로그아웃</a></li>
                            </ul>
                            <hr>
                        </form>
                    </div>
                    <div class="card">
                        <div class="menus">
                            <a href="mywrite.jsp" class="myarticle">내가 쓴 글</a>
                            <a href="mycomment.jsp" class="mycommentarticle">댓글 단 글</a>
                            <a href="mycomment.jsp" class="myscrap">내 스크랩</a>
                            <hr>
                        </div>
                    </div>
                </div>
                
                <div class="main">
                    <div class="card">
                        <div class="board">
                            <h3><a href="notice.jsp">공지사항</a></h3>
                            <a href="notice.jsp" class="list">
                                <time>4분 전</time>
                                스마트인재개발원 상금
                                <hr>
                            </a>
                            <a href="notice.jsp" class="list">
                                <time>5분 전</time>
                                황교진 우수상
                                <hr>
                            </a>
                            <a href="notice.jsp" class="list">
                                <time>8분 전</time>
                                지렸다리
                                <hr>
                            </a>
                            <a href="notice.jsp" class="list">
                                <time>10분 전</time>
                                레알로?
                                <hr>
                            </a>
                            <a href="notice.jsp" class="list">
                                <time>10분 전</time>
                                라고할뻔~
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="contest.jsp">공모전</a></h3>
                            <a href="contest.jsp" class="list">
                                <time>4분 전</time>
                                스인재공모전
                                <hr>
                            </a>
                            <a href="contest.jsp" class="list">
                                <time>4분 전</time>
                                여수공모전
                                <hr>
                            </a>
                            <a href="contest.jsp" class="list">
                                <time>7분 전</time>
                                안산공모전
                                <hr>
                            </a>
                            <a href="contest.jsp" class="list">
                                <time>10분 전</time>
                                광양공모전
                                <hr>
                            </a>
                            <a href="contest.jsp" class="list">
                                <time>12분 전</time>
                                광주공모전
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="free.jsp">자유게시판</a></h3>
                            <a href="free.jsp" class="list">
                                <time>4분 전</time>
                                1차프젝언제끝남?
                                <hr>
                            </a>
                            <a href="free.jsp" class="list">
                                <time>4분 전</time>
                                영표쌤 사랑해요!
                                <hr>
                            </a>
                            <a href="free.jsp" class="list">
                                <time>5분 전</time>
                                html게시판소스공유점요
                                <hr>
                            </a>
                            <a href="free.jsp" class="list">
                                <time>6분 전</time>
                                불금 술먹을분?
                                <hr>
                            </a>
                            <a href="free.jsp" class="list">
                                <time>10분 전</time>
                                거의다했다
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="question.jsp">질문게시판</a></h3>
                            <a href="question.jsp" class="list">
                                <time>3분 전</time>
                                a태그어떻게써요?
                                <hr>
                            </a>
                            <a href="question.jsp" class="list">
                                <time>4분 전</time>
                                파이썬집에서까는법아시는분?
                                <hr>
                            </a>
                            <a href="question.jsp" class="list">
                                <time>4분 전</time>
                                p태그사용법점
                                <hr>
                            </a>
                            <a href="question.jsp" class="list">
                                <time>8분 전</time>
                                css 잘하시는분?
                                <hr>
                            </a>
                            <a href="question.jsp" class="list">
                                <time>9분 전</time>
                                공모전참가하는법아시는분?
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="information.jsp">정보게시판</a></h3>
                            <a href="information.jsp" class="list">
                                <time>1분 전</time>
                                넬라 구독자10만돌파
                                <hr>
                            </a>
                            <a href="information.jsp" class="list">
                                <time>4분 전</time>
                                스인재 로또1등당첨자
                                <hr>
                            </a>
                            <a href="information.jsp" class="list">
                                <time>4분 전</time>
                                아이폰14 출시일
                                <hr>
                            </a>
                            <a href="information.jsp" class="list">
                                <time>5분 전</time>
                                제육덮밥하는법
                                <hr>
                            </a>
                            <a href="information.jsp" class="list">
                                <time>6분 전</time>
                                똥참는법
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="anonymous.jsp">익명게시판</a></h3>
                            <a href="anonymous.jsp" class="list">
                                <time>1분 전</time>
                                형쌤 사랑해요
                                <hr>
                            </a>
                            <a href="anonymous.jsp" class="list">
                                <time>4분 전</time>
                                A반 김진환님 너무잘생겼어요!
                                <hr>
                            </a>
                            <a href="anonymous.jsp" class="list">
                                <time>8분 전</time>
                                급똥마려운데 참는법좀
                                <hr>
                            </a>
                            <a href="anonymous.jsp" class="list">
                                <time>12분 전</time>
                                포켓몬빵 사신분?
                                <hr>
                            </a>
                            <a href="anonymous.jsp" class="list">
                                <time>12분 전</time>
                                ㅈㄴ배고파...
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="download.jsp">자료실</a></h3>
                            <a href="download.jsp" class="list">
                                <time>4분 전</time>
                                이클립스 설치방법
                                <hr>
                            </a>
                            <a href="download.jsp" class="list">
                                <time>4분 전</time>
                                파이썬 설치방법
                                <hr>
                            </a>
                            <a href="download.jsp" class="list">
                                <time>5분 전</time>
                                DB 설치방법
                                <hr>
                            </a>
                            <a href="download.jsp" class="list">
                                <time>6분 전</time>
                                VSCODE 설치방법
                                <hr>
                            </a>
                            <a href="download.jsp" class="list">
                                <time>8분 전</time>
                                배고파
                                <hr>
                            </a>
                        </div>
                    </div>
                    <div class="card">
                        <div class="board">
                            <h3><a href="source.jsp">공용소스</a></h3>
                            <a href="source.jsp" class="list">
                                <time>3분 전</time>
                                html 게시판소스
                                <hr>
                            </a>
                            <a href="source.jsp" class="list">
                                <time>4분 전</time>
                                css로그인 디자인소스
                                <hr>
                            </a>
                            <a href="source.jsp" class="list">
                                <time>5분 전</time>
                                oralce 연결방법
                                <hr>
                            </a>
                            <a href="source.jsp" class="list">
                                <time>6분 전</time>
                                사이드바 소스
                                <hr>
                            </a>
                            <a href="source.jsp" class="list">
                                <time>8분 전</time>
                                1차 프젝 관련소스
                                <hr>
                            </a>
                        </div>
                    </div>
                </div>
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
                                <a href="best.jsp">BEST게시판
                                    <span>더보기</span>
                                </a>
                            </h3>
                            <a href="notice.jsp" class="list">
                                <time>05/12 12:50</time>
                                [취업지원실]2022 공무원 온라인 솔루션 참여자모집
                                <hr>
                            </a>
                            <a href="best.jsp" class="list">
                                <time>05/12 14:04</time>
                                충장로 맛집 리스트
                                <hr>
                            </a>
                            <a href="best.jsp" class="list">
                                <time>05/11 21:50</time>
                                혼밥할때 좋은 영화
                                <hr>
                            </a>
                            <a href="best.jsp" class="list">
                                <time>05/12 15:25</time>
                                비올때 듣기 좋은 노래
                                <hr>
                            </a>
                            <a href="best.jsp" class="list">
                                <time>05/12 12:50</time>
                                20대 비타민 추천
                                <hr>
                            </a>
                        </div>
                    </div>
                </div>            
            </div>
    </nav>
</body>
</html>