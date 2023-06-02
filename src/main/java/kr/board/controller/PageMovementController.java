package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PageMovementController {

	@GetMapping("about.do")
	public String about() {
		return "member/about";
	}
	
	@GetMapping("classes.do")
	public String classes() {
		return "member/classes";
	}
	
	@GetMapping("contact.do")
	public String contact() {
		return "member/contact";
	}
	
	@GetMapping("facility.do")
	public String facility() {
		return "member/facility";
	}

	@GetMapping("errorPage.do")
	public String errorPage() {
		return "member/errorPage";
	}
	
	@GetMapping("appointment.do")
	public String appointment() {
		return "member/appointment";
	}
	
	@GetMapping("callToAction.do")
	public String callToAction() {
		return "member/callToAction";
	}
	
	@GetMapping("team.do")
	public String team() {
		return "member/team";
	}
	
	@GetMapping("testimonial.do")
	public String testimonial() {
		return "member/testimonial";
	}
	
	@GetMapping("loginPage.do")
	public String loginPage() {
		return "member/loginPage";
	}
	
	@GetMapping("joinPage.do")
	public String joinPage() {
		return "member/joinPage";
	}
	
	@GetMapping("chat")
	public String ChatGPT() {
		return "member/ChatGPT";
	}
	
	@GetMapping("check.do")
	public String check() {
		return "main/check";
	}
	
	@GetMapping("upload.do")
	public String upload() {
		return "main/upload";
	}
	
	@GetMapping("joinSucces.do")
	public String joinSucces() {
		return "member/joinSuccess";
	}
	
	@GetMapping("test2.do")
	public String test2() {
		return "main/test2";
	}
	@GetMapping("checkSucces.do")
	public String checkSucces() {
		return "main/checkSucces";
	}


	
	
}
