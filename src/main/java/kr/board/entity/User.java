package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {

    // 아이디 
    private String user_id;

    // 비밀번호
    private String user_pw;
    
    // 가입자이름 
    private String user_name;

    // 가입자 생년월일 
    private String user_bdate;

    // 아동 이름 
    private String user_childname;

    // 아동 생년월일 
    private String user_childbdate;

    // 가족관계 
    private String user_relation;

    // 주소(지역) 
    private String user_address;

    // 가입 일자 
    private String user_joindate;

    // 개인정보 제공 동의 
    private String user_isagreed;

	public User(String user_id, String user_pw, String user_name) {
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
	}
	
    
    
}
