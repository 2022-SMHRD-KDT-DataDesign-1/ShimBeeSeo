package kr.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.User;
import kr.board.entity.User_Result;

@Mapper
public interface UserResultMapper {

	// 모든 검사 불러오기
	public List<User_Result> viewResult(String user_id);
	
	public User_Result viewOneResult(String user_id);

	public void insertResult(User_Result checkedResult);
	

}
