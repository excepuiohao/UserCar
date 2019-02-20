package com.bean;

import java.sql.Date;

public class Maintenance {
	String maa_id;
	int maa_money;
	Date maa_time;
	Date maa_taketime;
	String adm_id;
	String maa_garage;
	String maa_kilometer;
	String maa_nextkilometer;
	String maa_projects;
	String maa_status;
	String dri_id;
	String car_id;
	String maa_remark;
	
	public Maintenance() {
		super();
	}

	public Maintenance(String maa_id, int maa_money, Date maa_time, Date maa_taketime, String adm_id, String maa_garage,
			String maa_kilometer, String maa_nextkilometer, String maa_projects, String maa_status, String dri_id,
			String car_id, String maa_remark) {
		super();
		this.maa_id = maa_id;
		this.maa_money = maa_money;
		this.maa_time = maa_time;
		this.maa_taketime = maa_taketime;
		this.adm_id = adm_id;
		this.maa_garage = maa_garage;
		this.maa_kilometer = maa_kilometer;
		this.maa_nextkilometer = maa_nextkilometer;
		this.maa_projects = maa_projects;
		this.maa_status = maa_status;
		this.dri_id = dri_id;
		this.car_id = car_id;
		this.maa_remark = maa_remark;
	}

	public String getMaa_id() {
		return maa_id;
	}

	public void setMaa_id(String maa_id) {
		this.maa_id = maa_id;
	}

	public int getMaa_money() {
		return maa_money;
	}

	public void setMaa_money(int maa_money) {
		this.maa_money = maa_money;
	}

	public Date getMaa_time() {
		return maa_time;
	}

	public void setMaa_time(Date maa_time) {
		this.maa_time = maa_time;
	}

	public Date getMaa_taketime() {
		return maa_taketime;
	}

	public void setMaa_taketime(Date maa_taketime) {
		this.maa_taketime = maa_taketime;
	}

	public String getAdm_id() {
		return adm_id;
	}

	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}

	public String getMaa_garage() {
		return maa_garage;
	}

	public void setMaa_garage(String maa_garage) {
		this.maa_garage = maa_garage;
	}

	public String getMaa_kilometer() {
		return maa_kilometer;
	}

	public void setMaa_kilometer(String maa_kilometer) {
		this.maa_kilometer = maa_kilometer;
	}

	public String getMaa_nextkilometer() {
		return maa_nextkilometer;
	}

	public void setMaa_nextkilometer(String maa_nextkilometer) {
		this.maa_nextkilometer = maa_nextkilometer;
	}

	public String getMaa_projects() {
		return maa_projects;
	}

	public void setMaa_projects(String maa_projects) {
		this.maa_projects = maa_projects;
	}

	public String getMaa_status() {
		return maa_status;
	}

	public void setMaa_status(String maa_status) {
		this.maa_status = maa_status;
	}

	public String getDri_id() {
		return dri_id;
	}

	public void setDri_id(String dri_id) {
		this.dri_id = dri_id;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	public String getMaa_remark() {
		return maa_remark;
	}

	public void setMaa_remark(String maa_remark) {
		this.maa_remark = maa_remark;
	}

	@Override
	public String toString() {
		return "Maintenance [maa_id=" + maa_id + ", maa_money=" + maa_money + ", maa_time=" + maa_time
				+ ", maa_taketime=" + maa_taketime + ", adm_id=" + adm_id + ", maa_garage=" + maa_garage
				+ ", maa_kilometer=" + maa_kilometer + ", maa_nextkilometer=" + maa_nextkilometer + ", maa_projects="
				+ maa_projects + ", maa_status=" + maa_status + ", dri_id=" + dri_id + ", car_id=" + car_id
				+ ", maa_remark=" + maa_remark + "]";
	}
	

	
}
