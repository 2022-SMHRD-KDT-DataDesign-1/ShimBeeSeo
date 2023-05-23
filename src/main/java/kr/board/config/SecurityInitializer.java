package kr.board.config;

import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;

public class SecurityInitializer extends AbstractSecurityWebApplicationInitializer{
	// AbstractSecurityWebApplicationInitializer
	// 클래스를 상속하여 SecurityInitializer를 생성한다
	// - 내부적으로 스프링 시큐리티를 동작시킨다
	// 보안 부분이라 따로 수정, 추가 불가능하고 생성만 해두면 알아서 동작
}
