package com.my.humor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@GetMapping("/adminhome")
	public void GetAdmin() throws Exception{
		logger.info("관리자 진입");
	}
	
	@GetMapping("/setting/userMan")
	public void GetUserSet() throws Exception{
		logger.info("유저 관리 진입");
	}
	
	@GetMapping("/setting/reportMan")
	public void GetReportSet() throws Exception{
		logger.info("신고 관리 진입");
	}
	
	@GetMapping("/setting/reportReMan")
	public void GetReportReSet() throws Exception{
		logger.info("댓글 신고 관리 진입");
	}
	
}
