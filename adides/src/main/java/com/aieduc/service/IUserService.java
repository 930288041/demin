/**
 * @author 李茂
 *@data2019年5月29日下午1:49:39
 * 
 */
package com.aieduc.service;

import java.util.List;

import com.aieduc.entity.User;

/**
 * @author limao
 *@data2019年5月29日下午1:49:39
 */
public interface IUserService {

	User findUserByUserName(String userName);
	User findUserByUserId(Integer userId);
	List<User> findUserPageList(User user);
	Integer findUserCounts(User user);
	Integer findDeleteByUser(Integer userId);
	
}
