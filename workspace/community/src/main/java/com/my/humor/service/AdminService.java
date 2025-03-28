package com.my.humor.service;

import java.util.List;

import com.my.humor.vo.UserVO;

public interface AdminService {

	List<UserVO> Userlist() throws Exception;

	List<UserVO> PostRelist() throws Exception;

	List<UserVO> ReplyRelist() throws Exception;

	UserVO UserDetail(String userId) throws Exception;

}
