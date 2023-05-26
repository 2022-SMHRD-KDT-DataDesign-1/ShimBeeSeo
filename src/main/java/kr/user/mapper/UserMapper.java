package kr.user.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.User;

@Mapper
public interface UserMapper {

	public User login(User m);

	public int join(User m);

// zz
	
}
