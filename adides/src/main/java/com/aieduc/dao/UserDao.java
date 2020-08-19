/**
 * @author 李茂
 *@data2019年5月29日下午2:01:37
 * 
 */
package com.aieduc.dao;

import java.util.List;

import com.aieduc.entity.User;

/**
 * @author limao
 *@data2019年5月29日下午2:01:37
 */
public interface UserDao {

	User findUserByUserName(String userName);
	User findUserByUserId(Integer userId);
	List<User> findUserPageList(User user);
	Integer findUserCounts(User user);
	Integer findDeleteByUser(Integer userId);
	
}
