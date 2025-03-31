package com.my.humor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    BCryptPasswordEncoder passEncoder() {
        return new BCryptPasswordEncoder();
    }

    @GetMapping("/signup")
    public String getSignUp() throws Exception {
        logger.info("회원가입 화면 진입");
        return "register/signup"; // /WEB-INF/views/register/signup.jsp
    }

    @PostMapping("/signup")
    public String postSignUp(SignUpVO vo) throws Exception {
        logger.info("회원가입 기능 작동");

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

    @PostMapping("/signin")
    public String postSignin(SignUpVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
        logger.info("로그인 기능 작동!");
        System.out.println("vo : " + vo);

        SignUpVO login = signupservice.signIn(vo);
        HttpSession session = req.getSession();
        
        if (login == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", "아이디가 존재하지 않습니다.");
            return "redirect:/";
        }

        boolean passMatch = passEncoder.matches(vo.getPassword(), login.getPassword());

        System.out.println("login : " + login);
        if (passMatch) {
            session.setAttribute("member", login);
        } else {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
            return "redirect:/";
        }
        return "redirect:/";
    }

    @GetMapping("/signout")
    public String signout(HttpSession session) throws Exception {
        logger.info("logout");
        signupservice.signOut(session);
        return "register/logout"; // /WEB-INF/views/register/logout.jsp
    }
}