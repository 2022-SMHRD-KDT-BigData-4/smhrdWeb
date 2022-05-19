package com.smhrd.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class tb_MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 회원가입
	public int tb_insertMember(tb_Member tb_member) {
		int cnt = 0;
		try {
			cnt = sqlSession.insert("com.smhrd.domain.MemberDAO.tb_insertMember", tb_member);
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
