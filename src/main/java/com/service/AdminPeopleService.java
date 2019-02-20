package com.service;

import java.util.List;

import com.bean.Employee;

public interface AdminPeopleService {
	void insertEmployee(Employee e);
	List<Employee> selectEmployeeByName(String s);
	void updateEmployee(Employee e);
	Employee selectEmployeeByempId(String emp_id);
}
