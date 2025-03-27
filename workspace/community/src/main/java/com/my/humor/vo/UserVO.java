package com.my.humor.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	private String userId;
	private String password;
	private String passwordCheck;
	private String nickname;
	private String email;
	private String gender;
	private int age;
	private String phoneNumber;
	private String joinDate;
	private int role;
	
}
