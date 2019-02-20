package com.bean;

import java.util.ArrayList;
import java.util.List;

public class PageBean {

	private int pageCode;
	private int pageSize;
	private int allCount;
	private int allPages;
	private List list = new ArrayList();
	
	public int getPageCode() {
		return pageCode;
	}
	public void setPageCode(int pageCode) {
		this.pageCode = pageCode;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getAllCount() {
		return allCount;
	}
	public void setAllCount(int allCount) {
		this.allCount = allCount;
	}
	public int getAllPages() {
		return (allCount-1)/pageSize+1;
	}
	public void setAllPages(int allPages) {
		this.allPages = allPages;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
}
