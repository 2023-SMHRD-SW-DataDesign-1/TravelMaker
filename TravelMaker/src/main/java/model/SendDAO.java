package model;

import java.util.ArrayList;

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
	
	public static ArrayList<SendDTO> SendUserInfo(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<SendDTO> send_user_info_list = (ArrayList)session.selectList("SendUserInfo", user_id);
		System.out.println(user_id);
		session.close();
		
		return send_user_info_list;
	}
}
