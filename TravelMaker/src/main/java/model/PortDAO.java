package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class PortDAO {
	
	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int portWrite(PortDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("portWrite", dto);
		session.close();
		
		return row;
	}
}
