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

}
