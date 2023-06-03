package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.User;
import kr.board.entity.User_Result;
import kr.user.mapper.UserResultMapper;

@Controller
public class UserResultController {
	
	@Autowired
	private UserResultMapper userResultMapper;
	
	// 검사 후 결과 보여주기
	@RequestMapping("UserResult.do")
	public String UserResult(User m, HttpSession session) {
		
		List<User_Result> result = userResultMapper.viewResult(m);
		session.setAttribute("result", result);
		return "redirect:myPage.do";
	};
}
