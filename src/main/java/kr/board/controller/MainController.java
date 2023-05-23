package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	 public String index() {
		return "index";
	}
	/*
	 * public void index() {
	 * // 이렇게 해도 index.jsp로 가지만 명시해주는 것을 권장
	 * }
	 */
	
}
