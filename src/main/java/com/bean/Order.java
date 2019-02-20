package com.bean;

import java.sql.Date;

public class Order {
	String id;
	String car_id;
	String dri_id;
	String adm_id;
	String times;
	Date times1;
	String status;

	public Order(String id, String car_id, String dri_id, String adm_id, String times, Date times1, String status) {
		super();
		this.id = id;
		this.car_id = car_id;
		this.dri_id = dri_id;
		this.adm_id = adm_id;
		this.times = times;
		this.times1 = times1;
		this.status = status;
	}

	public Date getTimes1() {
		return times1;
	}

	public void setTimes1(Date times1) {
		this.times1 = times1;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	public String getDri_id() {
		return dri_id;
	}

	public void setDri_id(String dri_id) {
		this.dri_id = dri_id;
	}

	public String getAdm_id() {
		return adm_id;
	}

	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}

	public String getTimes() {
		return times;
	}

	public void setTimes(String times) {
		this.times = times;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Order(String id, String car_id, String dri_id, String adm_id, String times, String status) {
		super();
		this.id = id;
		this.car_id = car_id;
		this.dri_id = dri_id;
		this.adm_id = adm_id;
		this.times = times;
		this.status = status;
	}

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "订单号："+getId()+"，车牌号："+getCar_id()+"，驾驶人："+getDri_id()+"，审批人："+getAdm_id()+"，订单时间："+getTimes1()+"，订单状态："+getStatus();
	}
}
