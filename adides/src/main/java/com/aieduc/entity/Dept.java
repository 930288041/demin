/**  
* <p>Title: Dept.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2019</p>  
* <p>Company: www.nosprings.com</p>  
* @author liuhaibing
* @date 2019年4月25日  
* @version 1.0  
*/  
package com.aieduc.entity;

import java.util.List;

/**
 * @author liuhaibing
 * @date 2019年4月25日  
 * @version 1.0  
 */
public class Dept {
	private Integer deptId;
	private String  deptName;
	private Integer parentId;
	private List<Dept> childDepts;
	
	public Integer getDeptId() {
		return deptId;
	}
	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public List<Dept> getChildDepts() {
		return childDepts;
	}
	public void setChildDepts(List<Dept> childDepts) {
		this.childDepts = childDepts;
	}
}
