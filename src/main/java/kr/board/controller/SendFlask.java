package kr.board.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;


public class SendFlask {
	public void sendDataToFlask() {
        String flaskUrl = "http://127.0.0.1:5000/json";

        RestTemplate restTemplate = new RestTemplate();

        // JSON 데이터 생성
        MultiValueMap<String, String> map = new LinkedMultiValueMap<>();
        map.add("키", "밸류");
        map.add("키2", "밸류2");

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);

        // HTTP 요청 설정
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(map, headers);

        // Flask 애플리케이션으로 POST 요청 보내기
        ResponseEntity<String> response = restTemplate.exchange(flaskUrl, HttpMethod.POST, requestEntity, String.class);
        
        // Flask 애플리케이션의 응답 처리
        String responseBody = response.getBody();
        System.out.println(responseBody);
    }
}
