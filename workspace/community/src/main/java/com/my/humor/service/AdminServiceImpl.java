package com.my.humor.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.humor.dao.AdminDAO;
import com.my.humor.vo.SignUpVO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
	@Override
	public List<SignUpVO> Userlist() throws Exception{
		return dao.Userlist();
	}
	@Override
	public SignUpVO UserDetail(String userId) throws Exception{
		return dao.UserDetail(userId);
	}
	@Override
	public List<SignUpVO> PostRelist() throws Exception{
		return dao.PostRelist();
	}
	@Override
	public List<SignUpVO> ReplyRelist() throws Exception{
		return dao.ReplyRelist();
	}
	 // 🔹 사용자 권한 수정 추가
	@Override
	public void modifyUserRole(String userId, String role) throws Exception {
	    System.out.println("서비스 - userId: " + userId + ", role: " + role);
	    dao.updateUserRole(userId, role);
	}

}
