package model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import database.sqlSessionManager;

public class ResDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	public static ArrayList<SendDTO> gosu_responseList(String user_id) {
		System.out.println("메서드진입");
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<SendDTO> gosu_response_list = (ArrayList)session.selectList("gosu_responseList", user_id);
		session.close();

		return gosu_response_list;
	}
}
