package model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class InfoDAO {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int upload(InfoDTO idto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("upload", idto);
		session.close();
		return row;
	}

	public ArrayList<InfoDTO> showInfo() {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<InfoDTO> info_list = session.selectList("showInfo");
		session.close();
		return (ArrayList<InfoDTO>) info_list;
	}

	public String show(int info_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String tag = session.selectOne("show", info_num);
		session.close();
		return tag;
	}

	public InfoDTO showInfoSelect(int info_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		InfoDTO show_info = session.selectOne("showInfoSelect", info_num);
		session.close();
		return show_info;
	}

	public ArrayList<InfoDTO> showCateInfo(String info_cate) {
		SqlSession session = sqlSessionFactory.openSession(true);
		List<InfoDTO> pic_list = session.selectList("showCateInfo", info_cate);
		session.close();
		return (ArrayList<InfoDTO>) pic_list;
	}

	public int countBuy(int info_num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int buy = session.selectOne("countBuy", info_num);
		session.close();
		
		return buy;
	}
	
	public HisDTO searchHis(InfoDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		HisDTO show_his = session.selectOne("searchHis", dto);
		session.close();
		return show_his;
	}
	
	public int insertHis(InfoDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertHis", dto);
		session.close();
		return row;
	}
	
	// 판매량 상위 5개 썸네일
	public ArrayList<InfoDTO> topFive(String info_cate){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<InfoDTO> top_five = session.selectList("topFive", info_cate);
		session.close();
		return (ArrayList<InfoDTO>) top_five;
		
	}
	

}
