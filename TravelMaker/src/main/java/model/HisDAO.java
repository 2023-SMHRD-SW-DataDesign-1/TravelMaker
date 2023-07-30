package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class HisDAO {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	// 견적 채택하면 구매기록 업로드
	public int estPay(SendDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("estPay", dto);
		session.close();

		return row;
	}

	// 아이디로 구매기록 조회
	public ArrayList<HisDTO> showHis(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<HisDTO> his_list = session.selectList("showHis", user_id);
		session.close();

		return (ArrayList<HisDTO>) his_list;
	}

}
