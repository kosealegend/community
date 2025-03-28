package com.my.humor.service;

import javax.servlet.http.HttpSession;

import com.my.humor.vo.SignUpVO;

public interface SignUpService {
	//회원가입
	public void signUp(SignUpVO vo) throws Exception;
	//로그인
	public SignUpVO signIn(SignUpVO vo) throws Exception;
	//로그아웃
	void signOut(HttpSession session) throws Exception;

}
