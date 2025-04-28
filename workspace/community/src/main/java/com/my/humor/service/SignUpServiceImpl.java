package com.my.humor.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.my.humor.dao.SignUpDAO;
import com.my.humor.vo.SignUpVO;

@Service
public class SignUpServiceImpl implements  SignUpService{
	@Inject
	private SignUpDAO dao;
	
	//회원가입
	@Override
	public void signUp(SignUpVO vo) throws Exception {dao.signUp(vo);}
	
	//로그인
	@Override
	public SignUpVO signIn(SignUpVO vo) throws Exception {return dao.signIn(vo);}
	
	//로그아웃
	@Override
	public void signOut(HttpSession session) throws Exception {session.invalidate();}
	
	//아이디 찾기
	@Override
	public SignUpVO findId(SignUpVO vo) throws Exception { return dao.findId(vo);}
	
	//비밀번호 찾기
	@Override
	public SignUpVO findPw(SignUpVO vo) throws Exception { return dao.findPw(vo);}
	
	//비밀번호찾기 - 임시 비밀번호
	@Override
	public void updatePw(SignUpVO vo) throws Exception { dao.updatePw(vo);}
	
	

	
	
	
	
}
