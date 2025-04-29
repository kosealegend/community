package com.my.humor.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.humor.vo.SignUpVO;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession sql;
	
	private static String namespace="com.my.humor.adminMapper";
	
	@Override
	public List<SignUpVO> Userlist() throws Exception{
		return sql.selectList(namespace+".userlist");
	}
	@Override
	public SignUpVO UserDetail(String userId) throws Exception{
		return sql.selectOne(namespace+".userdetail",userId);
	}
	
	@Override
	public List<SignUpVO> PostRelist() throws Exception{
		return sql.selectList(namespace+".postreport");
	}
	
	@Override
	public List<SignUpVO> ReplyRelist() throws Exception{
		return sql.selectList(namespace+".replyreport");
	}
    @Override
    public void updateUserRole(String userId, String role) throws Exception {
        Map<String, String> params = new HashMap<>();
        params.put("userId", userId);
        params.put("role", role);
        int updatedRows = sql.update(namespace + ".updateUserRole", params);
        System.out.println("업데이트된 행 개수: " + updatedRows);

        sql.update(namespace + ".updateUserRole", params);
        
    }

}
