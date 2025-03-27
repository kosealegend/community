package com.my.humor.dao;

import com.my.humor.vo.SignUpVO;

public interface SignUpDAO {
	//회원가입
		public void signUp(SignUpVO vo) throws Exception;
	
}
