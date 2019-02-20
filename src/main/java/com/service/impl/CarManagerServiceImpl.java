package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Car;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.Refueling;
import com.bean.Sendorder;
import com.dao.CarManagerDao;
import com.service.CarManagerService;

@Service
public class CarManagerServiceImpl implements CarManagerService {
	
	@Autowired
	CarManagerDao cdao;

	
	public List<Car> findAllCar() {
		return cdao.findAllCar();
	}

	
	public void insertCar(Car car) {
		cdao.insertCar(car);
	}

	
	public List<Car> findCarByStatus(String car_status) {
		return cdao.findCarByStatus(car_status);
	}

	
	public List<Car> findCarById(String car_id) {
		return cdao.findCarById(car_id);
	}

	
	public List<Sendorder> findSendorderByCarId(String car_id) {
		return cdao.findSendorderByCarId(car_id);
	}

	
	public String countSendorderTimes(String car_id) {
		return cdao.countSendorderTimes(car_id);
	}

	
	public String countMaintainTimes(String car_id) {
		return cdao.countMaintainTimes(car_id);
	}

	
	public String countMaintainMoney(String car_id) {
		return cdao.countMaintainMoney(car_id);
	}

	
	public String countMaintenanceTimes(String car_id) {
		return cdao.countMaintenanceTimes(car_id);
	}

	
	public String countMaintenanceMoney(String car_id) {
		return cdao.countMaintenanceMoney(car_id);
	}

	
	public String countRefuelingMoney(String car_id) {
		return cdao.countRefuelingMoney(car_id);
	}

	
	public void scrappedCar(String car_id) {
		cdao.scrappedCar(car_id);
 		
	}

	
	public List<Maintain> findAllMaintain(String adm_id) {
		return cdao.findAllMaintain(adm_id);
	}

	
	public List<Maintenance> findAllMaintenance(String adm_id) {
		return cdao.findAllMaintenance(adm_id);
	}

	
	public List<Refueling> findAllRefueling() {
		return cdao.findAllRefueling();
	}

	
	public List<Maintain> findMaintainById(String car_id) {
		return cdao.findMaintainById(car_id);
	}

	
	public List<Maintenance> findMaintenanceById(String car_id) {
		return cdao.findMaintenanceById(car_id);
	}

	
	public List<Refueling> findRefuelingById(String car_id) {
		return cdao.findRefuelingById(car_id);
	}

	
	public void approvedMaintain(String mai_id) {
		cdao.approvedMaintain(mai_id);
	}

	
	public void approvedMaintenance(String maa_id) {
		cdao.approvedMaintenance(maa_id);
	}

	
	public void refuseMaintain(String mai_id) {
		cdao.refuseMaintain(mai_id);
		
	}

	
	public void refuseMaintenance(String maa_id) {
        cdao.refuseMaintenance(maa_id);		
	}

	
	public List<String> findDriver() {
		return cdao.findDriver();
	}

	
	public String JudgeMaiStatus(String mai_id) {
		return cdao.JudgeMaiStatus(mai_id);
	}

	
	public String JudgeMaaStatus(String maa_id) {
		return cdao.JudgeMaaStatus(maa_id);
	}

	
	public List<Car> findCarBySometype(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return cdao.findCarBySometype(map);
	}

	
	public List<String> findCarStatus() {
		// TODO Auto-generated method stub
		return cdao.findCarStatus();
	}

	
	public void maintainCar(String car_id) {
		// TODO Auto-generated method stub
		cdao.maintainCar(car_id);
	}

	
	public void maintenanceCar(String car_id) {
		// TODO Auto-generated method stub
		cdao.maintenanceCar(car_id);
	}

	
	public void completeCar(String car_id) {
		// TODO Auto-generated method stub
		cdao.completeCar(car_id);
	}

	
	
	

}
