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

@Controller
public class ChatController {

    private RestTemplate restTemplate;

    public ChatController() {
        this.restTemplate = new RestTemplate();
    }

    @RequestMapping(value = "/chat", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public String chatWithGPT(@RequestBody String userMessage) {
    	System.out.println("들어오삼");
        String endpoint = "https://api.openai.com/v1/chat/completions";
        String apiKey = "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"; // Replace with your OpenAI API key

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.set("Authorization", "Bearer " + apiKey);
        System.out.println("Authorization " + "Bearer " + apiKey);

        String requestBody = "{\"messages\":[{\"role\":\"system\",\"content\":\"You are a user\"},{\"role\":\"user\",\"content\":\"" + userMessage + "\"}]}";
        HttpEntity<String> requestEntity = new HttpEntity<>(requestBody, headers);

        ResponseEntity<String> response = restTemplate.exchange(endpoint, HttpMethod.POST, requestEntity, String.class);
        
        return response.getBody();
    }
    
//    @PostMapping
//    public ResponseEntity<?> sendQuestion(@RequestBody String request) {
//        
//        //1번에 발급받은 API key를 붙여 넣는다.
//        OpenAiService service = new OpenAiService("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");
//        CompletionRequest completionRequest = CompletionRequest.builder()
//            .prompt(request)
//            .model("text-davinci-003") // 이 모델로 해줘야 제대로 대화가 된다. 하지만 한국어는 잘 안된다. 다른 모델을 써야할듯...
//            .echo(false) // 이 기능은 내가 질문한 걸 똑같이 뱉어주고 나서 그 질문의 답을 그 뒤에 붙여서 보내기 때문에 질문을 반복할 필요가 없기 때문에 false
//            .build();
//        return ResponseEntity.ok(service.createCompletion(completionRequest).getChoices());
//    }
    
}