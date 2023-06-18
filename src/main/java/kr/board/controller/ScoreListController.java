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

import kr.board.entity.H_Case;
import kr.board.entity.H_Scorelist;
import kr.board.entity.Object;
import kr.board.entity.User;
import kr.board.entity.User_Result;
import kr.cases.mapper.H_CaseMapper;
import kr.cases.mapper.ObjectMapper;
import kr.score.mapper.ScoreMapper;
import kr.user.mapper.UserResultMapper;

@Controller
public class ScoreListController {

	@Autowired
	private ScoreMapper scoreMapper;
	
	@Autowired
	private UserResultMapper resultMapper;
	
	@Autowired
	private H_CaseMapper hcaseMapper;
	
	@Autowired
	private ObjectMapper objectMapper;
	
	@PostMapping("/ScoreList.do")		
	public String ScoreList(HttpSession session, String item, String photo, String result_direction, String mood, @RequestParam List<String> size, String position, String sight, @RequestParam List<String> roof, String wall,
			@RequestParam List<String> door, @RequestParam List<String> window, String chimney, @RequestParam List<String> sun, @RequestParam List<String> etc, Model model) {

		// 객체 탐지 결과
		System.out.println(item);
		String[] items_yu = item.split(";")[0].split(",");
		String[] items_mu = item.split(";")[1].split(",");
		System.out.println(items_yu.toString());
		System.out.println(items_mu.toString());
		
		// 객체 유무에 따른 문장 불러오기
		List<Object> objects = objectMapper.selectAllList();
		String result_o_text = "";
		
		// 객체 유무에 따른 케이스 문장 생성
		for(int i = 0; i < items_yu.length; i++) {
			for(int j = 0; j < objects.size(); j++) {
				String o = "";
				switch (items_yu[i]) {
				case "window":
					o = "창문";
					break;
				case "door":
					o = "문";
					break;
				case "wall":
					o = "벽";
					break;
				case "c_smoke":
					o = "연기나는 굴뚝";
					break;
				case "roof":
					o = "지붕";
					break;
				case "sun":
					o = "태양";
					break;
				}
				if(items_yu[i].equals(objects.get(j).getObject_name()) && objects.get(j).getObject_exist() == 1) {
					result_o_text += "<strong>" + o + ": </strong>" + objects.get(j).getObject_content() + "\t";
				} 
				
			}
		}
		for(int i = 0; i < items_mu.length; i++) {
			for(int j = 0; j < objects.size(); j++) {
				String o = "";
				switch (items_mu[i]) {
				case "window":
					o = "창문";
					break;
				case "door":
					o = "문";
					break;
				case "wall":
					o = "벽";
					break;
				case "c_smoke":
					o = "연기나는 굴뚝";
					break;
				case "roof":
					o = "지붕";
					break;
				case "sun":
					o = "태양";
					break;
				}
				if(items_mu[i].equals(objects.get(j).getObject_name()) && objects.get(j).getObject_exist() == 0) {
					result_o_text += "<strong>" + o + ": </strong>" + objects.get(j).getObject_content() + "\t";
				}
			}
		}

		
		// user_id 불러오기
		User mvo = (User)session.getAttribute("mvo");
		String user_id = mvo.getUser_id();
		
		// 채점리스트 불러오기
		List<H_Scorelist> list = scoreMapper.scoreList();

		// 체크된 값 가져오기
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
		
		// 체크된 값 가져와서 계산하기
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
		
		List<H_Case> h_cases = hcaseMapper.selectAllList();
		String result_c_text = "";
		String result_c_text2 = "";
		
		for(int i = 0; i < h_cases.size(); i++) {
			if(h_cases.get(i).getCase_h_emotion().equals("공격성") && (aggressive >= h_cases.get(i).getCase_h_s() && aggressive <= h_cases.get(i).getCase_h_e())) {
				result_c_text +=  "<strong>공격성</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("사회불안") && (anxiety >= h_cases.get(i).getCase_h_s() && anxiety <= h_cases.get(i).getCase_h_e())) {
				result_c_text +=  "<strong>사회불안</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("우울") && (depressed >= h_cases.get(i).getCase_h_s() && depressed <= h_cases.get(i).getCase_h_e())) {
				result_c_text +=  "<strong>우울</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("대인회피") && (avpd >= h_cases.get(i).getCase_h_s() && avpd <= h_cases.get(i).getCase_h_e())) {
				result_c_text +=  "<strong>대인회피</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("자존감") && (esteem >= h_cases.get(i).getCase_h_s() && esteem <= h_cases.get(i).getCase_h_e())) {
				result_c_text +=  "<strong>자존감</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("정서불안") && (instability >= h_cases.get(i).getCase_h_s() && instability <= h_cases.get(i).getCase_h_e())) {
				result_c_text2 +=  "<strong>정서불안</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("애정결핍") && (deprivation >= h_cases.get(i).getCase_h_s() && deprivation <= h_cases.get(i).getCase_h_e())) {
				result_c_text2 +=  "<strong>애정결핍</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("열등감") && (inferiority >= h_cases.get(i).getCase_h_s() && inferiority <= h_cases.get(i).getCase_h_e())) {
				result_c_text2 +=  "<strong>열등감</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			} else if(h_cases.get(i).getCase_h_emotion().equals("퇴행") && (regression >= h_cases.get(i).getCase_h_s() && regression <= h_cases.get(i).getCase_h_e())) {
				result_c_text2 +=  "<strong>퇴행</strong>\t" + h_cases.get(i).getCase_h_content() + "\t";
			}
		}
		System.out.println(result_c_text);
		
		// 계산 결과 DB 삽입
		User_Result checkedResult = new User_Result(0, user_id, 1, aggressive, anxiety, depressed, avpd, esteem, instability, deprivation, inferiority, regression, photo, result_o_text, result_c_text, result_direction, null, result_c_text2);
		
		resultMapper.insertResult(checkedResult);
		
		System.out.println(checkedResult.toString());
		
		return "redirect:/TestResult.do";
	};

	
}
