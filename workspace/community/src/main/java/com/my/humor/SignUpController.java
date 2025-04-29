package com.my.humor;

import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
    private BCryptPasswordEncoder passEncoder; // @Autowired로 주입받기

    @GetMapping("/signup")
    public String getSignUp() throws Exception {
        logger.info("회원가입 화면 진입");
        return "register/signup"; // /WEB-INF/views/register/signup.jsp
    }
    
    //회원가입
    @PostMapping("/signup")
    public String postSignUp(SignUpVO vo) throws Exception {
        logger.info("회원가입 기능 작동");

        String inputPass = vo.getPassword();
        String pass = passEncoder.encode(inputPass); // passEncoder를 사용
        vo.setPassword(pass);

        String inputPass2 = vo.getPasswordCheck();
        String pass2 = passEncoder.encode(inputPass2); // passEncoder를 사용
        vo.setPasswordCheck(pass2);

        vo.setRole("0");

        signupservice.signUp(vo);
        return "redirect:/";
    }
    //로그인
    @PostMapping("/signin")
    public String postSignIn(SignUpVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
        logger.info("로그인 기능 작동!");

        SignUpVO login = signupservice.signIn(vo);
        HttpSession session = req.getSession();
        
        if (login == null) {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", "아이디가 존재하지 않습니다.");
            return "redirect:/";
        }

        boolean passMatch = passEncoder.matches(vo.getPassword(), login.getPassword()); // passEncoder를 사용

        if (passMatch) {
            session.setAttribute("member", login);
        } else {
            session.setAttribute("member", null);
            rttr.addFlashAttribute("msg", "비밀번호가 일치하지 않습니다.");
            return "redirect:/";
        }
        return "redirect:/";
    }
    //로그아웃
    @GetMapping("/signout")
    public String getSignOut(HttpSession session) throws Exception {
        logger.info("로갓");
        session.invalidate(); // 세션을 완전히 종료
        return "register/logout";
    }
    
    //아이디찾기
    @GetMapping("/findId")
    public String getFindId() {
    	 logger.info("아이디 찾기 화면 진입!");
        return "register/findId"; 
    }

    @PostMapping("/findId")
    public String postFindId(SignUpVO vo, RedirectAttributes rttr) throws Exception {
    	logger.info("비밀번호 찾기 화면 진입!");
        SignUpVO result = signupservice.findId(vo);

        if (result == null) {
            rttr.addFlashAttribute("msg", "등록된 정보가 없습니다.");
            return "redirect:/register/findId";
        }

        rttr.addFlashAttribute("msg", "아이디는 " + result.getUserId() + "입니다.");
        return "redirect:/";
    }
    
    //비밀번호 찾기
    @GetMapping("/findPw")
    public String getFindPw() {
    	 logger.info("비밀번호 찾기 화면 진입!");
        return "register/findPw"; 
    }
    @PostMapping("/findPw")
    public String postFindPw(SignUpVO vo, RedirectAttributes rttr) throws Exception {
        logger.info("비밀번호 찾기 기능 작동!");

        // 사용자 정보 조회
        SignUpVO result = signupservice.findPw(vo);

        if (result == null) {
            rttr.addFlashAttribute("msg", "등록된 정보가 없습니다.");
            return "redirect:/register/findPw";
        }

        // 임시 비밀번호 생성
        String tempPassword = generateTemporaryPassword();

        // 임시 비밀번호 암호화
        String encryptedTempPassword = passEncoder.encode(tempPassword);

        // 사용자 비밀번호 업데이트
        result.setPassword(encryptedTempPassword);
        signupservice.updatePw(result);

        // 새 비밀번호를 화면에 표시
        rttr.addFlashAttribute("msg", "새로운 임시 비밀번호는 " + tempPassword + "입니다.");

        return "redirect:/register/findPw"; // 새 비밀번호를 찾기 페이지로 리디렉션
    }

    // 임시 비밀번호 생성 (UUID 방식)
    private String generateTemporaryPassword() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString().substring(0, 8); // 예시로 8자리 임시 비밀번호 생성
    }
    
}
