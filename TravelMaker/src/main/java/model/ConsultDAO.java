package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class ConsultDAO {
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int uploadConsult(ConsultDTO cdto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("uploadConsult", cdto);
		session.close();
		return row;
	}

	public ArrayList<ConsultDTO> showConsult(String user_id) {
		System.out.println("메서드진입");
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ConsultDTO> cons_list = session.selectList("showConsult", user_id);
		session.close();
		return (ArrayList<ConsultDTO>) cons_list;

	}

}
