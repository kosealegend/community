package com.my.humor;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.humor.service.SignUpService;
import com.my.humor.vo.SignUpVO;

@Controller
@RequestMapping("/register/*")
public class SignUpController {
    private static final Logger logger = LoggerFactory.getLogger(SignUpController.class);
    
    @Inject
    SignUpService signupservice;
    
    @Autowired
    BCryptPasswordEncoder passEncoder;
    
    @Bean
    BCryptPasswordEncoder passEncoder() { return new BCryptPasswordEncoder(); }
    
    // �쉶�썝媛��엯 �럹�씠吏� 吏꾩엯
    @GetMapping("/signup")
    public String getSignUp() throws Exception {
        logger.info("�쉶�썝媛��엯 �럹�씠吏� 吏꾩엯");
        return "register/signup";
    }
    
    // �쉶�썝媛��엯 泥섎━
    @PostMapping("/signup")
    public String postSignUp(SignUpVO vo) throws Exception {
        logger.info("�쉶�썝媛��엯 湲곕뒫");
        String inputPass = vo.getPassword();
        String pass = passEncoder.encode(inputPass);
        vo.setPassword(pass);

        String inputPass2 = vo.getPasswordCheck();
        String pass2 = passEncoder.encode(inputPass2);
        vo.setPasswordCheck(pass2);
        
        vo.setRole("0");

        signupservice.signUp(vo);
        return "redirect:/";
    }
}