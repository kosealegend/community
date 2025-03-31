package com.my.humor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.humor.mapper.CategoryMapper;
import com.my.humor.vo.CategoryVO;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	CategoryMapper categoryMapper;

	@Override
	public List<CategoryVO> getCategory() {
		return categoryMapper.getCategory();
	}

	@Override
	public int getCategoryID(String categoryName) {
		return categoryMapper.getCategoryID(categoryName);
	}
}
