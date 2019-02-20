package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Car;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.Refueling;
import com.bean.Sendorder;


public interface CarManagerService {
	
	public List<Car> findCarBySometype (Map<String, Object> map);
	
	public List<Car> findAllCar();
	
	public void insertCar(Car car);
	
	public List<Car> findCarByStatus(String car_status);
	
	public List<Car> findCarById(String car_id);
	
	public List<Sendorder> findSendorderByCarId(String car_id);
	
	public String countSendorderTimes(String car_id);
	
	public String countMaintainTimes(String car_id);
	
	public String countMaintainMoney(String car_id);
	
	public String countMaintenanceTimes(String car_id);
	
	public String countMaintenanceMoney(String car_id);
	
	public String countRefuelingMoney(String car_id);
	
	public void scrappedCar(String car_id);
	
	public List<Maintain> findAllMaintain(String adm_id);
	
	public List<Maintenance> findAllMaintenance(String adm_id);
	
	public List<Refueling> findAllRefueling();
	
	public List<Maintain> findMaintainById(String car_id);
	
	public List<Maintenance> findMaintenanceById(String car_id);
	
	public List<Refueling> findRefuelingById(String car_id);
	
	public void approvedMaintain(String mai_id);
	
	public void approvedMaintenance(String maa_id);
	
	public void refuseMaintain(String mai_id);
	
	public void refuseMaintenance(String maa_id);
	
	public List<String> findDriver();
	
	public String JudgeMaiStatus(String mai_id);
	
	public String JudgeMaaStatus(String maa_id);
	
public List<String> findCarStatus();
	
	public void maintainCar(String car_id);
	
	public void maintenanceCar(String car_id);
	
	public void completeCar(String car_id);

}
