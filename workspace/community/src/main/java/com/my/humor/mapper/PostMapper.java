package com.my.humor.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import com.my.humor.vo.PostVO;

@Mapper
public interface PostMapper {

	@Insert("INSERT INTO POST (POST_ID, USER_ID, CATEGORY_ID, TITLE, CONTENT, IMAGE_URL, CREATED_AT) " +
            "VALUES (SEQ_POST.NEXTVAL, #{userId}, #{categoryId}, #{title}, #{content}, #{imageUrl}, SYSDATE)")
    void insertPost(PostVO post);
}
