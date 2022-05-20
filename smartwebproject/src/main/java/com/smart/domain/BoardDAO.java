package com.smart.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smart.database.SqlSessionManager;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
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

	// 게시판 별 목록
	public List<Board> selectNotice() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> boardList = null;

		try {
			boardList = sqlSession.selectList("com.smart.domain.BoardDAO.selectNotice");

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
	//영표쌤게시판
	public List<Board> selectYoungpyo() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectYoungpyo = null;

		try {
			selectYoungpyo = sqlSession.selectList("com.smart.domain.BoardDAO.selectYoungpyo");

			if (selectYoungpyo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectYoungpyo;
	}
	
	//영표쌤게시판
	public List<Board> selectUnbi() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectUnbi = null;

		try {
			selectUnbi = sqlSession.selectList("com.smart.domain.BoardDAO.selectUnbi");

			if (selectUnbi != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectUnbi;
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

}
