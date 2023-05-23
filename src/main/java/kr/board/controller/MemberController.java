package kr.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.board.entity.Auth;
import kr.board.entity.Member;
import kr.board.mapper.BoardMapper;
import kr.member.mapper.MemberMapper;

@Controller
public class MemberController {
	
	@Autowired
	private MemberMapper memberMapper;
	@Autowired
	private PasswordEncoder pwEncoder;
	
	// 로그인페이지 이동
	@GetMapping("loginForm.do")
	public String loginForm() {
		return "member/loginForm";
	}
	
	// 로그인 기능
	@PostMapping("/login.do")
	public String login(Member m, HttpSession session, RedirectAttributes rttr) {
		
		Member mvo = memberMapper.login(m);
		if(m.getMemID() == null 		|| m.getMemID().equals("")|| 
			m.getMemPassword() == null 	|| m.getMemPassword().equals("")) {
			
			rttr.addFlashAttribute("msgType", "로그인 실패");
			rttr.addFlashAttribute("msg", "아이디 또는 비밀번호 입력해주세요.");
			
			return "redirect:/loginForm.do";
		} else {
			// 추가 비밀번호 일치 여부 체크
			boolean isCheck = pwEncoder.matches(m.getMemPassword(), mvo.getMemPassword());
			
			if(mvo != null && isCheck) {
				session.setAttribute("mvo", mvo);
				rttr.addFlashAttribute("msgType", "로그인 성공");
				rttr.addFlashAttribute("msg", mvo.getMemName()+"님, 안녕하세요.");
				return "redirect:/";
			} else {
				rttr.addFlashAttribute("msgType", "로그인 실패");
				rttr.addFlashAttribute("msg", "아이디와 비밀번호를 다시 입력해주세요.");
				return "redirect:/loginForm.do";
			}
		}
		
		
	}
	
	// 로그아웃 기능 /logout.do
	@GetMapping("/logout.do")
	public String logout(HttpSession session, RedirectAttributes rttr) {
		
		session.invalidate();
		
		rttr.addFlashAttribute("msgType", "로그아웃 메세지");
		rttr.addFlashAttribute("msg", "정상적으로 로그아웃 되었습니다.");
		
		return "redirect:/";
	}
	
	// 회원가입 페이지 이동 /joinForm.do
	@GetMapping("/joinForm.do")
	public String joinForm() {
		return "member/joinForm";
	}
	
	// 회원아이디 중복체크 기능 /registerCheck.do
	@GetMapping("/registerCheck.do")
	public @ResponseBody int registerCheck(@RequestParam("memID")String memID){
		
		int result = 1;
		
		Member vo = memberMapper.registerCheck(memID);
		
		if(vo != null | memID.equals("")) result = 0;
		
		return result;
	}
	
