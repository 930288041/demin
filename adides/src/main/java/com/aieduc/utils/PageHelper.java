/**  
* <p>Title: PageHelper.java</p>  
* <p>Description: </p>  
* <p>Copyright: Copyright (c) 2019</p>  
* <p>Company: www.nosprings.com</p>  
* @author liuhaibing
* @date 2019年4月22日  
* @version 1.0  
*/  
package com.aieduc.utils;

import java.util.List;

/**
 * 通用的分页帮助类
 * @author liuhaibing
 * @date 2019年4月22日  
 * @version 1.0  
 */
public class PageHelper {
	private Integer pageSize;    // 每页显示的条数
	private Integer currentPage; // 当前是哪一页
	private Integer totalPage;   // 总共有多少页
	private Integer totalCount;  // 总共有多少条数据
	private List pageList;       // 当前页要显示的数据列表
	
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public List getPageList() {
		return pageList;
	}
	public void setPageList(List pageList) {
		this.pageList = pageList;
	}
	
	
}
