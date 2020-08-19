/**  
* <p>Title: SpringWebMvcConfig.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2019</p>  
* <p>Company: www.nosprings.com</p>  
* @author liuhaibing
* @date 2019年5月24日  
* @version 1.0  
*/  
package com.aieduc.config;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.aieduc.interceptor.TestSessioninterceptor;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;

/**
 * @author liuhaibing
 * @date 2019年5月24日  
 * @version 1.0  
 */
@Configuration
public class SpringWebMvcConfig extends WebMvcConfigurationSupport{
	
	@Autowired
	private FastJsonHttpMessageConverter fastJsonHttpMessageConverter;
	
	@Bean    
	public HttpMessageConverter<String> responseBodyConverter() {        
		StringHttpMessageConverter stringHttpMessageConverter = new StringHttpMessageConverter(Charset.forName("UTF-8"));        
		stringHttpMessageConverter.setSupportedMediaTypes(Collections.singletonList(MediaType.APPLICATION_JSON_UTF8));        
		return stringHttpMessageConverter;    
	}
	
	/**
	 * 配置json解析器
	 */
	@Override
	protected void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		// TODO Auto-generated method stub
		converters.add(responseBodyConverter());
		converters.add(fastJsonHttpMessageConverter);
		super.configureMessageConverters(converters);
	}
	
	@Override
	protected void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		registry.addResourceHandler("/**").addResourceLocations("classpath:/static/");
		registry.addResourceHandler("/images/**").addResourceLocations("file:E:/upload");
		super.addResourceHandlers(registry);
	}

	/**
	 * 配置视图解析器
	 */
    @Override
    public ViewResolver mvcViewResolver() {
    	// TODO Auto-generated method stub
    	 InternalResourceViewResolver resolver = new InternalResourceViewResolver();
         resolver.setPrefix("/WEB-INF/views/");
         resolver.setSuffix(".jsp");
         resolver.setViewNames("*");
         resolver.setOrder(2);
         return resolver;
    }
    
    
    @Override
    protected void addInterceptors(InterceptorRegistry registry) {
    	// TODO Auto-generated method stub
    	registry.addInterceptor(new TestSessioninterceptor()).addPathPatterns("/*").excludePathPatterns("/login.do","/verifycode.do","/register.do");
    	super.addInterceptors(registry);
    }
    
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }    
}
