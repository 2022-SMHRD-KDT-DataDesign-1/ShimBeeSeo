package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.board.entity.CountCate;
import kr.board.entity.CountJoin;
import kr.board.entity.User;
import kr.user.mapper.UserMapper;
import kr.user.mapper.UserResultMapper;

@Controller
public class AdminController {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserResultMapper userResultMapper;
	
	@ResponseBody
	@GetMapping("/joinPerMonth.do")
	public List<CountJoin> joinPerMonth() {
		
		List<CountJoin> result = userMapper.joinPerMonth();
		
		
		System.out.println(result);
		return result;
	}
	
	@ResponseBody
	@GetMapping("/countCate.do")
	public List<CountCate> testCate() {
		
		List<CountCate> result = userResultMapper.countCate();
		
		return result;
	}
	
	@ResponseBody
	@GetMapping("/kidsAge.do")
	public List<String> kidsAge() {
		
		List<String> result = userMapper.kidsAge();
		
		return result;
	}
	
}
