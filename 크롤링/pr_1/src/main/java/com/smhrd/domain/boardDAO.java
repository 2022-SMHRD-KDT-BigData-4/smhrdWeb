package com.smhrd.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class boardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	

	// 전체게시판 title
	public List<tb_board> titleAll() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<tb_board> boardList = null;
		try {
			boardList = sqlSession.selectList("com.smhrd.domain.boardDAO.titleAll");
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
	


}
