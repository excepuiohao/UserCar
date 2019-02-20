package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Driver;
import com.bean.Sendorder;
import com.dao.DriverDao;
import com.service.DriverService;

@Service
public class DriverServiceImpl implements DriverService {

	@Autowired
	DriverDao driverdao;

	

	
	public void insertDriver(Driver d) {

		driverdao.insertDriver(d);
	}

	
	public Integer selectCount(Map<String, Object> info) {

		return driverdao.selectCount(info);
	}

	
	public List<Driver> selectPaged(Map<String, Object> info) {

		return driverdao.selectPaged(info);
	}

	
	public Driver selectInfoById(String dri_id) {

		return driverdao.selectInfoById(dri_id);
	}

	
	public void updateInfoById(Map<String, String> info) {

		driverdao.updateInfoById(info);
	}
	
	
	public Integer selectSendOrderCountByDriverId(String dri_id) {

		return driverdao.selectSendOrderCountByDriverId(dri_id);
	}

	
	public List<Sendorder> selectSendorderByDriverId(Map<String, Object> info) {

		return driverdao.selectSendorderByDriverId(info);
	}

}
