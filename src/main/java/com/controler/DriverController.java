package com.controler;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.support.ClassPathXmlApplicationContext;
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

import com.bean.Driver;
import com.bean.PageBeanDriver;
import com.bean.Sendorder;
import com.service.DriverService;
import com.service.impl.DriverServiceImpl;

@Controller
@RequestMapping("/jsp")
public class DriverController {

	@Resource(name = "driverServiceImpl", type = DriverServiceImpl.class)
	DriverService service;

	@RequestMapping("/firstInsertDriver")
	public String firstInsertDriver(Model model) {
		model.addAttribute("thedriver", new Driver());
		return "lsy_InsertDriver";
	}

	@RequestMapping("/insertDriver")
	public String insertDriver(Model model, HttpServletResponse response, HttpServletRequest request,
			@RequestParam("dri_name") String dri_name, @RequestParam("dri_photo") String dri_photo,
			@RequestParam("dri_identity") String dri_identity, @RequestParam("dri_id") String dri_id,
			@RequestParam("dri_phone") String dri_phone, @RequestParam("dri_polotics") String dri_polotics,
			@RequestParam("dri_email") String dri_email, @RequestParam("dri_sex") String dri_sex,
			@RequestParam("dri_birthday") String dri_birthday, @RequestParam("dri_password") String dri_password,
			@RequestParam("dri_address1") String dri_address1, @RequestParam("dri_address2") String dri_address2,
			@RequestParam("dri_address3") String dri_address3, @RequestParam("dri_address4") String dri_address4,
			@RequestParam("dri_licensenum") String dri_licensenum,
			@RequestParam("dri_getlicensetime") String dri_getlicensetime,
			@RequestParam("dri_validperiod") String dri_validperiod, @RequestParam("dri_carstyle") String dri_carstyle,
			@RequestParam("dri_lia") String dri_lia, @RequestParam("dri_diverage") String dri_diverage,
			@RequestParam("dri_fleet") String dri_fleet, @RequestParam("dri_type") String dri_type,
			@RequestParam("dri_toc") String dri_toc, @RequestParam("dri_hzday") String dri_hzday,
			@RequestParam("dri_remarks") String dri_remarks, @Validated @ModelAttribute("thedriver") Driver driver,
			BindingResult result) throws UnsupportedEncodingException {
		ClassPathXmlApplicationContext c = new ClassPathXmlApplicationContext("applicationContext.xml");

		driver.setDri_address(dri_address1 + dri_address2 + dri_address3 + dri_address4);
		System.out.println(driver);

		if (result.hasErrors()) {
			System.out.println(dri_name);
			System.out.println("haserrors");
			return "lsy_InsertDriver";
		} else {
			System.out.println(driver);
			service.insertDriver(driver);
			model.addAttribute("thedrivername", dri_name);
			return "lsy_Test";
		}
	}

	// json+ajax:选择省市区下拉框
	@RequestMapping(value = "/getCity", method = RequestMethod.POST)
	@ResponseBody
	public List<String> getCity(@RequestBody Map<String, String> pname) {
		String provinceName = pname.get("provincename");
		List<String> list = new ArrayList<String>();
		if (provinceName.equals("江苏省")) {
			list.add("南京市");
			list.add("无锡市");
		}
		if (provinceName.equals("浙江省")) {
			list.add("杭州市");
			list.add("金华市");
		}

		return list;
	}

	@RequestMapping(value = "/getArea", method = RequestMethod.POST)
	@ResponseBody
	public List<String> getArea(@RequestBody Map<String, String> cname) {
		String cityName = cname.get("cityname");
		List<String> list = new ArrayList<String>();
		if (cityName.equals("南京市")) {
			list.add("秦淮区");
			list.add("建邺区");
		}
		if (cityName.equals("无锡市")) {
			list.add("滨湖区");
			list.add("新吴区");
		}
		if (cityName.equals("杭州市")) {
			list.add("萧山区");
			list.add("临安区");
		}
		if (cityName.equals("金华市")) {
			list.add("婺城区");
			list.add("金东区");
		}

		return list;
	}

	@RequestMapping("/firstSelectDriver")
	public String selectDriver(Model model) {
		ClassPathXmlApplicationContext c = new ClassPathXmlApplicationContext("applicationContext.xml");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginLine", 1);
		map.put("endLine", 10);
		List<Driver> list = new ArrayList<Driver>();
		list = service.selectPaged(map);
		model.addAttribute("firstdriverlist", list);

		List<Integer> l = new ArrayList<Integer>();
		Integer allCount = service.selectCount(new HashMap<String,Object>());
		Integer allPages = allCount % 10 == 0 ? allCount / 10 : allCount / 10 + 1;
		for (int i = 1; i <= allPages; i++) {
			l.add(i);
		}
		model.addAttribute("allpageslist", l);

		return "lsy_SelectDriverInfo";
	}

	// 在查询页面，选择查询中“分类”的下拉框，“类别”下拉框中的内容会相应改变
	@RequestMapping(value = "/getTypeBySort", method = RequestMethod.POST)
	@ResponseBody
	public List<String> getTypeBySort(@RequestBody Map<String, String> sname) {
		String sortName = sname.get("sortname");
		List<String> list = new ArrayList<String>();
		if (sortName.equals("dri_type")) {
			list.add("正式员工");
			list.add("兼职员工");
		}
		if (sortName.equals("dri_status")) {
			list.add("新增");
			list.add("空闲");
			list.add("出车");
			list.add("停用");
		}

		return list;
	}

