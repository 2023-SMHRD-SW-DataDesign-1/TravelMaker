package model;

import org.apache.ibatis.session.SqlSessionFactory;

import database.sqlSessionManager;

public class ResDAO {

	private static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
}
