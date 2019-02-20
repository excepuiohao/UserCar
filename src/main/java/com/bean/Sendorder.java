package com.bean;

import java.sql.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Sendorder {
	@NotEmpty
	String send_id;
	@NotEmpty
	String adm_id;
	String app_id;
	Date send_time;
	String send_status;
	@NotEmpty
	String car_id;
	String dri_id;
	
	
	
	public Sendorder() {
		super();
	}



	public Sendorder(String send_id, String adm_id, String app_id, Date send_time, String send_status, String car_id,
			String dri_id) {
		super();
		this.send_id = send_id;
		this.adm_id = adm_id;
		this.app_id = app_id;
		this.send_time = send_time;
		this.send_status = send_status;
		this.car_id = car_id;
		this.dri_id = dri_id;
	}



	public String getSend_id() {
		return send_id;
	}



	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}



	public String getAdm_id() {
		return adm_id;
	}



	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}



	public String getApp_id() {
		return app_id;
	}



	public void setApp_id(String app_id) {
		this.app_id = app_id;
	}







	public Date getSend_time() {
		return send_time;
	}



	public void setSend_time(Date send_time) {
		this.send_time = send_time;
	}



	public String getSend_status() {
		return send_status;
	}



	public void setSend_status(String send_status) {
		this.send_status = send_status;
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



	@Override
	public String toString() {
		return "Sendorder [send_id=" + send_id + ", adm_id=" + adm_id + ", app_id=" + app_id + ", send_time="
				+ send_time + ", send_status=" + send_status + ", car_id=" + car_id + ", dri_id=" + dri_id + "]";
	}



	
}
