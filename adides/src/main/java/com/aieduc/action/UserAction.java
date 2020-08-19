/**
 * @author 李茂
 *@data2019年6月1日上午10:33:07
 * 
 */
package com.aieduc.action;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aieduc.entity.User;
import com.aieduc.service.IUserService;
import com.aieduc.service.impl.UserServiceImpl;
import com.aieduc.utils.PageHelper;

/**
 * @author limao
 *@data2019年6月1日上午10:33:07
 */
@Controller
public class UserAction {

	@Autowired
	IUserService userServiceImpl;
	
	@RequestMapping("user.do")
	public String user() {
		return "system/userinfo";
	}
	
	@RequestMapping("userlist.do")
	@ResponseBody
	public Map<String,Object> userList(@RequestBody User user){
		
		Map<String,Object> map=new HashMap<String,Object>();
		PageHelper pageHelper =new PageHelper();
		if(user.getCurrentPage()==null||user.getCurrentPage()==0) {
			pageHelper.setCurrentPage(1);	
			pageHelper.setPageSize(10);
			user.setCurrentPage(1);
			user.setPageSize(10);
		}else {
			pageHelper.setCurrentPage(user.getCurrentPage());	
			pageHelper.setPageSize(user.getPageSize());	
		}
		
		user.setStartRow((user.getCurrentPage()-1)*user.getPageSize());
		
		pageHelper.setTotalCount(userServiceImpl.findUserCounts(user));
		int totalPage=0;
		if(pageHelper.getTotalCount()%pageHelper.getPageSize()==0) {
			totalPage=pageHelper.getTotalCount()/pageHelper.getPageSize();
		}else {
			totalPage=pageHelper.getTotalCount()/pageHelper.getPageSize()+1;
		}
		pageHelper.setTotalPage(totalPage);
		
		pageHelper.setPageList(userServiceImpl.findUserPageList(user));
		map.put("data", pageHelper);
		map.put("success", "true");
		return map;
	}
	@RequestMapping("deleteUser.do")
	@ResponseBody
	public Map<String,Object> deleteUser(@RequestParam Integer userId){
		String success=null;
		int count=userServiceImpl.findDeleteByUser(userId);
		Map<String,Object> map=new HashMap<String,Object>();
		if(count>0) {
			map.put("success", "true");
		}else {
			map.put("success", "false");
		}
		return map;
	}
	@RequestMapping("updateUser.do")
	@ResponseBody
	public Map<String,Object> updateUser(@RequestBody User user){
		String success=null;
		int count=0;
		Map<String,Object> map=new HashMap<String,Object>();
		if(count>0) {
			map.put("success", "true");
		}else {
			map.put("success", "false");
		}
		return map;
	}
}
