package com.controler;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.UseCarRecord;
import com.service.impl.UseCarRecordServiceImpl;
import com.service.UseCarRecordService;

@Controller
@RequestMapping("/jsp")
public class UseCarRecordController {
	@Resource(name = "useCarRecordServiceImpl", type = UseCarRecordServiceImpl.class)
	UseCarRecordService usercarrecordservice;

	@RequestMapping("/selectByempId")
	public String selectByempId(HttpServletRequest req, HttpServletResponse resp){
		String emp_id = "1";/*req.getParameter("emp_id");*/
		List<UseCarRecord> list = usercarrecordservice.selectByempId(emp_id);
		req.getSession().setAttribute("list", list);
		return "selectUseCarRecord";
		
	}
}
