package kr.user.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.CountJoin;
import kr.board.entity.Region;
import kr.board.entity.User;

@Mapper
public interface UserMapper {

	public User login(User m);

	public int join(User m);

	public User selectUser(HashMap<String, Object> userInfo);

	public User kakaoLogin(String user_id);

	public void kakaoJoin(HashMap<String, Object> userInfo);

	public void kakaoJoinDetail(User m);

	public List<CountJoin> joinPerMonth();

	public List<String> kidsAge();

	public List<Region> region();
	
	public List<User> user();

	public List<User> allUserList();
	

}
