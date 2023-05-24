package kr.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
}
