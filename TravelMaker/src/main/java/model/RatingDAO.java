package model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class RatingDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	// 별점 평가기능
	public int rateGosu(RatingDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("rateGosu", dto);
		session.close();

		return row;
	}

	// 고수에게 평점 매겼는지 검사
	public int isRate(RatingDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.selectOne("isRate", dto);
		session.close();

		return row;
	}

	// 평점 조회
	public double showRate(String user_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		double row = session.selectOne("showRate", user_id);
		session.close();
		DecimalFormat df = new DecimalFormat("#.#");
		String formattedRating = df.format(row);
		Double rating = Double.parseDouble(formattedRating);

		return rating;

	}

}
