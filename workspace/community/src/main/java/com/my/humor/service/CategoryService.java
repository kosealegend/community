package com.my.humor.service;

import java.util.List;

import com.my.humor.vo.CategoryVO;

public interface CategoryService {

	public List<CategoryVO> getCategory();
	
	int getCategoryID(String categoryName);
}
