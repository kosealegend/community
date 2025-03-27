package com.my.humor.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.humor.dao.AdminDAO;
import com.my.humor.vo.UserVO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
	@Override
	public List<UserVO> Userlist() throws Exception{
		return dao.Userlist();
	}
}
