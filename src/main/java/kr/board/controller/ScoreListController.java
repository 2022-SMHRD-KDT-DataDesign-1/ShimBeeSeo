package kr.board.controller;

import java.util.ArrayList;
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
import kr.board.entity.User;
import kr.board.entity.User_Result;
import kr.score.mapper.ScoreMapper;
import kr.user.mapper.UserResultMapper;

@Controller
public class ScoreListController {

	@Autowired
	private ScoreMapper scoreMapper;
	
	@Autowired
	private UserResultMapper resultMapper;
	
	@PostMapping("/ScoreList.do")
//	public String ScoreList(@RequestParam(value="valueArr[]") List<String> valueArr,  Model model) {
//	public String ScoreList(String mood, @RequestParam List<String> size) {
		
	public String ScoreList(HttpSession session, String mood, @RequestParam List<String> size, String position, String sight, @RequestParam List<String> roof, String wall,
			@RequestParam List<String> door, @RequestParam List<String> window, String chimney, @RequestParam List<String> sun, @RequestParam List<String> etc, Model model) {

		User mvo = (User)session.getAttribute("mvo");
		String user_id = mvo.getUser_id();
		List<H_Scorelist> list = scoreMapper.scoreList();

		List<Integer> checkedList = new ArrayList<Integer> ();
		checkedList.add(Integer.parseInt(mood));
		for (int i = 0; i < size.size(); i++) {
			checkedList.add(Integer.parseInt(size.get(i)));
		}
		checkedList.add(Integer.parseInt(position));
		checkedList.add(Integer.parseInt(sight));
		for (int i = 0; i < roof.size(); i++) {
			checkedList.add(Integer.parseInt(roof.get(i)));
		}
		checkedList.add(Integer.parseInt(wall));
		for (int i = 0; i < door.size(); i++) {
			checkedList.add(Integer.parseInt(door.get(i)));
		}
		for (int i = 0; i < window.size(); i++) {
			checkedList.add(Integer.parseInt(window.get(i)));
		}
		checkedList.add(Integer.parseInt(chimney));
		for (int i = 0; i < sun.size(); i++) {
			checkedList.add(Integer.parseInt(sun.get(i)));
		}
		for (int i = 0; i < etc.size(); i++) {
			checkedList.add(Integer.parseInt(etc.get(i)));
		}
		int aggressive = 0;
		int anxiety = 0;
		int depressed = 0;
		int avpd = 0;
		int esteem = 0;
		int instability = 0;
		int deprivation = 0;
		int inferiority = 0;
		int regression = 0;
		
		
		for (int i = 0; i < checkedList.size(); i++) {
			for (int j = 0; j < list.size(); j++) {
				if(checkedList.get(i) == list.get(j).getScore_h_seq()) {
					aggressive += list.get(j).getScore_h_aggressive();
					anxiety += list.get(j).getScore_h_social_anxiety();
					depressed += list.get(j).getScore_h_depressed();
					avpd += list.get(j).getScore_h_avpd();
					esteem += list.get(j).getScore_h_self_esteem();
					instability += list.get(j).getScore_h_emotional_instability();
					deprivation += list.get(j).getScore_h_deprivation();
					inferiority += list.get(j).getScore_h_inferiority();
					regression += list.get(j).getScore_h_regression();
					break;
				}
			}
		}
		User_Result checkedResult = new User_Result(0, user_id, 1, aggressive, anxiety, depressed, avpd, esteem, instability, deprivation, inferiority, regression, null, null, null, null, null);
		
//		System.out.println("mood출력 : " + mood);
//		System.out.println("size출력 : " + size.size());

		model.addAttribute("checkedResult", checkedResult);
		
		resultMapper.insertResult(checkedResult);
		
		System.out.println(checkedResult.toString());
		
		return "redirect:/TestResult.do";
	};
	
	/*
	 * @ResponseBody
	 * 
	 * @GetMapping("/ScoreResult.do") public String ScoreResult(Model model) {
	 * 
	 * 
	 * 
	 * return ""; }
	 */
	
}
