팀명 : 스마트타임 
팀원 : 양서린(팀장)/황교진/김진환/안민준/장민철
주제 : 스마트인재개발원 커뮤니티 개발

일시 : 2022/05/09 09:00-12:00

모델링 주소 : 

URL : https://aquerytool.com/aquerymain/index/?rurl=470c8711-86ba-4882-bf3a-d84d0bcef8da&
Password : ir5f12


-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- tb_member Table Create SQL
CREATE TABLE tb_member
(
    mb_email         VARCHAR2(30)     NOT NULL, 
    mb_pw            VARCHAR2(30)     NOT NULL, 
    mb_name          VARCHAR2(20)     NOT NULL, 
    mb_nick          VARCHAR2(20)     NOT NULL, 
    mb_addr          VARCHAR2(300)    NOT NULL, 
    mb_phone         VARCHAR2(20)     NOT NULL, 
    mb_gender        CHAR(1)          NOT NULL, 
    mb_curriculum    VARCHAR2(20)     NOT NULL, 
    mb_class         VARCHAR2(20)     NOT NULL, 
    mb_authority     CHAR(1)          NOT NULL, 
    mb_joindate      DATE             DEFAULT SYSDATE NOT NULL, 
    PRIMARY KEY (mb_email)
)
/

COMMENT ON TABLE tb_member IS '회원 테이블'
/

COMMENT ON COLUMN tb_member.mb_email IS '회원 이메일'
/

COMMENT ON COLUMN tb_member.mb_pw IS '회원 비밀번호'
/

COMMENT ON COLUMN tb_member.mb_name IS '회원 이름'
/

COMMENT ON COLUMN tb_member.mb_nick IS '회원 별명'
/

COMMENT ON COLUMN tb_member.mb_addr IS '회원 주소'
/

COMMENT ON COLUMN tb_member.mb_phone IS '회원 연락처'
/

COMMENT ON COLUMN tb_member.mb_gender IS '회원 성별'
/

COMMENT ON COLUMN tb_member.mb_curriculum IS '회원 수강과정'
/

COMMENT ON COLUMN tb_member.mb_class IS '회원 소속반'
/

COMMENT ON COLUMN tb_member.mb_authority IS '회원 권한'
/

COMMENT ON COLUMN tb_member.mb_joindate IS '회원 가입일자'
/

CREATE INDEX IX_tb_member_1
    ON tb_member(mb_name)
/

CREATE UNIQUE INDEX UQ_tb_member_1
    ON tb_member(mb_nick)
/


-- tb_community Table Create SQL
CREATE TABLE tb_community
(
    article_seq        NUMBER(12, 0)     NOT NULL, 
    article_title      VARCHAR2(300)     NOT NULL, 
    article_content    VARCHAR2(4000)    NOT NULL, 
    article_cnt        NUMBER(12, 0)     NOT NULL, 
    mb_email           VARCHAR2(30)      NOT NULL, 
    article_type       CHAR(1)           NOT NULL, 
    article_likes      NUMBER(12, 0)     NOT NULL, 
    article_wdate      DATE              DEFAULT SYSDATE NOT NULL, 
    article_rdate      DATE              DEFAULT SYSDATE NOT NULL, 
    PRIMARY KEY (article_seq)
)
/

CREATE SEQUENCE tb_community_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_community_AI_TRG
BEFORE INSERT ON tb_community 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_community_SEQ.NEXTVAL
    INTO :NEW.article_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tb_community_AI_TRG;
/

--DROP SEQUENCE tb_community_SEQ;
/

COMMENT ON TABLE tb_community IS '커뮤니티 게시판 테이블'
/

COMMENT ON COLUMN tb_community.article_seq IS '글 순번'
/

COMMENT ON COLUMN tb_community.article_title IS '글 제목'
/

COMMENT ON COLUMN tb_community.article_content IS '글 내용'
/

COMMENT ON COLUMN tb_community.article_cnt IS '글 조회수'
/

COMMENT ON COLUMN tb_community.mb_email IS '글 작성자'
/

