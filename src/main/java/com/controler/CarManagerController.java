package com.controler;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.Car;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.PageBean;
import com.bean.Refueling;
import com.bean.Sendorder;
import com.service.CarManagerService;
import com.service.impl.CarManagerServiceImpl;

@Controller
@RequestMapping("/jsp")
public class CarManagerController {

	@Resource(name = "carManagerServiceImpl", type = CarManagerServiceImpl.class)
	CarManagerService service;

	@RequestMapping(value="/findAllCar",method=RequestMethod.GET)
	public String findAllCar(HttpServletRequest req) {
		List<Car> list = service.findAllCar();
		List<String> status_list=findCarStatus();
		req.getSession().setAttribute("car_list", list);
		req.getSession().setAttribute("status_list", status_list);
		return "CarManager";
	}

	@RequestMapping(value="/findCarBySometype")
	public String findCarBySometype(HttpServletRequest req,Model m
			) throws Exception {
		String car_status = req.getParameter("car_status");
		String car_type = req.getParameter("car_type");
		String car_color = req.getParameter("car_color");
	
		if(car_type!=null){
			car_type=new String(car_type.getBytes("ISO-8859-1"),"utf-8");
			car_color=new String(car_color.getBytes("ISO-8859-1"),"utf-8");
		}
		car_status=new String(car_status.getBytes("ISO-8859-1"),"utf-8");
		System.out.println(car_color);
		System.out.println(car_status);
		System.out.println(car_type);
		
		Map<String, Object> map = new HashMap<String, Object>();
		if (car_status != "") {
			map.put("car_status", car_status);
			map.put("car_type", car_type);
			map.put("car_color", car_color);
		}
		int allcount= service.findCarBySometype(map).size();
		System.out.println("allcount:"+allcount);

		PageBean p = new PageBean();
		p.setPageCode(1);
		p.setPageSize(5);
		p.setAllCount(allcount);
		map.put("begin", (p.getPageCode()-1)*p.getPageSize()+1);
		map.put("end", p.getPageCode()*p.getPageSize());
		
		List<Car> list = service.findCarBySometype(map);
		p.setList(list);
		m.addAttribute("app_id",req.getParameter("app_id"));
		m.addAttribute("pb", p);
		return "SendCar";
	}
	
	@RequestMapping(value="/fristInsertCar",method=RequestMethod.GET)
	public String fristInsertCar(Model model,HttpServletRequest req) {
		Car car= new Car();
		model.addAttribute("thecar",car);
		List<String> list = findDriver();
		req.getSession().setAttribute("list",list);
		return "InsertCar";
	}

	@RequestMapping(value="/insertCar",method=RequestMethod.POST)
	public String insertCar(Model model, @Valid @ModelAttribute("thecar") Car car, BindingResult result){
		System.out.println(car.getCar_status());
		if (result.hasErrors()) {
			return "InsertCar";
		} else {
			service.insertCar(car);
			return "NewFile";
		}
	}
	
	public List<String> findDriver() {
		List<String> list=service.findDriver();
		return list;
	}
	
	public List<String> findCarStatus(){
		List<String> list=service.findCarStatus();
		return list;
	}


	@RequestMapping(value="/findCarByStatus",method=RequestMethod.POST)
	public String findCarByStatus(HttpServletRequest req) {
		String car_status = req.getParameter("car_status");
		if (car_status != "") {
			List<Car> list = service.findCarByStatus(car_status);
			req.getSession().setAttribute("car_list", list);
		}
		return "CarManager";

	}
	
	@RequestMapping(value="/findCarById",method=RequestMethod.POST)
	public String findCarById(HttpServletRequest req,String car_id) {
		if(car_id !="") {
			List<Car> list=service.findCarById(car_id);
			req.getSession().setAttribute("car_list2", list);
		}
		
		return "CarMainInfo";
		
	}
	
	@RequestMapping(value="/findSendorderByCarId",method=RequestMethod.POST)
	public String findSendorderByCarId(HttpServletRequest req) {
		String car_id = req.getParameter("car_id");
		if(car_id !="") {
			List<Sendorder> list=service.findSendorderByCarId(car_id);
			req.getSession().setAttribute("car_list3", list);
		}
		
		return "CarSendorderRecord";
		
	}

	@RequestMapping(value="/findCarLifeCycle",method=RequestMethod.POST)
	public String findCarLifeCycle(HttpServletRequest req) {
		String car_id = req.getParameter("car_id");
		System.out.println(car_id);
		if(car_id !="") {
		String sendorderTimes=service.countSendorderTimes(car_id);
		String maintainTimes=service.countMaintainTimes(car_id);
		String maintainMoney=service.countMaintainMoney(car_id);
		String maintenanceTimes=service.countMaintenanceTimes(car_id);
		String maintenanceMoney=service.countMaintenanceMoney(car_id);
		String refuelingMoney=service.countRefuelingMoney(car_id);
		
		req.getSession().setAttribute("car_id",car_id );
		req.getSession().setAttribute("sendorderTimes",sendorderTimes );
		req.getSession().setAttribute("maintainTimes",maintainTimes );
		req.getSession().setAttribute("maintainMoney", maintainMoney);
		req.getSession().setAttribute("maintenanceTimes",maintenanceTimes );
		req.getSession().setAttribute("maintenanceMoney",maintenanceMoney );
		req.getSession().setAttribute("refuelingMoney",refuelingMoney );
		}
		return "CarLifeCycle";
		
	}
	
