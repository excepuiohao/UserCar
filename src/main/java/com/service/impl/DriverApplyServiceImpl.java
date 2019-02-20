package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Driver;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.Order;
import com.bean.Refueling;
import com.bean.Scrap;
import com.dao.DriverApplyDao;
import com.service.DriverApplyService;
@Service
public class DriverApplyServiceImpl implements DriverApplyService {
	@Autowired
	DriverApplyDao dad;

	

	
	public void insertMaintain(Maintain m) {
		// TODO Auto-generated method stub
		dad.insertMaintain(m);
	}

	
	public void insertMaintenance(Maintenance m) {
		// TODO Auto-generated method stub
		dad.insertMaintenance(m);
	}

	
	public void insertRefueling(Refueling r) {
		// TODO Auto-generated method stub
		dad.insertRefueling(r);
	}

	
	public void insertScrap(Scrap s) {
		// TODO Auto-generated method stub
		dad.insertScrap(s);
	}

	
	public Driver selectDriverById(String dri_id) {
		// TODO Auto-generated method stub
		return dad.selectDriverById(dri_id);
	}

	
	public List<Order> selectSendOrderById(String dri_id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public List<Order> selectMaintainById(String dri_id) {
		// TODO Auto-generated method stub
		return dad.selectMaintainById(dri_id);
	}

	
	public List<Order> selectMaintenanceById(String dri_id) {
		// TODO Auto-generated method stub
		return dad.selectMaintenanceById(dri_id);
	}

	
	public List<Order> selectRefuelingById(String dri_id) {
		// TODO Auto-generated method stub
		return dad.selectRefuelingById(dri_id);
	}

	
	public List<Order> selectScrapById(String dri_id) {
		// TODO Auto-generated method stub
		return dad.selectScrapById(dri_id);
	}

}
