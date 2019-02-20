package com.bean;

import java.sql.Date;

public class Refueling {
	String ref_id;
	String car_id;
	String dri_id;
	String ref_status;
	String adm_id;
	String ref_label;
	String ref_payment;
	int ref_money;
	int ref_unitprice;
	Date ref_time;
	int ref_quantity;
	int ref_nowkm;
	
	public Refueling() {
		super();
	}

	public Refueling(String ref_id, String car_id, String dri_id, String ref_status, String adm_id, String ref_label,
			String ref_payment, int ref_money, int ref_unitprice, Date ref_time, int ref_quantity, int ref_nowkm) {
		super();
		this.ref_id = ref_id;
		this.car_id = car_id;
		this.dri_id = dri_id;
		this.ref_status = ref_status;
		this.adm_id = adm_id;
		this.ref_label = ref_label;
		this.ref_payment = ref_payment;
		this.ref_money = ref_money;
		this.ref_unitprice = ref_unitprice;
		this.ref_time = ref_time;
		this.ref_quantity = ref_quantity;
		this.ref_nowkm = ref_nowkm;
	}

	public String getRef_id() {
		return ref_id;
	}

	public void setRef_id(String ref_id) {
		this.ref_id = ref_id;
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

	public String getRef_status() {
		return ref_status;
	}

	public void setRef_status(String ref_status) {
		this.ref_status = ref_status;
	}

	public String getAdm_id() {
		return adm_id;
	}

	public void setAdm_id(String adm_id) {
		this.adm_id = adm_id;
	}

	public String getRef_label() {
		return ref_label;
	}

	public void setRef_label(String ref_label) {
		this.ref_label = ref_label;
	}

	public String getRef_payment() {
		return ref_payment;
	}

	public void setRef_payment(String ref_payment) {
		this.ref_payment = ref_payment;
	}

	public int getRef_money() {
		return ref_money;
	}

	public void setRef_money(int ref_money) {
		this.ref_money = ref_money;
	}

	public int getRef_unitprice() {
		return ref_unitprice;
	}

	public void setRef_unitprice(int ref_unitprice) {
		this.ref_unitprice = ref_unitprice;
	}

	public Date getRef_time() {
		return ref_time;
	}

	public void setRef_time(Date ref_time) {
		this.ref_time = ref_time;
	}

	public int getRef_quantity() {
		return ref_quantity;
	}

	public void setRef_quantity(int ref_quantity) {
		this.ref_quantity = ref_quantity;
	}

	public int getRef_nowkm() {
		return ref_nowkm;
	}

	public void setRef_nowkm(int ref_nowkm) {
		this.ref_nowkm = ref_nowkm;
	}

	@Override
	public String toString() {
		return "Refueling [ref_id=" + ref_id + ", car_id=" + car_id + ", dri_id=" + dri_id + ", ref_status="
				+ ref_status + ", adm_id=" + adm_id + ", ref_label=" + ref_label + ", ref_payment=" + ref_payment
				+ ", ref_money=" + ref_money + ", ref_unitprice=" + ref_unitprice + ", ref_time=" + ref_time
				+ ", ref_quantity=" + ref_quantity + ", ref_nowkm=" + ref_nowkm + "]";
	}

	
	

}
