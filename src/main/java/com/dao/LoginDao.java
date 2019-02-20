package com.dao;

import com.bean.Driver;
import com.bean.Employee;

public interface LoginDao {
	public Driver driverLogin(String dri_id);
	public Employee EmployeeLogin(String emp_id);
}
