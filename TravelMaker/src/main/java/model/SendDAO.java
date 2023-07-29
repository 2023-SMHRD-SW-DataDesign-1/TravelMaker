package model;

import java.util.ArrayList;
import java.util.List;

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
		ArrayList<SendDTO> send_user_info_list = (ArrayList) session.selectList("SendUserInfo", user_id);
		System.out.println(user_id);
		session.close();

		return send_user_info_list;
	}

	public SendDTO EstSend_nomalUser(int est_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		SendDTO dto = session.selectOne("EstSend_nomalUser", est_num);
		session.close();

		return dto;
	}

	public ArrayList<SendDTO> consultedEst(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<SendDTO> consulted_list = session.selectList("consultedEst", user_id);
		session.close();

		return (ArrayList<SendDTO>) consulted_list;
	}
	
	public ArrayList<SendDTO> showSend(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<SendDTO> send_list = session.selectList("showSend", user_id);
		session.close();

		return (ArrayList<SendDTO>) send_list;
	}
}
