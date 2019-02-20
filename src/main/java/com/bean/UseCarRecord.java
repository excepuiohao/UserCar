package com.bean;

import java.sql.Date;


public class UseCarRecord {
	String app_id;
	String emp_id;
	String emp_mech;
	String emp_phone;
	String car_type;
	String car_id;
	Date app_usetime;
	String send_status;
	
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getApp_id() {
		return app_id;
	}
	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}
	public String getEmp_mech() {
		return emp_mech;
	}
	public void setEmp_mech(String emp_mech) {
		this.emp_mech = emp_mech;
	}
	public String getEmp_phone() {
		return emp_phone;
	}
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getCar_id() {
		return car_id;
	}
	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}
	public Date getApp_usetime() {
		return app_usetime;
	}
	public void setApp_usetime(Date app_usetime) {
		this.app_usetime = app_usetime;
	}
	
	public String getSend_status() {
		return send_status;
	}
	public void setSend_status(String send_status) {
		this.send_status = send_status;
	}
	public UseCarRecord(String app_id, String emp_id, String emp_mech, String emp_phone, String car_type, String car_id,
			Date app_usetime, String send_status) {
		super();
		this.app_id = app_id;
		this.emp_id = emp_id;
		this.emp_mech = emp_mech;
		this.emp_phone = emp_phone;
		this.car_type = car_type;
		this.car_id = car_id;
		this.app_usetime = app_usetime;
		this.send_status = send_status;
	}
	public UseCarRecord() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UseCarRecord [app_id=" + app_id + ", emp_id=" + emp_id + ", emp_mech=" + emp_mech + ", emp_phone="
				+ emp_phone + ", car_type=" + car_type + ", car_id=" + car_id + ", app_usetime=" + app_usetime
				+ ", send_status=" + send_status + "]";
	}
	
}
