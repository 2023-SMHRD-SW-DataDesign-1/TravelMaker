package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class UserDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int join(UserDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();

		return row;
	}

	public UserDTO login(UserDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		UserDTO info = session.selectOne("login", dto);
		session.close();

		return info;
	}

	public int chargeCash(CashDTO cdto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("chargeCash", cdto);
		session.close();
		
		return row;
	}

	public UserDTO userInfo(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		UserDTO user_info = session.selectOne("userInfo", user_id);
		session.close();
		
		return user_info;

	}

}
