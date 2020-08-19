/**
 * @author 李茂
 *@data2019年6月6日上午9:22:18
 * 
 */
package com.aieduc.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.aieduc.entity.User;

/**
 * @author limao
 *@data2019年6月6日上午9:22:18
 */
@Component
public class TestSessioninterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		User user=(User) request.getSession().getAttribute("user");
		if(user==null) {
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
			return false;
		}
		return true;
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}
}
