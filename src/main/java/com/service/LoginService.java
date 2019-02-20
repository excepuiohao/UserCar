package com.service;

import com.bean.Driver;
import com.bean.Employee;

public interface LoginService {
	public Employee EmployeeLogin(String emp_id);
	public Driver driverLogin(String dri_id);

}
