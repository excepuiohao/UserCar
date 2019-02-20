package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Driver;
import com.bean.Sendorder;

public interface DriverService {
	// 插入驾驶员信息
	public void insertDriver(Driver d);

	// 根据类型查询总共有多少条驾驶员信息
	public Integer selectCount(Map<String, Object> info);

	// 根据页码查询驾驶员的基本信息信息（设置每页默认10条数据）
	public List<Driver> selectPaged(Map<String, Object> info);

	// 根据id查询一个驾驶员的详细信息
	public Driver selectInfoById(String dri_id);

	// 给出驾驶员属性与其新值，根据id修改一个驾驶员该属性的值
	public void updateInfoById(Map<String, String> info);
	
	//根据驾驶员id查询该驾驶员派单记录总数
	public Integer selectSendOrderCountByDriverId(String dri_id);
	
	//根据驾驶员id查询该驾驶员的派单记录
	public List<Sendorder> selectSendorderByDriverId(Map<String,Object> info);

}
