package com.dao;

import java.util.List;

import com.bean.Employee;

public interface AdminPeopleDao {
	void insertEmployee(Employee e);
	void updateEmployee(Employee e);
	List<Employee> selectEmployeeByName(String s);
	Employee selectEmployeeByempId(String emp_id);
}
