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
	
	public int uploadPic(PicDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("uploadPic", dto);
		System.out.println(row);
		session.close();
		
		return row;		
	}
	
	public int deletePic(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("deletePic", user_id);
		session.close();
		
		return row;		
	}
	
	public int buyInfo(UserDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("buyInfo", dto);
		session.close();
		
		return row;
	}
	
	public int duplicateId(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("duplicateId", user_id);
		session.close();
		
		return row;
	}
	
	// est_num으로 작성자 이름 뽑기
	public UserDTO showName(int est_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		UserDTO show_name = session.selectOne("showName", est_num);
		session.close();
		
		return show_name;
	}

}
