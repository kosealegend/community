package com.my.humor;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.my.humor.service.CategoryService;


@Controller
public class HomeController {
	
	@Autowired
	CategoryService categoryService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@GetMapping(value = "/")
	public String home(Model model) {
		
		logger.info("home 진입");
		
		// model.addAttribute("categoryList", categoryService.getCategory());
		
		return "home";
	}

	
}
