<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>

<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "campus_a_0509_1";
	String pwd = "smhrd1";
	String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
	String sql = "select * from tb_restaurant";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스마트맛집</title>
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <link rel="stylesheet" type="text/css" href="assets/css/media.css">
    <link rel="stylesheet" type="text/css" href="assets/css/cate.css">
    <link rel="stylesheet" type="text/css" href="assets/css/smartfoodtable.css">
    <script src="/jquery-3.6.0.js"></script>
</head>
<style>
    #container div.title {
    text-align: center !important; 
    background-color: skyblue;
/* } */
</style>
<body>
	<%
		try {
		// 데이터베이스를 접속하기 위한 드라이버 SW 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 데이터베이스에 연결하는 작업 수행
		conn = DriverManager.getConnection(url, uid, pwd);
		// 쿼리를 생성gkf 객체 생성
		stmt = conn.createStatement();
		// 쿼리 생성
		rs = stmt.executeQuery(sql);
	%>
	 <!-- 상단 -->
    <nav>
        <div class="wrap">
            <!-- 로고이미지,스마트타임 -->
            <div id="logo">
                <a href="#" class="mainimg"><img src="./image/시계.png"></a>
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
                <a href="smartfood.jsp" style="text-align: center !important;">🍚 스마트맛집 🍚</a>
            </h1>
            <hr>
        </div>
	<table border="5">
		<tr>
			<td>번호</td>
			<td>맛&nbsp&nbsp&nbsp&nbsp집</td>
			<td>주&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp소</td>
			<td>분&nbsp&nbsp류</td>
			<td>리뷰보기</td>
		</tr>
		<%
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("num")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("address")%></td>
			<td><%=rs.getString("category")%></td>
			 <td><button onclick="location.href='<%=rs.getString("link")%>'">이동</button></td>
		</tr>
	

	<%
		}
	} catch (Exception e) {
	e.printStackTrace();
	} finally {
	try {
	if (rs != null) {
		rs.close();
	}
	if (stmt != null) {
		stmt.close();
	}
	if (conn != null) {
		conn.close();
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	}
	%>
	</table>
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
                        <a href="best.jsp">BEST게시판
                            <span>더보기</span>
                        </a>
                    </h3>
                    <a href="best.jsp" class="list">
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
	<script src="assets/js/smartfoodwrite.js"></script>
	<script src="assets/js/upload.js"></script>
</body>
</html>