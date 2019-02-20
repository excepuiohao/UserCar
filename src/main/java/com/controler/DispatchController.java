package com.controler;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.ResultMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.ApplyCarBean;
import com.bean.Employee;
import com.bean.PageBean;
import com.bean.Sendorder;
import com.service.DispatchService;

@Controller
@RequestMapping("/jsp")
public class DispatchController {
	@Resource(name="dispatchServiceImpl")
	DispatchService ds;
	
	
	@RequestMapping("/insertSendOrder")
	public String insertSendOrder(Model m,@Validated @ModelAttribute("sendorder") Sendorder so,BindingResult result){
		String ret;
		
		if(result.hasErrors()){
			ret="CreateSendCar";
			System.out.println(result);
			System.out.println("错误");
		}else{
			Map<String, String> map = new HashMap<String, String>();
			map.put("app_id", so.getApp_id());
			map.put("status", "待出车");
			so.setSend_status("待接单");
			Date date = new Date();
			so.setSend_time(new java.sql.Date(date.getTime()));
			System.out.println(so);
			ds.insertSendOrder(so);
			ds.updateApplyStatus(map);
			System.out.println("成功");
			ret="CreateSendCar";
			m.addAttribute("cue", "派单完成!!");
		}
		return ret;
	}
	
	@RequestMapping("/sendOneCar")
	public String sendOneCar(Model model,
			HttpServletRequest req){
		String car_id = req.getParameter("car_id");
		String dri_id = req.getParameter("dri_id");
		String app_id = req.getParameter("app_id");
		Employee adm = (Employee) req.getSession().getAttribute("adm");
		Sendorder so = new Sendorder();
		so.setCar_id(car_id);
		so.setDri_id(dri_id);
		Date date = new Date();
		so.setApp_id(app_id);
		so.setSend_id("p"+date.getTime());
		so.setAdm_id(adm.getEmp_id());
		req.setAttribute("sendorder", so);
		model.addAttribute("sendorder", so);
		return "CreateSendCar";
	}
	
	
	@RequestMapping("/findapp")
	public String findApplyCar(Model model){
	
		
		Map<String, Object> map = new HashMap<String, Object>();
		int allcount= ds.findApply(map).size();
		System.out.println("allcount:"+allcount);
		
		PageBean p = new PageBean();
		p.setPageCode(1);
		p.setPageSize(5);
		p.setAllCount(allcount);
		map.put("begin", (p.getPageCode()-1)*p.getPageSize()+1);
		map.put("end", p.getPageCode()*p.getPageSize());
		List<ApplyCarBean> list= ds.findApply(map);
		
		p.setList(list);
		model.addAttribute("pb",p);
		return "DoApplyCar";
	}
	@RequestMapping(value="/findType",method=RequestMethod.POST)
	@ResponseBody
	public List<String> getType(@RequestBody Map<String, String> map){
		List<String> list = new ArrayList<String>();
		System.out.println("qqq"+map.get("type"));
		if(map.get("type")!=null&&map.get("type")!=""){
			list=ds.findApplyBySometype(map);
		}
		System.out.println(list);
		return list;
	}
	
	
	
	
	@RequestMapping(value="/changeStatus",method=RequestMethod.POST)
	@ResponseBody
	public String changeStatus(@RequestBody Map<String, String> map){
		System.out.println("id::::"+map.get("app_id"));
		System.out.println("status::::"+map.get("status"));
		ds.updateApplyStatus(map);
		return map.get("app_id");
	}
	
	@RequestMapping(value="/Auditing",method=RequestMethod.POST)
	@ResponseBody
	public List<ApplyCarBean> Auditing(@RequestBody Map<String, String> map){
		List<ApplyCarBean> list = new ArrayList<ApplyCarBean>();
		Map<String, Object> m = new HashMap<String, Object>();
		System.out.println(map.get("type"));
		if(map.get("type")!=null&&map.get("type")!=""){
			m.put("type", "app_id");
			m.put("typevalue", map.get("type"));
			list=ds.findApply(m);
		}
		System.out.println(list);
		return list;
	}
	
	@RequestMapping("/findsize")
	public String findApplySize(Model m){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("type","status");
		map.put("typevalue","待审核");
		int count1= ds.findApply(map).size();
		m.addAttribute("count1", count1);
		return "Admin_head";
	}
	
	@RequestMapping(value="/findPageApply",method=RequestMethod.POST)
	@ResponseBody
	public PageBean findPage(@RequestBody PageBean p){
		if(p.getPageCode()==0){
			p.setPageCode(1);
			p.setPageSize(5);
		}
		Map<String, Object> map = new HashMap<String, Object>();
		String type = (String) p.getList().get(0);
		String typevalue = (String) p.getList().get(1);
		
		System.out.println("type:"+type  +"\ntypeval:"+typevalue);
		if(type!=null&&type!=""){
			map.put("type",type);
			map.put("typevalue",typevalue);
		}
		System.out.println("pagecode:"+p.getPageCode());
		System.out.println("PageSize:"+p.getPageSize());
		
		int allcount= ds.findApply(map).size();
		System.out.println("allcount:"+allcount);
		p.setAllCount(allcount);
		if(p.getPageCode()>p.getAllPages()){
			p.setPageCode(p.getAllPages());
		}
		System.out.println("allpages:"+p.getAllPages());
		map.put("begin", (p.getPageCode()-1)*p.getPageSize()+1);
		map.put("end", p.getPageCode()*p.getPageSize());
		
		List<ApplyCarBean> list= ds.findApply(map);
		System.out.println(list);
		p.setList(list);
		return p;
	}
}
