package com.bean;

import java.sql.Date;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

public class Car {
	@NotEmpty(message="车牌号码内容不能为空")
	String car_id;
	@NotEmpty(message="车辆所属车队不能为空")
	String car_fleet;
	String car_configer;
	int car_price;
	String car_address;
	@NotEmpty(message="车牌颜色不能为空")
	String car_ccolor;
	String car_color;
	@NotEmpty(message="车辆发证机关不能为空")
	String car_office;
	double car_beginkm;
	Date car_buydate;
	String car_department;
	String car_ctype;
	String car_type;
	String car_chassis;
	String car_operations;
	String etc;
	String car_status;
	String dri_id;
	
	public Car() {
		super();
	}

	public Car(String car_id, String car_fleet, String car_configer, int car_price, String car_address,
			String car_ccolor, String car_color, String car_office, double car_beginkm, Date car_buydate,
			String car_department, String car_ctype, String car_type, String car_chassis, String car_operations,
			String etc, String car_status, String dri_id) {
		super();
		this.car_id = car_id;
		this.car_fleet = car_fleet;
		this.car_configer = car_configer;
		this.car_price = car_price;
		this.car_address = car_address;
		this.car_ccolor = car_ccolor;
		this.car_color = car_color;
		this.car_office = car_office;
		this.car_beginkm = car_beginkm;
		this.car_buydate = car_buydate;
		this.car_department = car_department;
		this.car_ctype = car_ctype;
		this.car_type = car_type;
		this.car_chassis = car_chassis;
		this.car_operations = car_operations;
		this.etc = etc;
		this.car_status = car_status;
		this.dri_id = dri_id;
	}

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	public String getCar_fleet() {
		return car_fleet;
	}

	public void setCar_fleet(String car_fleet) {
		this.car_fleet = car_fleet;
	}

	public String getCar_configer() {
		return car_configer;
	}

	public void setCar_configer(String car_configer) {
		this.car_configer = car_configer;
	}

	public int getCar_price() {
		return car_price;
	}

	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}

	public String getCar_address() {
		return car_address;
	}

	public void setCar_address(String car_address) {
		this.car_address = car_address;
	}

	public String getCar_ccolor() {
		return car_ccolor;
	}

	public void setCar_ccolor(String car_ccolor) {
		this.car_ccolor = car_ccolor;
	}

	public String getCar_color() {
		return car_color;
	}

	public void setCar_color(String car_color) {
		this.car_color = car_color;
	}

	public String getCar_office() {
		return car_office;
	}

	public void setCar_office(String car_office) {
		this.car_office = car_office;
	}

	public double getCar_beginkm() {
		return car_beginkm;
	}

	public void setCar_beginkm(double car_beginkm) {
		this.car_beginkm = car_beginkm;
	}

	public Date getCar_buydate() {
		return car_buydate;
	}

	public void setCar_buydate(Date car_buydate) {
		this.car_buydate = car_buydate;
	}

	public String getCar_department() {
		return car_department;
	}

	public void setCar_department(String car_department) {
		this.car_department = car_department;
	}

	public String getCar_ctype() {
		return car_ctype;
	}

	public void setCar_ctype(String car_ctype) {
		this.car_ctype = car_ctype;
	}

	public String getCar_type() {
		return car_type;
	}

	public void setCar_type(String car_type) {
		this.car_type = car_type;
	}

	public String getCar_chassis() {
		return car_chassis;
	}

	public void setCar_chassis(String car_chassis) {
		this.car_chassis = car_chassis;
	}

	public String getCar_operations() {
		return car_operations;
	}

	public void setCar_operations(String car_operations) {
		this.car_operations = car_operations;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getCar_status() {
		return car_status;
	}

	public void setCar_status(String car_status) {
		this.car_status = car_status;
	}

	public String getDri_id() {
		return dri_id;
	}

	public void setDri_id(String dri_id) {
		this.dri_id = dri_id;
	}

	@Override
	public String toString() {
		return "Car [car_id=" + car_id + ", car_fleet=" + car_fleet + ", car_configer=" + car_configer + ", car_price="
				+ car_price + ", car_address=" + car_address + ", car_ccolor=" + car_ccolor + ", car_color=" + car_color
				+ ", car_office=" + car_office + ", car_beginkm=" + car_beginkm + ", car_buydate=" + car_buydate
				+ ", car_department=" + car_department + ", car_ctype=" + car_ctype + ", car_type=" + car_type
				+ ", car_chassis=" + car_chassis + ", car_operations=" + car_operations + ", etc=" + etc
				+ ", car_status=" + car_status + ", dri_id=" + dri_id + "]";
	}

	
	

}
