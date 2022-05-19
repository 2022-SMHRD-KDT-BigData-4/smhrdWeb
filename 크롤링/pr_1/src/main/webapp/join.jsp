<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>Forty by HTML5 UP</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/main.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->


</head>

<style>



</style>

<body>
    <div class="board_wrap">
        <h1 id="joinmain">회원가입</h1>
        <form>
            <dl>
                <dt>이메일</dt>
                <dd><input type="text" placeholder="이메일 입력"></dd>
            </dl>
            <dl>
                <dt>비밀번호</dt>
                <dd><input type="password" placeholder="영문 숫자 특수문자 포함"></dd>
            </dl>
            <dl>
                <dt>비밀번호 확인</dt>
                <dd><input type="password" placeholder="비밀번호 재입력"></dd>
            </dl>
            <dl>
                <dt>이름</dt>
                <dd><input type="text" placeholder="이름 입력"></dd>
            </dl>
            <dl>
                <dt>닉네임</dt>
                <dd>
                    <input type="text" placeholder="닉네임 입력">
                    <input type="button" value="중복 확인" onclick="nickCheck()">
                    <input type="hidden" name="nickDuplication" value="nickUnChk">
                </dd>
            </dl>
            <dl>
                <dt>연락처</dt>
                <dd><input type="tel" placeholder="연락처 입력"></dd>
            </dl>
            <dl>
                <dt>주소</dt>
                <dd>
                    <input type="text" class="joinaddress" placeholder="주소 입력">
                </dd>
            </dl>
            <dl>
                <dt>상세주소</dt>
                <dd>
                    <input type="text" class="detailaddress" placeholder="상세 주소">
                </dd>
            </dl>
            <dl>
                <dt>성별</dt>
                <dd>
                    <input type="radio" name="gender" id="male">
                    <label for="male">남자</label>
                    <input type="radio" name="gender" id="female">
                    <label for="female">여자</label>
                </dd>
            </dl>
            <dl>
                <dt>수강과정</dt>
                <dd>
                    <select>
                        <option>수강과정선택</option>
                        <option>빅데이터</option>
                        <option>IOT융합</option>
                        <option>인공지능</option>
                    </select>
                </dd>
            </dl>
            <dl>
                <dt>소속반</dt>
                <dd>
                    <select>
                        <option>소속반선택</option>
                        <option>A</option>
                        <option>B</option>
                        <option>C</option>
                        <option>D</option>
                    </select>
                </dd>
            </dl>
            <input type="submit" id="back" value="뒤로가기">
            <input type="submit" id="join" value="회원가입">
            <!--
                정의형 목록 스타일
                dl : 정의 목록을 나타내는 태그 특정 용어에 대해 정의하는 제목과 그 제목에
                대한 설명을 담는다. 기본 속성 = block요소
                dt : 정의 되는 용어에 대한 제목을 나타낸다. 기본 속성 = block요소
                dd : 정의된 제목에 대한 설명을 나타낸다. 기본 속성 = block요소
                예)
                <dl>
                    <dt>정의 제목1</dt>
                    <dt>정의 제목2</dt>
                    <dt>정의 제목3</dt>

                    <dd>정의 설명</dd>
                </dl>
            -->
        </form>
    </div>   
</body>
</html>

