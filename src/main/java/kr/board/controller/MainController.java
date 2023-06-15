package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	 public String index() {
		return "index";
	}
	
	@RequestMapping("/joinSucces")
	 public String joinSucces() {
		return "main/joinSucces";
	}
	
	@RequestMapping("/testSuccess")
	 public String testSucces() {
		return "main/testSuccess";
	}
	/*
	 * public void index() {
	 * // 이렇게 해도 index.jsp로 가지만 명시해주는 것을 권장
	 * }
	 */
	@RequestMapping("/myPage2")
	 public String myPage2() {
		return "member/myPage2";
	}
}
