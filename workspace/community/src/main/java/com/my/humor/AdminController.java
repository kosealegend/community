package com.my.humor;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.my.humor.service.AdminService;
import com.my.humor.vo.SignUpVO;
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
		List<SignUpVO> list = adminService.Userlist();
		model.addAttribute("list",list);
		
	}
	@GetMapping(value="/setting/userDetail")
	public void getUserDetail(@RequestParam("n") String userId, Model model)throws Exception{
		logger.info("유저 View");
		SignUpVO user = adminService.UserDetail(userId);
		model.addAttribute("user",user);
	}
	
	@GetMapping("/setting/reportMan")
	public void GetReportSet(Model model) throws Exception{
		logger.info("신고 관리 진입");
		List<SignUpVO> list = adminService.PostRelist();
		model.addAttribute("list",list);
	}
	
	@GetMapping("/setting/reportReMan")
	public void GetReportReSet(Model model) throws Exception{
		logger.info("댓글 신고 관리 진입");
		List<SignUpVO> list = adminService.ReplyRelist();
		model.addAttribute("list",list);
	}
	@PostMapping("/setting/userModify")
	public ResponseEntity<String> modifyUserRole(@ModelAttribute UserVO userVO) {
	    try {
	        adminService.modifyUserRole(userVO.getUserId(), userVO.getRole());
	        return ResponseEntity.ok("사용자 권한이 성공적으로 수정되었습니다.");
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
	                .body("권한 수정 중 오류 발생: " + e.getMessage());
	    }
	}




}
