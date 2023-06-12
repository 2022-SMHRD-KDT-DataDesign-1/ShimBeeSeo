package kr.board.controller;

import com.google.gson.JsonParser;

import kr.board.entity.User;
import kr.user.mapper.UserMapper;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class KakaoServiceController {
	
	@Autowired
	private UserMapper userMapper;
	
	
	@GetMapping("/kakaoLogin")
	public String kakaoLogin(@RequestParam("code") String code, Model model, HttpSession session) {

		
		String accessToken = getAccessToken(code);

		HashMap<String, Object> userInfo = getUserInfo(accessToken);
		
		User user = userMapper.selectUser(userInfo);
		
		if (user != null) {
			// 이미 가입한 경우
			session.setAttribute("mvo", user);
			String user_id = user.getUser_id();
			User mvo = userMapper.kakaoLogin(user_id);
			session.setAttribute("mvo", mvo);
			
			return "redirect:/";
		} else {
			// 신규회원인 경우
			userMapper.kakaoJoin(userInfo);
			User UserNew = userMapper.selectUser(userInfo);
			session.setAttribute("nmvo", UserNew);
			
			
			return "member/kakaoJoinPage";
		}

	}
	
	@GetMapping("/kakaoJoin")
	public String kakaoJoin(User m, HttpSession session) {
		
		
	    userMapper.kakaoJoinDetail(m);
	    User mvo = userMapper.login(m);
	    session.setAttribute("mvo", mvo);
	    
		return "redirect:/";
	  
	}

	@GetMapping("/logout")
	public String kakaoLogout(HttpSession session) {
		session.invalidate();

		return "redirect:/login";
	}
	
	// 함수1 - token 가져오는 함수
	private String getAccessToken(String code) {
		String accessToken = "";
		String refreshToken = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);

			HttpsURLConnection conn = (HttpsURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			conn.setDoOutput(true);

			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=1ff4c9cbe51272559a48887a3811f7a0"); // 본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8081/controller/kakaoLogin"); // 본인이 설정해 놓은 경로
			sb.append("&code=" + code);
			bw.write(sb.toString());
			bw.flush();

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();

			System.out.println("access_token : " + accessToken);
			System.out.println("refresh_token : " + refreshToken);

			br.close();
			bw.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return accessToken;
	}
	
	// 함수2 - 가져온 토큰으로 user정보 가져오는 함수
	private HashMap<String, Object> getUserInfo(String accessToken) {
		HashMap<String, Object> userInfo = new HashMap<String, Object>();

		String reqURL = "https://kapi.kakao.com/v2/user/me";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + accessToken);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();

			userInfo.put("nickname", nickname);
			userInfo.put("email", email);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userInfo;
	}
	
	//함수3 - 로그아웃
	public void exeLogout(String accessToken) {
		String reqURL = "https://kapi.kakao.com/v1/user/logout";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "Bearer " + accessToken);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String result = "";
			String line = "";

			while ((line = br.readLine()) != null) {
				result += line;
			};
			System.out.println(result);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};

	};
    
    
};
