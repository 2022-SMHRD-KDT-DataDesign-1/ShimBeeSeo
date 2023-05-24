package kr.board.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

// Handler Mapping이 Controller(POJO)를 찾기위해
// @(어노테이션)으로 Controller이라고 명시해야 한다
@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;

	@RequestMapping("/boardMain.do")
	public String main() {
		return "board/main";
	}

}





