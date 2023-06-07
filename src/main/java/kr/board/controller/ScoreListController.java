package kr.board.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.board.entity.H_Scorelist;
import kr.score.mapper.ScoreMapper;

@Controller
public class ScoreListController {

	@Autowired
	private ScoreMapper scoreMapper;
	
	@PostMapping("/ScoreList.do")
//	public String ScoreList(@RequestParam(value="valueArr[]") List<String> valueArr,  Model model) {
//	public String ScoreList(String mood, @RequestParam List<String> size) {
		
	public String ScoreList(String mood, @RequestParam List<String> size, String position, String sight, @RequestParam List<String> roof, String wall,
			@RequestParam List<String> door, @RequestParam List<String> window, String chimney, @RequestParam List<String> sun, @RequestParam List<String> etc, Model model) {

		System.out.println("mood출력 : " + mood);
		System.out.println("size출력 : " + size.size());

		List<H_Scorelist> list = scoreMapper.scoreList();
//		model.addAttribute("checklist", list);
		
		System.out.println(list.get(0));
		
		return "redirect:/jyjtest.do";
	};
	
	@GetMapping("/ScoreResult.do")
	public String ScoreResult(Model model) {
		
		return "";
	}
	
}
