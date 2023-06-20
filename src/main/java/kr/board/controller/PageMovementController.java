package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageMovementController {

	


	
	@GetMapping("myPage.do")
	public String testimonial() {
		return "member/myPage2";
	}
	
	@GetMapping("loginPage.do")
	public String loginPage() {
		return "member/loginPage";
	}
	
	@GetMapping("joinPage.do")
	public String joinPage() {
		return "member/joinPage";
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


	
	// 체크리스트
	@GetMapping("jyjtest.do")
	public String scoreList() {
		return "member/jyjtest";
	}

	@GetMapping("UserResult.do")
	public String UserResult() {
		return "member/myPage";
	}
	
	@GetMapping("main.do")
	public String PageBoardMain() {
		return "board/main";
	}
	
	@GetMapping("admin.do")
	public String admin() {
		return "main/admin";
	}
	
	@GetMapping("TestResult.do")
	public String TestResult() {
		return "member/testResult";
	}
	
	@GetMapping("resultPopUp.do")
	public String resultPopUP() {
		return "member/resultPopUp";
	}
	
	@GetMapping("adminMember.do")
	public String adminMember() {
		return "main/adminMember";
	}
	
	@GetMapping("adminMemberData.do")
	public String adminMemberData() {
		return "main/adminMemberData";
	}
	
	@GetMapping("t.do")
	public String t() {
		return "member/template";
	}
}
