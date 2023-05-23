package kr.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

// 비동기통신 전용 controller >> 페이지이동x, 객체반환 only
// 그래서 굳이 responsebody 명시할 필요 x
@RequestMapping("/board")
@RestController
public class BoardRestController {
	
	@Autowired
	private BoardMapper boardMapper;

	// 게시글 전체보기 /boardList.do
	@GetMapping("/all")
	public List<Board> boardList(){
		List<Board> list = boardMapper.boardList();
		return list;
	}
	
	// 게시글 등록하기
	@PostMapping("/new")
	public void boardInsert(Board board){
		boardMapper.boardInsert(board);
	}
	
	// 게시글 삭제하기
	@DeleteMapping("/{idx}")
	public void boardDelete(@PathVariable("idx")int idx) {
		boardMapper.boardDelete(idx);
	}
	
	// 게시글 수정하기
	@PutMapping("/update")
	public void boardUpdate(@RequestBody Board vo) {
//		System.out.println(vo.toString());
		boardMapper.boardUpdate(vo);
	}
	
	// 게시글 상세보기
	@GetMapping("/{idx}")
	public Board boardContent(@PathVariable("idx")int idx) {
		Board vo = boardMapper.boardContent(idx);
		return vo;
	}
	
	// 조회수 올리기
	@PutMapping("/count/{idx}")
	public void boardCount(@PathVariable("idx")int idx) {
		boardMapper.boardCount(idx);
	}
	
}
