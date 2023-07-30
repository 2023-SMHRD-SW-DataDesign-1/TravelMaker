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

	public ArrayList<ResDTO> nomal_responseList(int est_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ResDTO> nomal_response_list = session.selectList("nomal_responseList", est_num);
		System.out.println("nomal_responseList 완료");
		session.close();

		return (ArrayList<ResDTO>) nomal_response_list;
	}

	public static ArrayList<SendDTO> nomal_response(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<SendDTO> nomal_response = session.selectList("nomal_response", user_id);
		session.close();

		return (ArrayList<SendDTO>) nomal_response;
	}

	public ArrayList<ResDTO> showPaidlist(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ResDTO> paid_list = session.selectList("showPaidlist", user_id);
		session.close();

		return (ArrayList<ResDTO>) paid_list;
	}

	public ArrayList<ResDTO> showUnPaidlist(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<ResDTO> paid_list = session.selectList("showUnPaidlist", user_id);
		session.close();

		return (ArrayList<ResDTO>) paid_list;
	}
	
	public int GosuResponse(ResDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("GosuResponse", dto);
		session.close();
	
		return row;
	}
	
	// 채택된 견적 paid = 1로 바꾸기
	public int paidEst(int res_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("paidEst", res_num);
		session.close();
	
		return row;
	}
	
	// res_num으로 est_res테이블 조회
	public ResDTO showRes(int res_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ResDTO showRes = session.selectOne("showRes", res_num);
		session.close();
		
		return showRes;
	}
	
}
