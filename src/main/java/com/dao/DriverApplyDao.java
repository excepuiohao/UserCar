package com.dao;


import java.util.List;

import com.bean.Driver;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.Order;
import com.bean.Refueling;
import com.bean.Scrap;

public interface DriverApplyDao {
	public void insertMaintain(Maintain m);
	public void insertMaintenance(Maintenance m);
	public void insertRefueling(Refueling r);
	public void insertScrap(Scrap s);
	public Driver selectDriverById(String dri_id);
	public List<Order> selectSendOrderById(String dri_id);
	public List<Order> selectMaintainById(String dri_id);
	public List<Order> selectMaintenanceById(String dri_id);
	public List<Order> selectRefuelingById(String dri_id);
	public List<Order> selectScrapById(String dri_id);
}
