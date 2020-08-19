/**
 * @author 李茂
 *@data2019年5月29日下午1:50:28
 * 
 */
package com.aieduc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aieduc.dao.UserDao;
import com.aieduc.entity.User;
import com.aieduc.service.IUserService;

/**
 * @author limao
 *@data2019年5月29日下午1:50:28
 */
@Service
public class UserServiceImpl implements IUserService{
    @Autowired
	UserDao userDao;
	
	public User findUserByUserName(String userName) {
		
		return userDao.findUserByUserName(userName);
	}

	
	@Override
	public User findUserByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return userDao.findUserByUserId(userId);
	}

	
	@Override
	public List<User> findUserPageList(User user) {
		// TODO Auto-generated method stub
		return userDao.findUserPageList(user);
	}

	
	@Override
	public Integer findUserCounts(User user) {
		// TODO Auto-generated method stub
		return userDao.findUserCounts(user);
	}


	
	@Override
	public Integer findDeleteByUser(Integer userId) {
		// TODO Auto-generated method stub
		return userDao.findDeleteByUser(userId);
	}

	
}
