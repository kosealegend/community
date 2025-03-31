package com.my.humor.service;

import java.util.List;

import com.my.humor.vo.SignUpVO;

public interface AdminService {

	List<SignUpVO> Userlist() throws Exception;

	List<SignUpVO> PostRelist() throws Exception;

	List<SignUpVO> ReplyRelist() throws Exception;

	SignUpVO UserDetail(String userId) throws Exception;

}
