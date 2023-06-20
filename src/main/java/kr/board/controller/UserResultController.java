package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.board.entity.User;
import kr.board.entity.User_Result;
import kr.user.mapper.UserResultMapper;

@Controller
public class UserResultController {
	
	@Autowired
	private UserResultMapper userResultMapper;
	
	// 검사 후 결과 보여주기
	@ResponseBody
//	@GetMapping("resultList.do/{user_id}")
	@GetMapping("resultList.do")
	public List<User_Result> UserResult(HttpSession session) {
		
		User mvo = (User)session.getAttribute("mvo");
		String user_id = mvo.getUser_id();
		
		List<User_Result> result = userResultMapper.viewResult(user_id);
		for(int i = 0 ; i<result.size(); i++) {
		};
		System.out.println("컨트롤러에서 페이지로 잘 넘겨짐(list)");
		return result;
	};
	
	@ResponseBody
	@GetMapping("ajaxTest.do")
	public String ajaxTest() {
		String res = "ajax굳";
		return res;
	}
	
	@ResponseBody
	@GetMapping("testResultOne.do")
	public User_Result UserOneResult(HttpSession session) {
		
		User mvo = (User)session.getAttribute("mvo");
		String user_id = mvo.getUser_id();
		
		User_Result result = userResultMapper.viewOneResult(user_id);
		
		System.out.println("컨트롤러에서 페이지로 잘 넘겨짐(one)");
		return result;
	};
	
}
