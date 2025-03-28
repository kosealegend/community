package com.my.humor.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.humor.vo.SignUpVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {

	@Inject
	private SqlSession sql;//sql에 명령어를 가져옴
	
	//매퍼설정
	private static String namespace="com.my.humor.mapper.signup-mapper";
	
	//회원가입
	@Override
	public void signUp(SignUpVO vo) throws Exception {sql.insert(namespace + ".signup", vo);}
	
	//로그인
	@Override
	public SignUpVO signIn(SignUpVO vo) throws Exception {return sql.selectOne(namespace + ".signin", vo);}
	
	//

}
