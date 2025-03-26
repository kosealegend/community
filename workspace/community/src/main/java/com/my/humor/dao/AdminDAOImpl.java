package com.my.humor.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession sql;
	
	private static String namespace="com.my.humor.adminMapper";
	
	
}