COMMENT ON COLUMN tb_community.article_type IS '글 타입'
/

COMMENT ON COLUMN tb_community.article_likes IS '글 좋아요수'
/

COMMENT ON COLUMN tb_community.article_wdate IS '글 작성일자'
/

COMMENT ON COLUMN tb_community.article_rdate IS '글 수정일자'
/

ALTER TABLE tb_community
    ADD CONSTRAINT FK_tb_community_mb_email_tb_me FOREIGN KEY (mb_email)
        REFERENCES tb_member (mb_email)
/


-- tb_comment Table Create SQL
CREATE TABLE tb_comment
(
    cmt_seq        NUMBER(12, 0)     NOT NULL, 
    article_seq    NUMBER(12, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_wdate      DATE              DEFAULT SYSDATE NOT NULL, 
    cmt_likes      NUMBER(12, 0)     NOT NULL, 
    cmt_rdate      DATE              DEFAULT SYSDATE NOT NULL, 
    mb_email       VARCHAR2(30)      NOT NULL, 
     PRIMARY KEY (cmt_seq)
)
/

CREATE SEQUENCE tb_comment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_comment_AI_TRG
BEFORE INSERT ON tb_comment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_comment_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tb_comment_AI_TRG;
/

--DROP SEQUENCE tb_comment_SEQ;
/

COMMENT ON TABLE tb_comment IS '댓글 테이블'
/

COMMENT ON COLUMN tb_comment.cmt_seq IS '댓글 순번'
/

COMMENT ON COLUMN tb_comment.article_seq IS '원글 순번'
/

COMMENT ON COLUMN tb_comment.cmt_content IS '댓글 내용'
/

COMMENT ON COLUMN tb_comment.cmt_wdate IS '댓글 작성일자'
/

COMMENT ON COLUMN tb_comment.cmt_likes IS '댓글 좋아요수'
/

COMMENT ON COLUMN tb_comment.cmt_rdate IS '댓글 수정일자'
/

COMMENT ON COLUMN tb_comment.mb_email IS '댓글 작성자'
/

ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_article_seq_tb_c FOREIGN KEY (article_seq)
        REFERENCES tb_community (article_seq)
/

ALTER TABLE tb_comment
    ADD CONSTRAINT FK_tb_comment_mb_email_tb_memb FOREIGN KEY (mb_email)
        REFERENCES tb_member (mb_email)
/


-- tb_attachment Table Create SQL
CREATE TABLE tb_attachment
(
    attach_seq     NUMBER(12, 0)    NOT NULL, 
    article_seq    NUMBER(12, 0)    NOT NULL, 
    attach_name    VARCHAR2(300)    NOT NULL, 
    attach_ext     VARCHAR2(20)     NOT NULL, 
    attach_path    VARCHAR2(300)    NOT NULL, 
    attach_date    DATE             DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (attach_seq)
)
/

CREATE SEQUENCE tb_attachment_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tb_attachment_AI_TRG
BEFORE INSERT ON tb_attachment 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tb_attachment_SEQ.NEXTVAL
    INTO :NEW.attach_seq
    FROM DUAL;
END;
/

--DROP TRIGGER tb_attachment_AI_TRG;
/

--DROP SEQUENCE tb_attachment_SEQ;
/

COMMENT ON TABLE tb_attachment IS '첨부파일 테이블'
/

COMMENT ON COLUMN tb_attachment.attach_seq IS '첨부 순번'
/

COMMENT ON COLUMN tb_attachment.article_seq IS '원글 순번'
/

COMMENT ON COLUMN tb_attachment.attach_name IS '첨부 파일명'
/

COMMENT ON COLUMN tb_attachment.attach_ext IS '첨부 파일확장자'
/

COMMENT ON COLUMN tb_attachment.attach_path IS '첨부 파일경로'
/

COMMENT ON COLUMN tb_attachment.attach_date IS '첨부 파일등록일'
/

ALTER TABLE tb_attachment
    ADD CONSTRAINT FK_tb_attachment_article_seq_t FOREIGN KEY (article_seq)
        REFERENCES tb_community (article_seq)
/