	@RequestMapping(value="/scrappedCar",method=RequestMethod.GET)
	public String scrappedCar(HttpServletRequest req) {
		String car_id = req.getParameter("car_id");
		if(car_id !="") {
        service.scrappedCar(car_id); 
		}
		return "CarManager";
		
	}
	
	@RequestMapping(value="/findAllMaintain",method=RequestMethod.GET)
	public String findAllMaintain(HttpServletRequest req) {
		String adm_id="0";
		List<Maintain> list=service.findAllMaintain(adm_id);
		req.getSession().setAttribute("maintain_list", list);
		return "FindMaintainRecord";
	}
	
	@RequestMapping(value="/findAllMaintenance",method=RequestMethod.GET)
	public String findAllMaintenance(HttpServletRequest req) {
		String adm_id="0";
		List<Maintenance> list=service.findAllMaintenance(adm_id);
		req.getSession().setAttribute("maintenance_list", list);
		return "FindMaintenanceRecord";
	}
	
	@RequestMapping(value="/findAllRefueling",method=RequestMethod.GET)
	public String findAllRefueling(HttpServletRequest req) {
		List<Refueling> list=service.findAllRefueling();
		req.getSession().setAttribute("refueling_list", list);
		return "FindRefuelingRecord";
		
	}
	
	@RequestMapping(value="/findMaintainById",method=RequestMethod.POST)
	public String findMaintainById(HttpServletRequest req) {
		String car_id=req.getParameter("car_id");
		if(car_id!="") {
			List<Maintain> list=service.findMaintainById(car_id);
			req.getSession().setAttribute("maintain_list", list);
		}
		return "FindMaintainRecord";
	}
	 
	@RequestMapping(value="/findMaintenanceById",method=RequestMethod.POST)
	public String findMaintenanceById(HttpServletRequest req) {
		String car_id=req.getParameter("car_id");
		if(car_id!="") {
		List<Maintenance> list=service.findMaintenanceById(car_id);
		req.getSession().setAttribute("maintenance_list", list);
		}
		return "FindMaintenanceRecord";
	}
	
	@RequestMapping(value="/findRefuelingById",method=RequestMethod.POST)
	public String findRefuelingById(HttpServletRequest req) {
		String car_id=req.getParameter("car_id");
		if(car_id!="") {
		List<Refueling> list=service.findRefuelingById(car_id);
		req.getSession().setAttribute("refueling_list", list);
		}
		return "FindRefuelingRecord";
	}
	
	@RequestMapping(value="/approvedMaintain",method=RequestMethod.POST)
	public String approvedMaintain(HttpServletRequest req) {
		String mai_id = req.getParameter("mai_id");
		String car_id =req.getParameter("car_id");
		String mai_status=service.JudgeMaiStatus(mai_id);
		if(mai_status.equals("审批通过")) {
			return "FindMaintainRecord";
		}else {
			service.approvedMaintain(mai_id);
			service.maintainCar(car_id);
			return "NewFile";
		}

	}
	
	@RequestMapping(value="/approvedMaintenance",method=RequestMethod.POST)
	public String approvedMaintenance(HttpServletRequest req) {
		String maa_id = req.getParameter("maa_id");
		String car_id =req.getParameter("car_id");
		String maa_status=service.JudgeMaaStatus(maa_id);
		if(maa_status.equals("审批通过")) {	
			return "FindMaintenanceRecord";
		}else {
	        service.approvedMaintenance(maa_id);
	        service.maintenanceCar(car_id);
			return "NewFile";
		}
	}

	@RequestMapping(value="/refuseMaintain",method=RequestMethod.POST)
	public String refuseMaintain(HttpServletRequest req) {
		String mai_id = req.getParameter("mai_id");
		String mai_status=service.JudgeMaiStatus(mai_id);
			if(mai_status.equals("待审批")) {
		        service.refuseMaintain(mai_id);
				return "NewFile";
			}else {
				return "FindMaintainRecord";

			}
		
	}
	
	@RequestMapping(value="/refuseMaintenance",method=RequestMethod.POST)
	public String refuseMaintenance(HttpServletRequest req) {
		String maa_id = req.getParameter("maa_id");
		String maa_status=service.JudgeMaaStatus(maa_id);
		if(maa_status.equals("待审批")) {
	        service.refuseMaintenance(maa_id);
			return "NewFile";
		}else {
			return "FindMaintenanceRecord";
		}

	}
	
	@RequestMapping(value="/completeMaiCar",method=RequestMethod.POST)
	public String completeMaiCar(HttpServletRequest req) {
		String car_id=req.getParameter("car_id");
		String mai_id = req.getParameter("mai_id");
		String mai_status=service.JudgeMaiStatus(mai_id);
		if(mai_status.equals("审批通过")) {
			service.completeCar(car_id);
			return "NewFile";
		}else {
			return "FindMaintainRecord";
		}	
	}

	@RequestMapping(value="/completeMaaCar",method=RequestMethod.POST)
	public String completeMaaCar(HttpServletRequest req) {
		String car_id=req.getParameter("car_id");
		String maa_id = req.getParameter("maa_id");
		String maa_status=service.JudgeMaaStatus(maa_id);
		if(maa_status.equals("审批通过")) {
			service.completeCar(car_id);
			return "NewFile";
		}else {
			return "FindMaintenanceRecord";
		}	
	}

	

}
