package com.smart.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smart.database.SqlSessionManager;
import com.smart.domain.Board;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	private Connection conn;
	
	public int insertBoard(Board b_vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smart.domain.BoardDAO.insertBoard",b_vo);
			if(cnt>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return cnt;
	}
	//게시판 select
	public List<Board> selectBoard(Board article_seq) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectBoard = null;
		try {

			selectBoard = sqlSession.selectOne("com.smart.domain.boardDAO.selectBoard", article_seq);
			if (selectBoard != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectBoard;
	}
//
//	 게시판 목록
	public List<Board> selectAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> boardList = null;

		try {
			boardList = sqlSession.selectList("com.smart.domain.BoardDAO.selectAll");

			if (boardList != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return boardList;
	}
	//게시판 조회수
	public int boardCount(Board b_vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		int cnt = 0;
		try {

			cnt = sqlSession.update("com.smart.domain.BoardDAO.boardCount", b_vo);

			if (cnt > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}
	// 공지사항 게시판IN 삭제
	
    
	

}
