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
	
	//운비쌤게시판
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
	//공용소스게시판
	public List<Board> selectSource() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectSource = null;

		try {
			selectSource = sqlSession.selectList("com.smart.domain.BoardDAO.selectSource");

			if (selectSource != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectSource;
	}
	//승환쌤게시판
	public List<Board> selectSeungHwan() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectSeungHwan = null;

		try {
			selectSeungHwan = sqlSession.selectList("com.smart.domain.BoardDAO.selectSeungHwan");

			if (selectSeungHwan != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectSeungHwan;
	}
	//승환쌤게시판
	public List<Board> selectQuestion() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectQuestion = null;

		try {
			selectQuestion = sqlSession.selectList("com.smart.domain.BoardDAO.selectQuestion");

			if (selectQuestion != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectQuestion;
	}
	//정형쌤게시판
	public List<Board> selectJungHyung() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectJungHyung = null;

		try {
			selectJungHyung = sqlSession.selectList("com.smart.domain.BoardDAO.selectJungHyung");

			if (selectJungHyung != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectJungHyung;
	}
	
	//정보게시판
	public List<Board> selectInformation() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectInformation = null;

		try {
			selectInformation = sqlSession.selectList("com.smart.domain.BoardDAO.selectInformation");

			if (selectInformation != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectInformation;
	}
	//해도쌤 게시판
	public List<Board> selectHaedo() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectHaedo = null;

		try {
			selectHaedo = sqlSession.selectList("com.smart.domain.BoardDAO.selectHaedo");

			if (selectHaedo != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectHaedo;
	}
	//자유 게시판
	public List<Board> selectFree() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectFree = null;

		try {
			selectFree = sqlSession.selectList("com.smart.domain.BoardDAO.selectFree");

			if (selectFree != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectFree;
	}
	
	//자료실
	public List<Board> selectDownload() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectDownload = null;

		try {
			selectDownload = sqlSession.selectList("com.smart.domain.BoardDAO.selectDownload");

			if (selectDownload != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectDownload;
	}
	//동원쌤 게시판
	public List<Board> selectDongwon() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectDongwon = null;

		try {
			selectDongwon = sqlSession.selectList("com.smart.domain.BoardDAO.selectDongwon");

			if (selectDongwon != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectDongwon;
	}
	//익명 게시판
	public List<Board> selectAnonymous() {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		List<Board> selectAnonymous = null;

		try {
			selectAnonymous = sqlSession.selectList("com.smart.domain.BoardDAO.selectAnonymous");

			if (selectAnonymous != null) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return selectAnonymous;
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
