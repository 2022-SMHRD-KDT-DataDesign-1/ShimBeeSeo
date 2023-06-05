package kr.board.config;

import javax.servlet.Filter;

import org.springframework.context.annotation.Bean;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import com.fasterxml.jackson.databind.ser.std.StdKeySerializers.Dynamic;

public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer{
   // web.xml을 대신할 클래스 파일
   // 해당 클래스가 web.xml을 대체하기 위해서는 특정 클래스를 상속받아야 한다
   

   @Override
   protected Filter[] getServletFilters() {
      CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
      encodingFilter.setEncoding("UTF-8");
      encodingFilter.setForceEncoding(true);
      return new Filter[] {encodingFilter};
   }

   @Override
   protected Class<?>[] getRootConfigClasses() {
      // TODO Auto-generated method stub
      return new Class[] {RootConfig.class, SecurityConfig.class} ;
   }

   @Override
   protected Class<?>[] getServletConfigClasses() {
      // TODO Auto-generated method stub
      return new Class[] {ServletConfig.class};
   }

   @Override
   protected String[] getServletMappings() {
      // TODO Auto-generated method stub
      return new String[] {"/"};
   }

   /**
    * MultipartResolver 설정
    *
    * <bean id="multipartResolver"
    *  class="org.springframework.web.multipart.commons.CommonsMultipartResolver">
    *  <property name="maxUploadSize" value="200000000" />
    *  <property name="maxInMemorySize" value="100000000" />
    * </bean>
    */
   @Bean
   public MultipartResolver multipartResolver() {
    CommonsMultipartResolver resolver = new CommonsMultipartResolver();
    resolver.setMaxInMemorySize(100000000);
    resolver.setMaxUploadSize(200000000);
    return resolver;
   }

}



