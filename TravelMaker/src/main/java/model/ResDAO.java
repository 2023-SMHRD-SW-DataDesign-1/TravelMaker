package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import database.sqlSessionManager;

public class ResDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public static ArrayList<SendDTO> gosu_responseList(String user_id) {
		System.out.println("메서드진입");
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<SendDTO> gosu_response_list = (ArrayList) session.selectList("gosu_responseList", user_id);
		session.close();

		return gosu_response_list;
	}

	public static ArrayList<ResDTO> nomal_responseList(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<ResDTO> nomal_response_list = (ArrayList) session.selectList("nomal_responseList", user_id);
		System.out.println("nomal_responseList 완료");
		session.close();

		return nomal_response_list;
	}

	public static ArrayList<SendDTO> nomal_response(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<SendDTO> nomal_response = session.selectList("nomal_response", user_id);
		session.close();

		return (ArrayList<SendDTO>) nomal_response;
	}
}
