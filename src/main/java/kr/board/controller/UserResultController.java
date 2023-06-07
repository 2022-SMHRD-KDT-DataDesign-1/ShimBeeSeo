package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	@GetMapping("resultList.do")
	public List<User_Result> UserResult(User m) {
		
		List<User_Result> result = userResultMapper.viewResult(m);
		for(int i = 0 ; i<result.size(); i++) {
			System.out.println(result.get(i).getResult_date());
		};
		System.out.println("컨트롤러에서 페이지로 잘 넘겨짐");
		return result;
	};
}
