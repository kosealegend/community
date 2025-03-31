package com.my.humor.dao;


import java.util.List;

import com.my.humor.vo.SignUpVO;

public interface AdminDAO {

	List<SignUpVO> Userlist() throws Exception;

	List<SignUpVO> PostRelist() throws Exception;

	List<SignUpVO> ReplyRelist() throws Exception;

	SignUpVO UserDetail(String userId) throws Exception;


}
