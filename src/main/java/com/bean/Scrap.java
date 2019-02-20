package com.bean;

public class Scrap {
	String scr_id;
	String car_id;
	String dri_id;
	String adm_id;
	String ref_status;
	String scr_time;
	String scr_remark;
	
	public Scrap() {
		super();
	}

	public Scrap(String scr_id, String car_id, String dri_id, String adm_id, String ref_status, String scr_time,
			String scr_remark) {
		super();
		this.scr_id = scr_id;
		this.car_id = car_id;
		this.dri_id = dri_id;
		this.adm_id = adm_id;
		this.ref_status = ref_status;
		this.scr_time = scr_time;
		this.scr_remark = scr_remark;
	}

	public String getScr_id() {
		return scr_id;
	}

	public void setScr_id(String scr_id) {
		this.scr_id = scr_id;
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

	public String getRef_status() {
		return ref_status;
	}

	public void setRef_status(String ref_status) {
		this.ref_status = ref_status;
	}

	public String getScr_time() {
		return scr_time;
	}

	public void setScr_time(String scr_time) {
		this.scr_time = scr_time;
	}

	public String getScr_remark() {
		return scr_remark;
	}

	public void setScr_remark(String scr_remark) {
		this.scr_remark = scr_remark;
	}

	@Override
	public String toString() {
		return "Scrap [scr_id=" + scr_id + ", car_id=" + car_id + ", dri_id=" + dri_id + ", adm_id=" + adm_id
				+ ", ref_status=" + ref_status + ", scr_time=" + scr_time + ", scr_remark=" + scr_remark + "]";
	}
	
	
	
	
	

}
