package com.my.humor.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.humor.mapper.SignUpMapper;
import com.my.humor.vo.SignUpVO;

@Service
public class SignUpServiceImpl implements  SignUpService{
	@Inject
	SignUpMapper signupmapper;

	@Override
	public void signUp(SignUpVO vo) throws Exception {signupmapper.signUp(vo);}
	
	
	
	
}
