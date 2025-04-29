package com.my.humor.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.humor.vo.SignUpVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {

	@Inject
	private SqlSession sql;//sql�� ��ɾ ������
	
	//매퍼
	private static String namespace="com.my.humor.mapper.signup-mapper";
	
	//회원가입
	@Override
	public void signUp(SignUpVO vo) throws Exception {sql.insert(namespace + ".signup", vo);}
	
	//로그인
	@Override
	public SignUpVO signIn(SignUpVO vo) throws Exception {return sql.selectOne(namespace + ".signin", vo);}
	
	//아이디 찾기
	@Override
	public SignUpVO findId(SignUpVO vo) throws Exception { return sql.selectOne(namespace + ".findid", vo);}
	
	//비밀번호 찾기
	@Override
	public SignUpVO findPw(SignUpVO vo) throws Exception { return sql.selectOne(namespace + ".findpw", vo);}
	
	//비밀번호 찾기 - 임시 비밀번호
	@Override
	public void updatePw(SignUpVO vo) throws Exception { sql.update(namespace + ".updatepw", vo);}
	
	


}
