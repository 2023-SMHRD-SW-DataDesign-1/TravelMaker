package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class ConsultDAO {
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int uploadConsult(ConsultDTO cdto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("uploadConsult", cdto);
		session.close();
		return row;

	}

}
