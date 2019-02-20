package com.bean;

import java.sql.Date;

public class Employee {
	String emp_id;
	String emp_name;
	String emp_sex;
	String emp_phone;
	String emp_login;
	String emp_role;
	String emp_mech;
	String emp_email;
	String emp_password;
	String emp_photo;
	String emp_polotics;
	Date emp_birthday;
	String emp_address;


	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_sex=" + emp_sex + ", emp_phone="
				+ emp_phone + ", emp_login=" + emp_login + ", emp_role=" + emp_role + ", emp_mech=" + emp_mech
				+ ", emp_email=" + emp_email + ", emp_password=" + emp_password + ", emp_photo=" + emp_photo
				+ ", emp_polotics=" + emp_polotics + ", emp_birthday=" + emp_birthday + ", emp_address=" + emp_address
				+ "]";
	}


	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Employee(String emp_id, String emp_name, String emp_sex, String emp_phone, String emp_login, String emp_role,
			String emp_mech, String emp_email, String emp_password, String emp_photo, String emp_polotics,
			Date emp_birthday, String emp_address) {
		super();
		this.emp_id = emp_id;
		this.emp_name = emp_name;
		this.emp_sex = emp_sex;
		this.emp_phone = emp_phone;
		this.emp_login = emp_login;
		this.emp_role = emp_role;
		this.emp_mech = emp_mech;
		this.emp_email = emp_email;
		this.emp_password = emp_password;
		this.emp_photo = emp_photo;
		this.emp_polotics = emp_polotics;
		this.emp_birthday = emp_birthday;
		this.emp_address = emp_address;
	}


	public String getEmp_id() {
		return emp_id;
	}


	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}


	public String getEmp_name() {
		return emp_name;
	}


	public void setEmp_name(String emp_name){
		this.emp_name = emp_name;
	}


	public String getEmp_sex() {
		return emp_sex;
	}


	public void setEmp_sex(String emp_sex) {
		this.emp_sex = emp_sex;
	}


	public String getEmp_phone() {
		return emp_phone;
	}


	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}


	public String getEmp_login() {
		return emp_login;
	}


	public void setEmp_login(String emp_login) {
		this.emp_login = emp_login;
	}


	public String getEmp_role() {
		return emp_role;
	}


	public void setEmp_role(String emp_role) {
		this.emp_role = emp_role;
	}


	public String getEmp_mech() {
		return emp_mech;
	}


	public void setEmp_mech(String emp_mech) {
		this.emp_mech = emp_mech;
	}


	public String getEmp_email() {
		return emp_email;
	}


	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}


	public String getEmp_password() {
		return emp_password;
	}


	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}


	public String getEmp_photo() {
		return emp_photo;
	}


	public void setEmp_photo(String emp_photo) {
		this.emp_photo = emp_photo;
	}


	public String getEmp_polotics() {
		return emp_polotics;
	}


	public void setEmp_polotics(String emp_polotics) {
		this.emp_polotics = emp_polotics;
	}


	public Date getEmp_birthday() {
		return emp_birthday;
	}


	public void setEmp_birthday(Date emp_birthday) {
		this.emp_birthday = emp_birthday;
	}


	public String getEmp_address() {
		return emp_address;
	}


	public void setEmp_adress(String emp_address) {
		this.emp_address = emp_address;
	}

}
