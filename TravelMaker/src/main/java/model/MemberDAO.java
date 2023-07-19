package model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import model.MemberDTO;
import database.SqlSessionManager;

public class MemberDAO {

	private static SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int join(MemberDTO dto) {
		System.out.println("알짜!");

		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		
		return row;
	}
}
