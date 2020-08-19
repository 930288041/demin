/**
 * @author 李茂
 *@data2019年5月27日下午3:51:03
 * 
 */
package com.aieduc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * @author limao
 *@data2019年5月27日下午3:51:03
 */
@SpringBootApplication
@MapperScan("com.aieduc.dao")
public class BootApplication extends SpringBootServletInitializer{

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        SpringApplication.run(BootApplication.class, args);
	}

}