	@RequestMapping(value = "/selectDriverByType", method = RequestMethod.POST)
	@ResponseBody
	public PageBeanDriver selectDriverByType(Model model,@RequestBody Map<String, String> typeinfo,HttpServletRequest request) {
		String sortName = typeinfo.get("sortname");
		String typeName = typeinfo.get("typename");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginLine", 1);
		map.put("endLine", 10);
		if (sortName != "" && typeName != "") {
			map.put("sort", sortName);
			map.put("type", typeName);
		}
		List<Driver> list = new ArrayList<Driver>();
		list = service.selectPaged(map);
		
		Integer allCount = service.selectCount(map);
		Integer allPages = allCount % 10 == 0 ? allCount / 10 : allCount / 10 + 1;
		
		PageBeanDriver pb = new PageBeanDriver();
		pb.setAllCount(allCount);
		pb.setAllPages(allPages);
		pb.setPageCode(1);
		pb.setList(list);

		return pb;
	}

	@RequestMapping(value = "/SDPageTurning", method = RequestMethod.POST)
	@ResponseBody
	public PageBeanDriver SDPageTurning(@RequestBody Map<String, String> pageinfo) {
		Integer thePage = Integer.parseInt(pageinfo.get("thepage"));
		Integer beginLine = (thePage - 1) * 10 + 1;
		String sortName = pageinfo.get("sortname");
		String typeName = pageinfo.get("typename");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginLine", beginLine);
		map.put("endLine", beginLine + 9);
		if (sortName != "" && typeName != "") {
			map.put("sort", sortName);
			map.put("type", typeName);
		}
		List<Driver> list = new ArrayList<Driver>();
		list = service.selectPaged(map);
		
		Integer allCount = service.selectCount(map);
		Integer allPages = allCount % 10 == 0 ? allCount / 10 : allCount / 10 + 1;

		PageBeanDriver pb = new PageBeanDriver();
		pb.setPageCode(thePage);
		pb.setList(list);
		pb.setAllPages(allPages);
		pb.setAllCount(allCount);
		
		return pb;
	}
	
	@RequestMapping("/selectInfoById")
	public String selectInfoById(Model model,@RequestParam("thedri_id") String dri_id){
		
		Driver d = service.selectInfoById(dri_id);
		d.setDri_birthday(d.getDri_birthday().substring(0, 10));
		d.setDri_getlicensetime(d.getDri_getlicensetime().substring(0, 10));
		d.setDri_toc(d.getDri_toc().substring(0, 10));
		model.addAttribute("detailedDriverInfo", d);
		
		return "lsy_SelectDriverInfo";
	}
	
	@RequestMapping(value = "/updateDriverType", method = RequestMethod.POST)
	@ResponseBody
	public List<String> updateDriverType(@RequestBody Map<String, String> info) {
		String columnName = info.get("columnName");
		String dri_id = info.get("theenableddri_id");
		String propertyValue=info.get("propertyValue");
		
		Map<String, String> map = new HashMap<String,String>();
		map.put("dri_id", dri_id);
		map.put("columnName", columnName);
		map.put("propertyValue", propertyValue);
		
		service.updateInfoById(map);
		
		List<String> list = new ArrayList<String>();
		list.add(dri_id);
		list.add(columnName);
		list.add(propertyValue);
		
		return list;
	}
	
	@RequestMapping("/firstSelectSendorderByDriverId")
	public String firstSelectSendorderByDriverId(Model model,@RequestParam("dri_id") String dri_id){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("dri_id", dri_id);
		map.put("beginLine", 1);
		map.put("endLine", 4);
		
		List<Sendorder> list = new ArrayList<Sendorder>();
		list = service.selectSendorderByDriverId(map);
		
		for(Sendorder s : list){
			s.setSend_time(s.getSend_time());
		}
		
		List<Integer> l = new ArrayList<Integer>();
		Integer allCount = service.selectSendOrderCountByDriverId(dri_id);
		//Integer allPages = allCount % 10 == 0 ? allCount / 10 : allCount / 10 + 1;
		Integer allPages = allCount % 4 == 0 ? allCount / 4 : allCount / 4 + 1;
		for (int i = 1; i <= allPages; i++) {
			l.add(i);
		}
		
		model.addAttribute("dri_id", dri_id);
		model.addAttribute("firstsendorderlist", list);
		model.addAttribute("allsendorderpageslist" ,l);
		model.addAttribute("allcount", allCount);
		
		return "lsy_SelectSendorderInfo";
	}
	
	@RequestMapping(value = "/SSIPageTurning", method = RequestMethod.POST)
	@ResponseBody
	public PageBeanDriver SSIPageTurning(@RequestBody Map<String, String> pageinfo) {
		Integer thePage = Integer.parseInt(pageinfo.get("thepage"));
		Integer beginLine = (thePage - 1) * 4 + 1;
		String dri_id = pageinfo.get("dri_id");

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("beginLine", beginLine);
		map.put("endLine", beginLine + 3);
		map.put("dri_id", dri_id);
		
		List<Sendorder> list = new ArrayList<Sendorder>();
		list = service.selectSendorderByDriverId(map);
		
		for(Sendorder s : list){
			s.setSend_time(s.getSend_time());
		}
		
		PageBeanDriver pb = new PageBeanDriver();
		pb.setPageCode(thePage);
		pb.setList(list);
		
		return pb;
	}
}
