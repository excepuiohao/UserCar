package com.bean;

import java.sql.Date;

public class ApplyCarBean {
	String app_id;
	String emp_id;
	String adm_id;
	String car_type;
	String car_color;
	int app_count;
	String app_beginplace;
	String app_route;
	String app_lastplace;
	Date app_time;
	Date app_usetime;
	int app_duration;
	String app_reason;
	String app_remarks;
	String app_status;
	String emp_name;
	String emp_mech;
	
	
	
	public ApplyCarBean(String app_id, String emp_id, String adm_id,
			String car_type, String car_color, int app_count,
			String app_beginplace, String app_route, String app_lastplace,
			Date app_time, Date app_usetime, int app_duration,
			String app_reason, String app_remarks, String app_status,
			String emp_name, String emp_mech) {
		super();
		this.app_id = app_id;
		this.emp_id = emp_id;
		this.adm_id = adm_id;
		this.car_type = car_type;
		this.car_color = car_color;
		this.app_count = app_count;
		this.app_beginplace = app_beginplace;
		this.app_route = app_route;
		this.app_lastplace = app_lastplace;
		this.app_time = app_time;
		this.app_usetime = app_usetime;
		this.app_duration = app_duration;
		this.app_reason = app_reason;
		this.app_remarks = app_remarks;
		this.app_status = app_status;
		this.emp_name = emp_name;
		this.emp_mech = emp_mech;
	}
	public ApplyCarBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_mech() {
		return emp_mech;
	}
	public void setEmp_mech(String emp_mech) {
		this.emp_mech = emp_mech;
	}
	public String getApp_id() {
		return app_id;
	}
	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getAdm_id() {
		return adm_id;
	}
	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}
	public String getCar_type() {
		return car_type;
	}
	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}
	public String getCar_color() {
		return car_color;
	}
	public void setCar_color(String car_color) {
		this.car_color = car_color;
	}
	public int getApp_count() {
		return app_count;
	}
	public void setApp_count(int app_count) {
		this.app_count = app_count;
	}
	public String getApp_beginplace() {
		return app_beginplace;
	}
	public void setApp_beginplace(String app_beginplace) {
		this.app_beginplace = app_beginplace;
	}
	public String getApp_route() {
		return app_route;
	}
	public void setApp_route(String app_route) {
		this.app_route = app_route;
	}
	public String getApp_lastplace() {
		return app_lastplace;
	}
	public void setApp_lastplace(String lastplace) {
		this.app_lastplace = lastplace;
	}
	public Date getApp_time() {
		return app_time;
	}
	public void setApp_time(Date app_time) {
		this.app_time = app_time;
	}
	public Date getApp_usetime() {
		return app_usetime;
	}
	public void setApp_usetime(Date app_usetime) {
		this.app_usetime = app_usetime;
	}
	public int getApp_duration() {
		return app_duration;
	}
	public void setApp_duration(int app_duration) {
		this.app_duration = app_duration;
	}
	public String getApp_reason() {
		return app_reason;
	}
	public void setApp_reason(String app_reason) {
		this.app_reason = app_reason;
	}
	public String getApp_remarks() {
		return app_remarks;
	}
	public void setApp_remarks(String app_remarks) {
		this.app_remarks = app_remarks;
	}
	public String getApp_status() {
		return app_status;
	}
	public void setApp_status(String app_status) {
		this.app_status = app_status;
	}
	@Override
	public String toString() {
		return "ApplyCarBean [app_id=" + app_id + ", emp_id=" + emp_id
				+ ", adm_id=" + adm_id + ", car_type=" + car_type
				+ ", car_color=" + car_color + ", app_count=" + app_count
				+ ", app_beginplace=" + app_beginplace + ", app_route="
				+ app_route + ", lastplace=" + app_lastplace + ", app_time="
				+ app_time + ", app_usetime=" + app_usetime + ", app_duration="
				+ app_duration + ", app_reason=" + app_reason
				+ ", app_remarks=" + app_remarks + ", app_status=" + app_status
				+ "]";
	}
	
	
	
}
