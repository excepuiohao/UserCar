package com.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Driver;
import com.bean.Employee;
import com.dao.LoginDao;
import com.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	LoginDao ldao;

	

	
	public Driver driverLogin(String dri_id) {
		return ldao.driverLogin(dri_id);
	}

	
	public Employee EmployeeLogin(String emp_id) {
		// TODO Auto-generated method stub
		return ldao.EmployeeLogin(emp_id);
	}

}
