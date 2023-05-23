package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor // 기본 생성자
@ToString
public class Auth {
	private int no; // 일련번호
	private String memID; // 회원 아이디
	private String auth; // 회원권한( ROLE_USER, ROLE_MANAGER, ROLE_ADMIN)
}
