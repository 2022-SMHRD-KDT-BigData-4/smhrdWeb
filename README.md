# 스마트인재개발원 자체 커뮤니티(팀명: 스마트타임)
![2차프로젝트_표지](https://user-images.githubusercontent.com/81302006/170196799-f5d98312-39e5-4236-965a-fa22c857877e.PNG)

## 1. 프로젝트명
* 스마트인재개발원 커뮤니티
* 서비스설명: 스마트인재개발원 학생들과 강사가 자유롭게 이용가능한 정보공유 중심의 커뮤니티 사이트

## 2. 주요기능
* 로그인/회원가입
* 회원정보 수정
* 다양한 게시판 (익명게시판, 스마트맛집, 시간표, 팬페이지 등)
* 글쓰기, 좋아요 기능

## 3. 개발환경
|구분|내용|
|------|---|
|사용언어|Java, HTML, CSS, JavaScript, Python|
|개발도구|Eclipse / VisualStudioCode|
|서버환경|tomcat 9.0|
|데이터베이스|Oracle|

## 4. 기능 흐름도
### 서비스 흐름도(유스케이스)
#### 서비스 흐름도(웹 화면설계서)
![데이터흐름도_완성](https://user-images.githubusercontent.com/81302006/170202395-f2dcab6a-c8bc-43ea-8c13-be732bf0fb26.png)
#### ER 다이어그램
![erd 수정](https://user-images.githubusercontent.com/81302006/170202444-1b5376c7-c3f7-4737-a2d2-198e388cc2bf.png)

## 5 SW 동작 화면
### 로그인 타이틀
![로그인타이틀](https://user-images.githubusercontent.com/81302006/170216112-91d47660-e01e-4013-bf0c-964797fff712.png)
### 로그인/회원가입/회원정보수정
![기본정보](https://user-images.githubusercontent.com/81302006/170213345-af80c24a-4b14-4050-a863-124b357e0d6d.png)
### 메인페이지
![메인페이지](https://user-images.githubusercontent.com/81302006/170216152-c92b2ca9-49cb-4c67-b077-cd7e55b9833f.png)
### 공모전게시판/일반게시판/스마트맛집/시간표
![구현화면](https://user-images.githubusercontent.com/81302006/170217382-5a68d8b2-5c1d-4f4b-aa89-9c081539fc65.jpg)
### 팬페이지
![팬클럽게시판](https://user-images.githubusercontent.com/81302006/170217438-55d7b6f9-4c55-47c5-aeb1-671aaa0bf320.png)

## 6 제작 일정
![간트차트](https://user-images.githubusercontent.com/81302006/170220473-991e50d1-c130-4fdb-9c6a-55f77942adde.png)

## 7 팀원 단위 업무 분장 및 결과표
![image](https://user-images.githubusercontent.com/81302006/170220715-f5099373-92eb-4f4e-9e66-3c27dd66a8c5.png)

## 8 트러블슈팅
* 좋아요 기능<br>
클릭할때마다 좋아요 수가 올라가고 줄어들고 하는 기능<br>
-> 자바스크립트로 클래스를 변경해주며 이미지 삽입
AJAX를 사용해 비동기 통신 방식으로 곧바로 좋아요를 DB에 넣어주고 싶었는데 실패함
 
* 게시판 목록에 이미지 업로드<br>
이미지 업로드 및 업로드한 이미지 게시판목록에 보여주는 기능
파이썬에서 크롤링한 데이터를 DB에 직접연결하는데에 어려움을 겪음<br>
-> 직접 연결 대신 파이썬에서 csv를 생성하고 oracle devleoper에서 data import를 이용
