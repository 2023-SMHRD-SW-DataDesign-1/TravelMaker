package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class InfoDAO {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int upload(InfoDTO idto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", idto);
		session.close();
		return row;
	}

	public static InfoDTO showInfo(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		InfoDTO idto = session.selectOne("showInfo", user_id);
		session.close();
		return idto;
	}

	public String show() {
		SqlSession session = sqlSessionFactory.openSession(true);
		String tag = session.selectOne("show");
		session.close();
		return tag;

	}

}
