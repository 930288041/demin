/**  
* <p>Title: User.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2019</p>  
* <p>Company: www.nosprings.com</p>  
* @author liuhaibing
* @date 2019年4月16日  
* @version 1.0  
*/  
package com.aieduc.entity;

/**
 * 用户实体类，也是一个VO：值对象，用来保存用户的相关信息
 * @author liuhaibing
 * @date 2019年4月16日  
 * @version 1.0  
 */
public class User {
	private Integer userId;    // 用户的ID
	private String  userName;  // 用户的名称
	private String  userPwd;   // 用户的密码
	private Integer userAge;
	private String  userRealName;
	private String  userPic;
	private Integer userSex;
	private String  userIntro;
	private Integer userDeptId;
	private Integer userStatus;
	private String  userCellPhone;
	private Integer userQQ;
	private Dept userDept;
	
	
	private Integer currentPage;
	private Integer pageSize;
	private Integer startRow;
	private Integer endRow;
	
	
	
	
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public Integer getUserAge() {
		return userAge;
	}
	public void setUserAge(Integer userAge) {
		this.userAge = userAge;
	}
	public String getUserRealName() {
		return userRealName;
	}
	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}
	public String getUserPic() {
		return userPic;
	}
	public void setUserPic(String userPic) {
		this.userPic = userPic;
	}
	public Integer getUserSex() {
		return userSex;
	}
	public void setUserSex(Integer userSex) {
		this.userSex = userSex;
	}
	public String getUserIntro() {
		return userIntro;
	}
	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}
	public Integer getUserDeptId() {
		return userDeptId;
	}
	public void setUserDeptId(Integer userDeptId) {
		this.userDeptId = userDeptId;
	}
	public Integer getUserStatus() {
		return userStatus;
	}
	public void setUserStatus(Integer userStatus) {
		this.userStatus = userStatus;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	public Integer getEndRow() {
		return endRow;
	}
	public void setEndRow(Integer endRow) {
		this.endRow = endRow;
	}
	public String getUserCellPhone() {
		return userCellPhone;
	}
	public void setUserCellPhone(String userCellPhone) {
		this.userCellPhone = userCellPhone;
	}
	public Integer getUserQQ() {
		return userQQ;
	}
	public void setUserQQ(Integer userQQ) {
		this.userQQ = userQQ;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Dept getUserDept() {
		return userDept;
	}
	public void setUserDept(Dept userDept) {
		this.userDept = userDept;
	}
}
