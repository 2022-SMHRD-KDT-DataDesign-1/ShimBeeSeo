package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.entity.Auth;
import kr.board.entity.User;
import kr.user.mapper.UserMapper;

@Controller
public class UserController {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private PasswordEncoder pwEncoder;
	
	// 로그인 기능
	@PostMapping("/login.do")
	public String login(User m, HttpSession session, RedirectAttributes rttr) {
		
		User mvo = userMapper.login(m);
		if(m.getUser_id() == null 		|| m.getUser_id().equals("")|| 
			m.getUser_pw() == null 	|| m.getUser_pw().equals("")) {
			
			rttr.addFlashAttribute("msgType", "로그인 실패");
			rttr.addFlashAttribute("msg", "아이디 또는 비밀번호 입력해주세요.");
			
			return "redirect:/loginPage.do";
		} else{
			// 추가 비밀번호 일치 여부 체크
			boolean isCheck = pwEncoder.matches(m.getUser_pw(), mvo.getUser_pw());
			
			if(mvo != null && isCheck) {
				session.setAttribute("mvo", mvo);
				rttr.addFlashAttribute("msgType", "로그인 성공");
				rttr.addFlashAttribute("msg", mvo.getUser_name()+"님, 안녕하세요.");
				return "redirect:/";
			} else {
				rttr.addFlashAttribute("msgType", "로그인 실패");
				rttr.addFlashAttribute("msg", "아이디와 비밀번호를 다시 입력해주세요.");
				return "redirect:/loginPage.do";
			}
		} 
		}
		
	// 회원가입 요청
	@PostMapping("/join.do")
	public String join(User m, HttpSession session, RedirectAttributes rttr) {
		
     System.out.println(m.toString());
		
		if(m.getUser_id() == null 		|| m.getUser_id().equals("")|| 
			m.getUser_pw() == null 	|| m.getUser_pw().equals("")||
			m.getUser_name() == null 		|| m.getUser_name().equals("")) {
			
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "모든 정보를 입력하세요.");
			
			return "redirect:/joinPage.do";
		} else {
			
			// 비밀번호 암호화 하여 회원가입
			// 비밀번호를 암호화하여 저장
			String encyPw = pwEncoder.encode(m.getUser_pw());
			m.setUser_pw(encyPw);
			
			int cnt = userMapper.join(m);
			
			
			
			if(cnt == 1) {
				// 회원가입 성공
				User mvo = userMapper.login(m);
				
				session.setAttribute("mvo", mvo);
				
				rttr.addFlashAttribute("msgType", "성공 메세지");
				rttr.addFlashAttribute("msg", "환영합니다."+mvo.getUser_name()+"님");
				
				return "redirect:/";
			} else {
				// 회원가입 실패
				
				rttr.addFlashAttribute("msgType", "실패 메세지");
				rttr.addFlashAttribute("msg", "회원가입에 실패했습니다.");
				
				return "redirect:/joinForm.do";
			}
		}
	}
		
	}

