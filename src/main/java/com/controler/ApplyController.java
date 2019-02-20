package com.controler;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Apply;
import com.service.impl.ApplyServiceImpl;
import com.service.ApplyService;

@Controller
@RequestMapping("/jsp")
public class ApplyController {
	@Resource(name = "applyServiceImpl", type = ApplyServiceImpl.class)
	ApplyService applyservice;

	@RequestMapping(value="/insertApply",method=RequestMethod.POST)
	public ModelAndView insert(Apply app, HttpServletRequest req, HttpServletResponse resp) throws Exception {
		System.out.println(111);
		Date date = new Date();
		String app_id = "c"+date.getTime();
		String adm_id = "0";
		String app_status = "´ýÉóºË";
		String emp_id = req.getParameter("emp_id");
		String emp_phone = req.getParameter("emp_phone");
		String emp_mech = req.getParameter("emp_mech");
		String car_type = req.getParameter("car_type");
		String car_color = req.getParameter("car_color");
		String app_count = req.getParameter("app_count");
		String app_beginplace = req.getParameter("app_beginplace");
		String app_route = req.getParameter("app_route");
		String app_lastplace = req.getParameter("app_lastplace");
		String app_time = String.format("%tY", date) + "-" + String.format("%tm", date) + "-"
				+ String.format("%td", date);
		String app_usetime = req.getParameter("app_usetime");
		String app_duration = req.getParameter("app_duration");
		String app_reason = req.getParameter("app_reason");
		String app_remarks = req.getParameter("app_remarks");
		app.setAdm_id(adm_id);
		app.setEmp_id(emp_id);
		app.setEmp_phone(emp_phone);
		app.setApp_beginplace(app_beginplace);
		app.setApp_count(app_count);
		app.setApp_duration(app_duration);
		app.setApp_lastplace(app_lastplace);
		app.setApp_reason(app_reason);
		app.setApp_remarks(app_remarks);
		app.setApp_route(app_route);
		app.setApp_status(app_status);
		app.setEmp_mech(emp_mech);
		app.setCar_color(car_color);
		app.setCar_type(car_type);
		app.setApp_time(java.sql.Date.valueOf(app_time));
		app.setApp_id(app_id);
		app.setApp_usetime(java.sql.Date.valueOf(app_usetime));
		applyservice.insertApply(app);
		return new ModelAndView("redirect:/jsp/selectByStuats1");

	}
	@RequestMapping("/selectByStuats1")
	public String selectByStuats1(HttpServletRequest req, HttpServletResponse resp){
		List<Apply> list = applyservice.selectByStuats1();
		req.getSession().setAttribute("list", list);
		return "selectByStuats1";
		
	}
	@RequestMapping("/selectByStuats2")
	public String selectByStuats2(HttpServletRequest req, HttpServletResponse resp){
		List<Apply> list = applyservice.selectByStuats2();
		req.getSession().setAttribute("list", list);
		return "selectByStuats2";
		
	}
	@RequestMapping("/selectByStuats3")
	public String selectByStuats3(HttpServletRequest req, HttpServletResponse resp){
		List<Apply> list = applyservice.selectByStuats3();
		req.getSession().setAttribute("list", list);
		return "selectByStuats3";
		
	}
	@RequestMapping("/selectByStuats4")
	public String selectByStuats4(HttpServletRequest req, HttpServletResponse resp){
		List<Apply> list = applyservice.selectByStuats4();
		req.getSession().setAttribute("list", list);
		return "selectByStuats4";
		
	}
	@RequestMapping("/deleteApply")
	public ModelAndView deleteApply(HttpServletRequest req){
		String app_id = req.getParameter("app_id");
		applyservice.deleteApply(app_id);
		return new ModelAndView("redirect:/jsp/selectByStuats1");
		
	}
	@RequestMapping(value="/selectByappId",method=RequestMethod.GET)
	public String selectByappId(HttpServletRequest req){
		String app_id = req.getParameter("app_id");
		Apply apply = applyservice.selectByappId(app_id);
		System.out.println(apply);
		req.getSession().setAttribute("apply", apply);
		return "changeApply";
		
	}
	@RequestMapping(value="/updateByappId",method=RequestMethod.POST)
	public ModelAndView updateByappId(Apply app,HttpServletRequest req,HttpServletResponse resp) throws Exception{
		Date date = new Date();
		String app_id = req.getParameter("app_id");
		String emp_id = req.getParameter("emp_id");
		String emp_phone = req.getParameter("emp_phone");
		String emp_mech = req.getParameter("emp_mech");
		String car_type = req.getParameter("car_type");
		String car_color = req.getParameter("car_color");
		String app_count = req.getParameter("app_count");
		String app_beginplace = req.getParameter("app_beginplace");
		String app_route = req.getParameter("app_route");
		String app_lastplace = req.getParameter("app_lastplace");
		String app_time = String.format("%tY", date) + "-" + String.format("%tm", date) + "-"
				+ String.format("%td", date);
		String app_usetime = req.getParameter("app_usetime");
		String app_duration = req.getParameter("app_duration");
		String app_reason = req.getParameter("app_reason");
		String app_remarks = req.getParameter("app_remarks");
		app.setEmp_id(emp_id);
		app.setEmp_phone(emp_phone);
		app.setApp_beginplace(app_beginplace);
		app.setApp_count(app_count);
		app.setApp_duration(app_duration);
		app.setApp_lastplace(app_lastplace);
		app.setApp_reason(app_reason);
		app.setApp_remarks(app_remarks);
		app.setApp_route(app_route);
		
		app.setEmp_mech(emp_mech);
		app.setCar_color(car_color);
		app.setCar_type(car_type);
		app.setApp_time(java.sql.Date.valueOf(app_time));
		app.setApp_id(app_id);
		app.setApp_usetime(java.sql.Date.valueOf(app_usetime));
		System.out.println(app);
		applyservice.updateByappId(app);
		return new ModelAndView("redirect:/jsp/selectByStuats1");
		
	}
}
