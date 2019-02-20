package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Employee;
import com.dao.AdminPeopleDao;
import com.service.AdminPeopleService;
@Service
public class AdminPeopleServiceImpl implements AdminPeopleService {
	@Autowired
	AdminPeopleDao apd;

	

	
	public void insertEmployee(Employee e) {
		// TODO Auto-generated method stub
		apd.insertEmployee(e);
	}

	
	public List<Employee> selectEmployeeByName(String s) {
		// TODO Auto-generated method stub
		return apd.selectEmployeeByName(s);
	}

	
	public void updateEmployee(Employee e) {
		// TODO Auto-generated method stub
		apd.updateEmployee(e);
	}

	
	public Employee selectEmployeeByempId(String emp_id) {
		// TODO Auto-generated method stub
		return apd.selectEmployeeByempId(emp_id);
	}
	
}
