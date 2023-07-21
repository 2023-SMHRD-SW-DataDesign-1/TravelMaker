package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class InfoDAO {
	
	SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	public int upload(InfoDTO idto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", idto);
		session.close();		
		return row;
	}
	
	public InfoDTO showInfo(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		InfoDTO idto = session.selectOne("upload", user_id);
		session.close();		
		return idto;
	}
	
	
	
}
