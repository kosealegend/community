package com.my.humor.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {

	private int age;
    private String  userId, password, passwordCheck, nickname, email, gender, role, phoneNumber;
    private Date joinDate;
	
}
