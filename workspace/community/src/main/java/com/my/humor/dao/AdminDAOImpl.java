package com.my.humor.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.humor.vo.UserVO;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession sql;
	
	private static String namespace="com.my.humor.adminMapper";
	
	@Override
	public List<UserVO> Userlist() throws Exception{
		return sql.selectList(namespace+".userlist");
	}
}
