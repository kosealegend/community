package com.my.humor.service;

import javax.servlet.http.HttpSession;

import com.my.humor.vo.SignUpVO;

public interface SignUpService {
	//ȸ������
	public void signUp(SignUpVO vo) throws Exception;
	//�α���
	public SignUpVO signIn(SignUpVO vo) throws Exception;
	//�α׾ƿ�
	void signOut(HttpSession session) throws Exception;

}
