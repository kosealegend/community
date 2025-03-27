package com.my.humor.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import com.my.humor.vo.SignUpVO;

@Mapper
public interface SignUpMapper {
   /* @Insert("INSERT INTO users (user_id, age, password, password_check, nickname, email, gender, role, phone_number) " +
            "VALUES (#{userId}, #{age}, #{password}, #{passwordCheck}, #{nickname}, #{email}, #{gender}, #{role}, #{phoneNumber})")
    void signUp(SignUpVO vo) throws Exception; */
}
