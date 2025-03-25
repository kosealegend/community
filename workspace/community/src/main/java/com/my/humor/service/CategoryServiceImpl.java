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
		System.out.println("무슨 문제냐");
		return categoryMapper.getCategory();
	}

}
