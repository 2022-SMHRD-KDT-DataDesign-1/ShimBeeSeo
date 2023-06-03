package kr.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.User;
import kr.board.entity.User_Result;

@Mapper
public interface UserResultMapper {

	public List<User_Result> viewResult(User m);
	

}
