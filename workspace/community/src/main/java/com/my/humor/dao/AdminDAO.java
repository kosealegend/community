package com.my.humor.dao;

import java.util.List;

import com.my.humor.vo.UserVO;

public interface AdminDAO {

	List<UserVO> Userlist() throws Exception;

}
