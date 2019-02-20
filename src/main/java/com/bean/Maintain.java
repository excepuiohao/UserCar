package com.bean;

import java.sql.Date;

public class Maintain {
	String mai_id;
	String car_id;
	String dri_id;
	int mai_money;
	Date mai_time;
	Date mai_taketime;
	String adm_id;
	String mai_remark;
	String mai_garage;
	String mai_status;

	public Maintain(String mai_id, String car_id, String dri_id,
			int mai_money, Date mai_time, Date mai_taketime,
			String adm_id, String mai_remark, String mai_garage,
			String mai_status) {
		super();
		this.mai_id = mai_id;
		this.car_id = car_id;
		this.dri_id = dri_id;
		this.mai_money = mai_money;
		this.mai_time = mai_time;
		this.mai_taketime = mai_taketime;
		this.adm_id = adm_id;
		this.mai_remark = mai_remark;
		this.mai_garage = mai_garage;
		this.mai_status = mai_status;
	}



	public String getMai_id() {
		return mai_id;
	}



	public void setMai_id(String mai_id) {
		this.mai_id = mai_id;
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



	public int getMai_money() {
		return mai_money;
	}



	public void setMai_money(int mai_money) {
		this.mai_money = mai_money;
	}



	public Date getMai_time() {
		return mai_time;
	}



	public void setMai_time(Date mai_time) {
		this.mai_time = mai_time;
	}



	public Date getMai_taketime() {
		return mai_taketime;
	}



	public void setMai_taketime(Date mai_taketime) {
		this.mai_taketime = mai_taketime;
	}



	public String getAdm_id() {
		return adm_id;
	}



	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}



	public String getMai_remark() {
		return mai_remark;
	}



	public void setMai_remark(String mai_remark) {
		this.mai_remark = mai_remark;
	}



	public String getMai_garage() {
		return mai_garage;
	}



	public void setMai_garage(String mai_garage) {
		this.mai_garage = mai_garage;
	}



	public String getMai_status() {
		return mai_status;
	}



	public void setMai_status(String mai_status) {
		this.mai_status = mai_status;
	}



	public Maintain() {
		super();
		// TODO Auto-generated constructor stub
	}

}
