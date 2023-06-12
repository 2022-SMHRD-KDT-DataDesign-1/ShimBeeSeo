package kr.user.mapper;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.User;

@Mapper
public interface UserMapper {

	public User login(User m);

	public int join(User m);

	public User selectUser(HashMap<String, Object> userInfo);

	public User kakaoLogin(String user_id);

	public void kakaoJoin(HashMap<String, Object> userInfo);

	public void kakaoJoinDetail(User m);


	
}
