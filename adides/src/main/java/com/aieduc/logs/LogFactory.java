/**
 * @author 李茂
 *@data2019年6月5日上午10:03:59
 * 
 */
package com.aieduc.logs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;


/**
 * @author limao
 *@data2019年6月5日上午10:03:59
 */
@Configuration
@Aspect
public class LogFactory {

	Logger logger=LoggerFactory.getLogger(LoggerFactory.class);
	
	@Pointcut("execution(* com.aieduc.service.*.*(..))")
	public void pointCut() {
		
	}
	
	@Before("pointCut()")
	public void beforeLog(JoinPoint joinPoint) {
		logger.info("当前调用了："+joinPoint.getSignature().getName()+Arrays.asList(joinPoint.getArgs()));
	}
	@After("pointCut()")
	public void afterLog(JoinPoint joinPoint) {
		logger.info("当前调用了："+joinPoint.getSignature().getName()+Arrays.asList(joinPoint.getArgs()));
	}
}
