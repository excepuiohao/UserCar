package com.controler;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.dbcp.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Driver;
import com.bean.Employee;
import com.service.impl.LoginServiceImpl;
import com.service.DispatchService;
import com.service.LoginService;

@Controller
@RequestMapping("/jsp")
public class LoginController {
	@Resource(name = "loginServiceImpl", type = LoginServiceImpl.class)
	LoginService service;

	@Resource(name="dispatchServiceImpl")
	DispatchService ds;
	
	@RequestMapping("/driverLogin")
	public String driverLogin(HttpServletRequest req) {
		String dri_id = req.getParameter("dri_id");
		String dri_pass = req.getParameter("dri_pass");
		
		Driver dri = service.driverLogin(dri_id);
		String password = dri.getDri_password();
		String s = null;
//		System.out.println(123);
//		System.out.println(password);
		if (dri_pass.equals(password)) {
			req.getSession().setAttribute("driver", dri);
			s = "Driver_head";
		} else {		
			s = "DriverLogin";
		}
		return s;
	}
	
	@RequestMapping("/employeeLogin")
	public String employeeLogin( Model m, HttpServletRequest req) {
		String emp_id = req.getParameter("emp_id");
		String emp_pass = req.getParameter("emp_pass");
		System.out.println(emp_id);
		Employee emp = service.EmployeeLogin(emp_id);
		String password = emp.getEmp_password();
		String s = null;
//		System.out.println(123);
//		System.out.println(password);
		if (emp_pass.equals(password)) {
			
			if(emp.getEmp_role().equals("普通员工")) {
				req.getSession().setAttribute("emp", emp);
				s = "User_head";
			}else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("type","app_status");
				map.put("typevalue","待审核");
				int count1= ds.findApply(map).size();
				map.put("typevalue","待派车");
				int count2= ds.findApply(map).size();
				map.put("typevalue","待出车");
				int count3= ds.findApply(map).size();
				map.put("typevalue","待完成");
				int count4= ds.findApply(map).size();
				System.out.println(count1);
				req.getSession().setAttribute("count1", count1);
				req.getSession().setAttribute("count2", count2);
				req.getSession().setAttribute("count3", count3);
				req.getSession().setAttribute("count4", count4);
				req.getSession().setAttribute("adm", emp);
				s = "Admin_head";
			}
		} else {
			if(emp.getEmp_role().equals("普通员工")) {
				s = "UserLogin";
			}else {
				s = "ManagerLogin";
			}
		}
		return s;
	}

}
