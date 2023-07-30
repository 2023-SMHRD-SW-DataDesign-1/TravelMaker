package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class PortDAO {
	
	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int portWrite(PortDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("portWrite", dto);
		session.close();
		
		return row;
	}
	
	// 아이디로 포폴 조회
	public ArrayList<PortDTO> showPort(String user_id){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<PortDTO> port_list = session.selectList("showPort", user_id);
		session.close();
		
		return (ArrayList<PortDTO>) port_list;
	}
	
}
