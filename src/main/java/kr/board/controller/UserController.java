package kr.board.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		
		
	}

