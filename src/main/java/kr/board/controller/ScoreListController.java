package kr.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.board.entity.H_Scorelist;
import kr.score.mapper.ScoreMapper;

@Controller
public class ScoreListController {

	@Autowired
	private ScoreMapper scoreMapper;
	
	@GetMapping("ScoreList.do")
	public String ScoreList(Model model) {
		
		List<H_Scorelist> list = scoreMapper.scoreList();
		model.addAttribute("checklist", list);
		
		return "test2";
	};
	
	@GetMapping("ScoreResult.do")
	public String ScoreResult(Model model) {
		
		return "";
	}
	
}
