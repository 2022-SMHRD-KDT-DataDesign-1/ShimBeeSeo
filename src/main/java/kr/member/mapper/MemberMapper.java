package kr.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import kr.board.entity.Auth;
import kr.board.entity.Board;
import kr.board.entity.Member;

@Mapper
public interface MemberMapper {

	Member registerCheck(String memID);

	int join(Member m);

	Member login(Member m);

	int update(Member m);

	Member getMember(String memID);

	void profileUpdate(Member vo);

	void authInsert(Auth saveVO);

	void authDelete(String memID);

}



