	// 회원가입 요청
	@PostMapping("/join.do")
	public String join(Member m, HttpSession session, RedirectAttributes rttr) {
		
		// RedirectAttributes
		// - Redirect 방식으로 페이지를 이동할 때 전달할 데이터가 있지만
		// Request에 담으면 페이지가 새로 로딩되기 때문에 Request 초기화
		// Session은 브라우저가 종료될 때까지 저장되기 때문에 별로
		// 이럴 때, 딱 한 번만 데이터를 저장해서 뿌려주는 저장소(객체)
		
//		System.out.println(m.toString());
		
		if(m.getMemID() == null 		|| m.getMemID().equals("")|| 
			m.getMemPassword() == null 	|| m.getMemPassword().equals("")||
			m.getMemName() == null 		|| m.getMemName().equals("")||
			m.getMemEmail() == null 	|| m.getMemEmail().equals("")||
			m.getMemAge() == 0 			|| m.getAuthList().size() == 0 ) {
			
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "모든 정보를 입력하세요.");
			
			return "redirect:/joinForm.do";
		} else {
			// 회원가입 가능
			m.setMemProfile("");
			
			// 비밀번호 암호화 하여 회원가입
			// 비밀번호를 암호화하여 저장
			String encyPw = pwEncoder.encode(m.getMemPassword());
			m.setMemPassword(encyPw);
			
			int cnt = memberMapper.join(m);
			
			// 추가 : 권한테이블에 회원 권한 저장
			List<Auth> list = m.getAuthList();
			for(Auth auth : list) {
				if(auth.getAuth() != null) {
					Auth saveVO = new Auth();
					saveVO.setMemID(m.getMemID());
					saveVO.setAuth(auth.getAuth());
					memberMapper.authInsert(saveVO);
				}
			}
			
			if(cnt == 1) {
				// 회원가입 성공
				Member mvo = memberMapper.getMember(m.getMemID());
				
				session.setAttribute("mvo", mvo);
				
				rttr.addFlashAttribute("msgType", "성공 메세지");
				rttr.addFlashAttribute("msg", "환영합니다."+mvo.getMemName()+"님");
				
				return "redirect:/";
			} else {
				// 회원가입 실패
				
				rttr.addFlashAttribute("msgType", "실패 메세지");
				rttr.addFlashAttribute("msg", "회원가입에 실패했습니다.");
				
				return "redirect:/joinForm.do";
			}
		}
	}
	
	// 회원정보수정 페이지 이동/updateForm.do
	@GetMapping("/updateForm.do")
	public String updateForm() {
		return "member/updateForm";
	}
	
	// 회원정보 수정 /update.do
	@PostMapping("/update.do")
	public String update(Member m, HttpSession session, RedirectAttributes rttr) {
		
		// 문제
		// 회원수정할 정보를 입력받아 아이디가 일치하는 회원의
		// 비밀번호, 이름, 나이, 성별, 이메일 수정하기
		if(	m.getMemPassword() == null	||m.getMemPassword().equals("")||
				m.getMemName() == null	||m.getMemName().equals("")||
				m.getMemEmail() == null	||m.getMemEmail().equals("")||
				m.getMemAge() == 0 		||m.getAuthList().size() == 0
				) {
			rttr.addFlashAttribute("msgType", "회원수정 실패");
			rttr.addFlashAttribute("msg", "모든 정보를 입력하세요.");
			
			return "redirect:/updateForm.do";
		} else {
			m.setMemProfile(memberMapper.getMember(m.getMemID()).getMemProfile());
			
			String encyPw = pwEncoder.encode(m.getMemPassword());
			m.setMemPassword(encyPw);
			
			int cnt = memberMapper.update(m);
			
			memberMapper.authDelete(m.getMemID());
			
			if(cnt == 1) {
				// 새로운 권한 넣어주기
				List<Auth> list = m.getAuthList();
				
				for(Auth auth : list) {
					Auth saveVO = new Auth();
					saveVO.setMemID(m.getMemID());
					saveVO.setAuth(auth.getAuth());
					System.out.println(saveVO.toString());
					memberMapper.authInsert(saveVO);
				}
				
				Member mvo = memberMapper.getMember(m.getMemID());
				
				// 회원수정 성공
				session.setAttribute("mvo", mvo);
				
				rttr.addFlashAttribute("msgType", "회원수정 성공");
				rttr.addFlashAttribute("msg", "회원정보가 수정되었습니다.");
				
				return "redirect:/";
			} else {
				// 회원수정 실패
				
				rttr.addFlashAttribute("msgType", "회원수정 실패");
				rttr.addFlashAttribute("msg", "회원수정에 실패했습니다.");
				
				return "redirect:/updateForm.do";
			}
		// 조건
		// 1. 하나라도 누락된 데이터가 존재한다면 회원정보수정 페이지로 이동한 후에
		// "모든 내용을 입력하세요"라는 글자를 모달창으로 띄우기
		// 2. 회원정보수정 실패? 회원정보수정페이지로 이동 후
		// "회원정보 수정 실패" 모달로 띄우기
		// 3. 회원정보수정 성공 시 수정된 회원의 정보를 세션에 다시 저장한 후,
		// 메인으로 이동한 다음 "회원정보 수정 성공" 모달창 띄우기
		}	
	}
	
	
	
	
	// 회원 프로필 등록페이지 이동 /imageForm.do
	@GetMapping("/imageForm.do")
	public String imageForm() {
		
		return "member/imageForm";
	}
	
	//회원 프로필 등록 /imageUpdate.do
	@PostMapping("/imageUpdate.do")
	public String imageUpdate(HttpServletRequest request, HttpSession session, RedirectAttributes rttr) {
		
		// 파일 업로드 API (cos.jar)
		MultipartRequest multi = null;
		
		// MultipartRequest객체 생성하기 위해서는 매개변수가 필요
		// 1. 요청객체 (request)
		// 2. 이미지를 저장할 폴더 경로
		// 3. 허용가능한 크기
		// 4. 파일이름에 대한 인코딩
		// 5. 중복이름 안되게 해주는 객체
		
		String savePath = request.getRealPath("resources/upload");
		int fileMaxSize = 10 * 1024 * 10 * 100; // 10MB
		String enc = "utf-8";
		DefaultFileRenamePolicy dfrp = new DefaultFileRenamePolicy();
		
		// 기존 가지고 있는 해당 프로필 이미지 삭제
		String memID =((Member)session.getAttribute("mvo")).getMemID();
		String oldImg = memberMapper.getMember(memID).getMemProfile();
		File oldFile = new File(savePath + "/" + oldImg);
		
		if(oldFile.exists()) {
			oldFile.delete();
		}
		
		try {
			multi = new MultipartRequest(request, savePath, fileMaxSize, enc, dfrp);
			
		} catch (IOException e) {
			rttr.addFlashAttribute("msgType", "실패 메세지");
			rttr.addFlashAttribute("msg", "파일의 크기는 10MB를 넘을 수 없습니다.");
			return "redirect/imageForm.do";
		}
		
		
		
		// img 파일인지 아닌지 판별하기
		String newProfile = "";
		
		File file = multi.getFile("memProfile");
		
		if(file != null) {
			// 파일이 제대로 올려졌을 때 도착
			String ext = file.getName().substring(file.getName().lastIndexOf(".") + 1);
			
			// 대문자로 통일
			ext = ext.toUpperCase();
			
			boolean extResult = ext.equals("JPG") || ext.equals("PNG") || ext.equals("GIF") || ext.equals("JPEG");
			
			if(!extResult) {
				// 이미지파일이 아닐 때
				if(file.exists()) {
					file.delete();
					
					rttr.addFlashAttribute("msgType", "실패 메세지");
					rttr.addFlashAttribute("msg", "이미지 파일만 가능합니다.(PNG, JPG, GIF, JPEG");
					return "redirect/imageForm.do";
				}
			}
		}
		
		// 새로운 이미지를 테이블에 저장
		newProfile = multi.getFilesystemName("memProfile");
		
		// Mapper에 넣기 위한 객체 생성
		Member vo = new Member();
		
		vo.setMemProfile(newProfile);
		vo.setMemID(memID);
		
		memberMapper.profileUpdate(vo); // 이미지 새로 업데이트
		
		// DB에서 회원의 정보를 다시 불러와 session에 저장
		Member mvo = memberMapper.getMember(memID);
		
		session.setAttribute("mvo", mvo);
		
		rttr.addFlashAttribute("msgType", "성공 메세지");
		rttr.addFlashAttribute("msg", "이미지 변경 성공");
		return "redirect:/";
	}
}
