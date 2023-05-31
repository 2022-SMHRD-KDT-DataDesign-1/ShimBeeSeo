package kr.board.controller;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
//
//@Controller
//public class ChatController {
//
//    private RestTemplate restTemplate;
//
//    public ChatController() {
//        this.restTemplate = new RestTemplate();
//    }
//
//    @RequestMapping(value = "/chat", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
//    @ResponseBody
//    public String chatWithGPT(@RequestBody String userMessage) {
//    	System.out.println("들어오삼");
//        String endpoint = "https://api.openai.com/v1/chat/completions";
//        String apiKey = "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"; // Replace with your OpenAI API key
//
//        HttpHeaders headers = new HttpHeaders();
//        headers.setContentType(MediaType.APPLICATION_JSON);
//        headers.set("Authorization", "Bearer " + apiKey);
//        System.out.println("Authorization " + "Bearer " + apiKey);
//
//        String requestBody = "{\"messages\":[{\"role\":\"system\",\"content\":\"You are a user\"},{\"role\":\"user\",\"content\":\"" + userMessage + "\"}]}";
//        HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);
//
//        ResponseEntity<String> response = restTemplate.exchange(endpoint, HttpMethod.POST, requestEntity, String.class);
//        
//        return response.getBody();
//    }
//    
//    
//}

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class ChatController {

    @RequestMapping(value = "/chat", method = RequestMethod.GET, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String chatWithGPT(@RequestBody String userMessage) {
        String endpoint = "https://api.openai.com/v1/chat/completions";
        String apiKey = "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"; // Replace with your OpenAI API key

        try {
            URL url = new URL(endpoint);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Content-Type", "application/json");
            conn.setRequestProperty("Authorization", "Bearer " + apiKey);
            conn.setDoOutput(true);

            String requestBody = "{\"messages\":[{\"role\":\"system\",\"content\":\"You are a user\"},{\"role\":\"user\",\"content\":\"" + userMessage + "\"}]}";
            try (OutputStream outputStream = conn.getOutputStream()) {
                outputStream.write(requestBody.getBytes());
                outputStream.flush();
            }

            int responseCode = conn.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                try (BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()))) {
                    StringBuilder response = new StringBuilder();
                    String line;
                    while ((line = reader.readLine()) != null) {
                        response.append(line);
                    }
                    System.out.println("controller 들어옴 성공리턴 이전");
                    return response.toString();
                }
            } else {
                // Handle error response
                System.out.println("Request failed with response code: " + responseCode);
                return null;
            }
        } catch (Exception e) {
            // Handle exception
            e.printStackTrace();
            return null;
        }
    }
}