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
	
	@RequestMapping("/test223-06-05")
	 public String test223() {
		return "main/test223-06-05";
	}
	/*
	 * public void index() {
	 * // 이렇게 해도 index.jsp로 가지만 명시해주는 것을 권장
	 * }
	 */
}
