package com.my.humor.dao;

import com.my.humor.vo.SignUpVO;

public interface SignUpDAO {
	//회원가입
		public void signUp(SignUpVO vo) throws Exception;
	//로그인
		public SignUpVO signIn(SignUpVO vo) throws Exception;
	//아이디찾기
		public SignUpVO findId(SignUpVO vo) throws Exception;
	//비밀번호 찾기
		public SignUpVO findPw(SignUpVO vo) throws Exception;
	//비밀번호 찾기 - 임시 비밀번호 
		public void updatePw(SignUpVO vo) throws Exception;
	
}
