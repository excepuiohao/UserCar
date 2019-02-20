package com.dao;

import java.util.List;
import java.util.Map;

import com.bean.Driver;
import com.bean.Sendorder;

public interface DriverDao {

	public void insertDriver(Driver d);

	public Integer selectCount(Map<String, Object> info);

	public List<Driver> selectPaged(Map<String, Object> info);

	public Driver selectInfoById(String dri_id);

	public void updateInfoById(Map<String, String> info);
	
	public Integer selectSendOrderCountByDriverId(String dri_id);
	
	public List<Sendorder> selectSendorderByDriverId(Map<String,Object> info);

}
