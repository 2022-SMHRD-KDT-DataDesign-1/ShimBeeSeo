package kr.board.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ImageController {
	

    @PostMapping("imgUpload.do")
    public String uploadImage(@RequestParam("image") MultipartFile image) {
        if (!image.isEmpty()) {
            try {
                // 이미지를 저장할 경로 및 파일명 설정
                String savePath = "<저장할_경로>/<파일명>";
                image.transferTo(new File(savePath));

                // 파이썬으로 이미지 전송 및 처리
                String pythonScriptPath = "<파이썬_스크립트_경로>";
                String command = "python " + pythonScriptPath + " " + savePath;
                Process process = Runtime.getRuntime().exec(command);
                process.waitFor();

                // 파이썬에서 처리된 결과를 읽어옴
                BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
                String result = reader.readLine();

                // 결과를 Spring으로 전송
                // ...

                return "member/loginPage"; // 파일 업로드 및 처리 성공 시 이동할 페이지
            } catch (IOException | InterruptedException e) {
                e.printStackTrace();
            }
        }
        return "member/joinPage"; // 파일 업로드 및 처리 실패 시 이동할 페이지
    }

}
