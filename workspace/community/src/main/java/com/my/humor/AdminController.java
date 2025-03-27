package com.my.humor;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.humor.service.AdminService;
import com.my.humor.vo.UserVO;

@Controller
@RequestMapping("/admin/*")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService adminService;
	
	@GetMapping("/adminhome")
	public void GetAdmin() throws Exception{
		logger.info("관리자 진입");
	}
	
	@GetMapping("/setting/userMan")
	public void GetUserSet(Model model) throws Exception{
		logger.info("유저 관리 진입");
		List<UserVO> list = adminService.Userlist();
		model.addAttribute("list",list);
		
	}
	
	@GetMapping("/setting/reportMan")
	public void GetReportSet(Model model) throws Exception{
		logger.info("신고 관리 진입");
		List<UserVO> list = adminService.PostRelist();
		model.addAttribute("list",list);
	}
	
	@GetMapping("/setting/reportReMan")
	public void GetReportReSet(Model model) throws Exception{
		logger.info("댓글 신고 관리 진입");
		List<UserVO> list = adminService.ReplyRelist();
		model.addAttribute("list",list);
	}
	
}
