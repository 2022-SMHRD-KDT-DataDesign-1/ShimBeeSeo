package kr.board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.board.entity.Member;

@Controller
public class FileUpDownController {
	
	@RequestMapping("saveImage.do")
	@ResponseBody
	public String saveImageFile(HttpServletRequest request,@RequestParam MultipartFile file) throws IOException {
		String resultMsg = "success";
		if(!file.isEmpty()) {
			String saveImgPath = request.getSession().getServletContext().getRealPath("/").concat("resources")+"/upload/";//"/ShimBeeSeo/src/main/webapp/resources/images/";
			File saveFolder = new File(saveImgPath);
			File serverSaveFile = new File(saveImgPath+file.getOriginalFilename());
			try {
				if(!file.isEmpty()) {
					if(!saveFolder.exists()) {
						saveFolder.mkdir();
					}
					file.transferTo(serverSaveFile);
					if(serverSaveFile.exists()) {//톰캣 서버에 파일이 저장되면 이클립스 경로에 파일 저장
						resultMsg = copyImageProjectPath(file);
					}
				}
			} catch (IllegalStateException e) {
				System.out.println(e.getMessage());
			}
		}
		return resultMsg;
	}
	
	public String copyImageProjectPath(MultipartFile file) {//이클립스 경로에 파일저장
		String projectPath = "C:\\eGovFrame-4.0.0\\workspace.edu\\ShimBeeSeo\\src\\main\\webapp\\resources\\upload\\";
		try {
			file.transferTo(new File(projectPath+file.getOriginalFilename()));
			System.out.println(projectPath+file.getOriginalFilename());
			return projectPath+file.getOriginalFilename();
		} catch (IllegalStateException e) {
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	//@RequestMapping("saveImage.do")
	//@ResponseBody
	public String imageUpdate(HttpServletRequest request, HttpSession session, RedirectAttributes rttr) {
		// 파일업로드 API (cos.jar)
		// MultipartRequest객체 생성하기위해서는 매개변수가 필요
		// 1.요청객체 (request)
		MultipartRequest multi = null;
		// 2.이미지를 저장할 폴더의 경로
		String savePath = request.getRealPath("resources/upload");
		// 3.허용가능한 크기
		int fileMaxSize = 10 * 1024 * 10 * 100; // 100MB
		// 4.파일이름에 대한 인코딩
		String enc = "UTF-8";
		// 5.중복이름 안되게 해주는 객체
		DefaultFileRenamePolicy dfrp = new DefaultFileRenamePolicy();
		
		try {
			multi = new MultipartRequest(request, 
					"/resources/upload", fileMaxSize, enc, dfrp);
		} catch (IOException e) {
			System.out.println(e.getMessage());
//			rttr.addFlashAttribute("msgType", "실패 메세지");
//			rttr.addFlashAttribute("msg", "파일의 크기는 10MB를 넘을 수 없습니다.")
//			return "redirect:/imageForm.do";
		}
		
		return "success!";
	}
	
}
