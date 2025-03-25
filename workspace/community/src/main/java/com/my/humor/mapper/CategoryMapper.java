package com.my.humor.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.my.humor.vo.CategoryVO;

@Mapper
public interface CategoryMapper {

	@Select("SELECT * FROM category")
	List<CategoryVO> getCategory();
}
