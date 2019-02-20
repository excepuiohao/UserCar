package com.controler;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Employee;
import com.service.impl.AdminPeopleServiceImpl;
import com.service.AdminPeopleService;

@Controller
@RequestMapping("/jsp")
public class AdminPeopleController {
	@Resource(name = "adminPeopleServiceImpl", type = AdminPeopleServiceImpl.class)
	AdminPeopleService aps;
	
	@RequestMapping("/insertEmployee")
	public String insertPeople(HttpServletRequest req) throws UnsupportedEncodingException {
		String emp_name = new String(req.getParameter("emp_name").getBytes("ISO-8859-1"), "utf-8");
		String emp_sex = new String(req.getParameter("emp_sex").getBytes("iso-8859-1"),"utf-8");
		String emp_phone = req.getParameter("emp_phone");
		String emp_login = new String(req.getParameter("emp_login").getBytes("iso-8859-1"),"utf-8");
		String emp_role = new String(req.getParameter("emp_role").getBytes("iso-8859-1"),"utf-8");
		String emp_mech = new String(req.getParameter("emp_mech").getBytes("iso-8859-1"),"utf-8");
		String emp_email = req.getParameter("emp_email");
		String emp_password = req.getParameter("emp_password");
		String emp_photo = req.getParameter("emp_photo");
		String emp_polotics = new String(req.getParameter("emp_polotics").getBytes("iso-8859-1"),"utf-8");
		String emp_birthday1 = req.getParameter("emp_birthday");
		String emp_address = new String(req.getParameter("emp_address").getBytes("iso-8859-1"),"utf-8");
		Date date = new Date();
		String emp_id = null;
		if(emp_role.equals("∆’Õ®‘±π§")) {
			emp_id = "e" + date.getTime();
		}else {
			emp_id = "a" + date.getTime();
		}		
		java.sql.Date emp_birthday = java.sql.Date.valueOf(emp_birthday1);
		Employee e = new Employee(emp_id, emp_name, emp_sex, emp_phone, emp_login, emp_role, emp_mech, emp_email, emp_password, emp_photo, emp_polotics, emp_birthday, emp_address);
		aps.insertEmployee(e);
		return "selectEmployee";
	}
	
	@RequestMapping("/selectEmployeeByName")
	public String selectEmployee(HttpServletRequest req) throws UnsupportedEncodingException {
		String emp_name = new String(req.getParameter("emp_name").getBytes("ISO-8859-1"), "utf-8");
		if(emp_name == "") {
			emp_name = "%";
		}else {
			emp_name = "%"+emp_name+"%";
		}
		List<Employee> list = aps.selectEmployeeByName(emp_name);
		req.getSession().setAttribute("list", list);
		return "selectEmployee";
	}
	
	
	@RequestMapping("/selectEmployeeByempId")
	public String selectEmployeeByempId(HttpServletRequest req){
		String emp_id = req.getParameter("emp_id");
		Employee emp = aps.selectEmployeeByempId(emp_id);
		req.getSession().setAttribute("emp", emp);
		return "changeEmployee";
	}
	
	
	@RequestMapping("/updateEmployee")
	public String updateEmployee(HttpServletRequest req) throws UnsupportedEncodingException {
		String emp_id = req.getParameter("emp_id");
		String emp_name = new String(req.getParameter("emp_name").getBytes("ISO-8859-1"), "utf-8");
		String emp_sex = new String(req.getParameter("emp_sex").getBytes("iso-8859-1"),"utf-8");
		String emp_phone = req.getParameter("emp_phone");
		String emp_login = new String(req.getParameter("emp_login").getBytes("iso-8859-1"),"utf-8");
		String emp_role = new String(req.getParameter("emp_role").getBytes("iso-8859-1"),"utf-8");
		String emp_mech = new String(req.getParameter("emp_mech").getBytes("iso-8859-1"),"utf-8");
		String emp_email = req.getParameter("emp_email");
		String emp_password = req.getParameter("emp_password");
		String emp_photo = req.getParameter("emp_photo");
		String emp_polotics = new String(req.getParameter("emp_polotics").getBytes("iso-8859-1"),"utf-8");
		java.sql.Date emp_birthday = java.sql.Date.valueOf(req.getParameter("emp_birthday"));
		String emp_address = new String(req.getParameter("emp_address").getBytes("iso-8859-1"),"utf-8");
		Employee e = new Employee(emp_id, emp_name, emp_sex, emp_phone, emp_login, emp_role, emp_mech, emp_email, emp_password, emp_photo, emp_polotics, emp_birthday, emp_address);
		aps.updateEmployee(e);		
		return "selectEmployee";
	};
	
	
	
}
