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
	@Override
	public UserVO UserDetail(String userId) throws Exception{
		return sql.selectOne(namespace+".userdetail",userId);
	}
	
	@Override
	public List<UserVO> PostRelist() throws Exception{
		return sql.selectList(namespace+".postreport");
	}
	
	@Override
	public List<UserVO> ReplyRelist() throws Exception{
		return sql.selectList(namespace+".replyreport");
	}
	
}
