package com.my.humor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.my.humor.service.CategoryService;

@ControllerAdvice
public class GlobalControllerAdvice {

	@Autowired
	CategoryService categoryService;
	
	@ModelAttribute
	public void addCategoriesToModel(Model model) {
        model.addAttribute("categoryList", categoryService.getCategory());
    }
}
