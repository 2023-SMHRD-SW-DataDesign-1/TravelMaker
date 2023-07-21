package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class SendDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int est_send(SendDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("est_send", dto);
		session.close();
		
		return row;
	}
}
