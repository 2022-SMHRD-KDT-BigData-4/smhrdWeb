<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style_join.css">
</head>
<body>
    <div class="board_wrap">
        <h1 id="joinmain">회원가입1</h1>
        <form action="JoinCon" method="post">
            <dl>
                <dt>이메일</dt>
                <dd>
                	<input type="text" name="mb_email" id="mb_email" placeholder="이메일 입력">
                	<input type="button" value="중복 확인" onclick="emailCheck()">
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
                <dt>이름</dt>
                <dd><input type="text" name="mb_name" class="name" id="mb_name" placeholder="이름 입력"></dd>
            </dl>
            <dl>
                <dt>닉네임</dt>
                <dd>
                    <input type="text" name="mb_nick" id="mb_nick" placeholder="닉네임 입력">
                    <input type="button" value="중복 확인" onclick="nickCheck()">
                </dd>
            </dl>
            <dl>
                <dt>성별</dt>
                <dd>
                    <input type="radio" name="mb_gender" id="male" value="M">
                    <label for="male">남자</label>
                    <input type="radio" name="mb_gender" id="female" value="F">
                    <label for="female">여자</label>
                </dd>
            </dl>
            <dl>
                <dt>수강과정</dt>
                <dd>
                    <select name="mb_curriculum">
                        <option value="">수강과정선택</option>
                        <option value="빅데이터" id="big">빅데이터</option>
                        <option value="IOT융합" id="iot">IOT융합</option>
                        <option value="인공지능" id="ai">인공지능</option>
                    </select>
                </dd>
            </dl>
            <dl>
                <dt>소속반</dt>
                <dd>
                    <select name="mb_class">
                        <option value="">소속반 선택</option>
                        <option value="A" id="A">A</option>
                        <option value="B" id="B">B</option>
                        <option value="C" id="C">C</option>
                        <option value="D" id="D">D</option>
                    </select>
                </dd>
            </dl>
            <dl>
            	<dt>권한</dt>
            	<dd>
            	<input type="radio" name="mb_authority" value="A" checked onclick="return(false);"> 회원
            	<input type="radio" name="mb_authority" value="Z" onclick="return(false);"> 관리자
            	</dd>            
            </dl>
            <input type="submit" id="back" value="뒤로가기">
            <input type="submit" id="join" value="회원가입" onclick="joinform_check();">
        </form>
    </div>
    <!-- <script src="assets/js/join.js?=ver123"></script> -->
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!-- 스크립트 주소 -->
	<script src="assets/js/joinpw.js"></script>
	<script src="assets/js/joinvalidity.js"></script>
</body>
</html>