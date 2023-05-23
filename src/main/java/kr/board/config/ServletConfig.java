package kr.board.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc 	// MVC 방식으로 적용될 ServletConfig Class
@Configuration 	// 다른 클래스에서 불러 적용시킬 설정파일 명시
@ComponentScan(basePackages = {"kr.board.controller"})	// POJO 찾는 componetScan 설정
public class ServletConfig implements WebMvcConfigurer{
	// servlet-context.xml을 대체할 클래스

	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// ViewResolvers 설정 부분
		
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		
		// 세팅 주체인 registry에 설정 등록하기
		registry.viewResolver(bean);
		
	}

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// resources 파일 경로 설정해주기
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
	
	
	
}
