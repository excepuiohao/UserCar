package com.controler;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Driver;
import com.bean.Maintain;
import com.bean.Maintenance;
import com.bean.Order;
import com.bean.Refueling;
import com.bean.Scrap;
import com.service.impl.DriverApplyServiceImpl;
import com.service.DriverApplyService;

@Controller
@RequestMapping("/jsp")
public class DriverApplyController {

	@Resource(name = "driverApplyServiceImpl", type = DriverApplyServiceImpl.class)
	DriverApplyService ms;

	@RequestMapping("/insertMaintain")
	public String insertMaintain(HttpServletRequest req) throws UnsupportedEncodingException {
		String car_id = req.getParameter("car_id");
		String dri_id = req.getParameter("dri_id");
		String mai_money = req.getParameter("mai_money");
		String mai_time = req.getParameter("mai_time");
		String mai_taketime = req.getParameter("mai_taketime");
		String adm_id = req.getParameter("adm_id");
		String mai_remark = new String(req.getParameter("mai_remark").getBytes("ISO-8859-1"), "utf-8");
		String mai_garage = new String(req.getParameter("mai_garage").getBytes("ISO-8859-1"), "utf-8");
		String mai_status = "待审批";
		Date date = new Date();
		String mai_id = "m" + date.getTime();
		Maintain m = new Maintain(mai_id, car_id, dri_id,Integer.parseInt(mai_money),java.sql.Date.valueOf(mai_time), java.sql.Date.valueOf(mai_taketime), adm_id, mai_remark,
				mai_garage, mai_status);
		ms.insertMaintain(m);
		return "Driver_Second_Lift";
	}

	@RequestMapping("/insertMaintenance")
	public String insertMaintenance(HttpServletRequest req) throws UnsupportedEncodingException {
		String car_id = req.getParameter("car_id");
		String dri_id = req.getParameter("dri_id");
		String maa_money = req.getParameter("maa_money");
		String maa_time = req.getParameter("maa_time");
		String maa_taketime = req.getParameter("maa_taketime");
		String adm_id = req.getParameter("adm_id");
		String maa_garage = new String(req.getParameter("maa_garage").getBytes("ISO-8859-1"), "utf-8");
		String maa_kilometer = req.getParameter("maa_kilometer");
		String maa_nextkilometer = req.getParameter("maa_nextkilometer");
		String maa_projects = new String(req.getParameter("maa_projects").getBytes("ISO-8859-1"), "utf-8");
		String maa_status = "待审批";
		String maa_remark = new String(req.getParameter("maa_remark").getBytes("ISO-8859-1"), "utf-8");
		Date date = new Date();
		String maa_id = "b" + date.getTime();
		Maintenance m= new Maintenance(maa_id, Integer.parseInt(maa_money), java.sql.Date.valueOf(maa_time), java.sql.Date.valueOf(maa_taketime), adm_id, maa_garage, maa_kilometer, maa_nextkilometer, maa_projects, maa_status, dri_id, car_id, maa_remark);
		ms.insertMaintenance(m);
		return "Driver_Second_Lift";
	}

	@RequestMapping("/insertRefueling")
	public String insertRefueling(HttpServletRequest req) throws UnsupportedEncodingException {
		String car_id = req.getParameter("car_id");
		String dri_id = req.getParameter("dri_id");
		String ref_money = req.getParameter("ref_money");
		String ref_label = req.getParameter("ref_label");
		String ref_time = req.getParameter("ref_time");
		String ref_status = "已加油";
		String adm_id = req.getParameter("adm_id");
		String ref_payment = new String(req.getParameter("ref_payment").getBytes("ISO-8859-1"), "utf-8");
		String ref_unitprice = req.getParameter("ref_unitprice");
		String ref_quantity = req.getParameter("ref_quantity");
		String ref_nowkm = req.getParameter("ref_nowkm");
		Date date = new Date();
		String ref_id = "r" + date.getTime();
		Refueling r = new Refueling(ref_id, car_id, dri_id, ref_status, adm_id, ref_label, ref_payment, Integer.parseInt(ref_money), Integer.parseInt(ref_unitprice), java.sql.Date.valueOf(ref_time), Integer.parseInt(ref_quantity), Integer.parseInt(ref_nowkm));
				
		ms.insertRefueling(r);
		return "Driver_Second_Lift";
	}

	@RequestMapping("/insertScrap")
	public String insertScrap(HttpServletRequest req) throws UnsupportedEncodingException {
		String car_id = req.getParameter("car_id");
		String dri_id = req.getParameter("dri_id");
		String adm_id = req.getParameter("adm_id");
		String scr_status = "待审批";
		String scr_time = req.getParameter("scr_time");
		String scr_remark = new String(req.getParameter("scr_remark").getBytes("ISO-8859-1"), "utf-8");
		Date date = new Date();
		String scr_id = "s" + date.getTime();
		Scrap s = new Scrap(scr_id, car_id, dri_id, adm_id, scr_status, scr_time, scr_remark);
		ms.insertScrap(s);
		return "Driver_Second_Lift";
	}

	@RequestMapping("/selectDriverById")
	public String selectDriverById(HttpServletRequest req) {
		// String dri_id = (String) req.getSession().getAttribute("dri_id");
		String dri_id = req.getParameter("dri_id");
		Driver driver = ms.selectDriverById(dri_id);
		req.getSession().setAttribute("driver", driver);
		return "SelectDriverInfor";
	}

	@RequestMapping("/selectOrderById")
	public String selectOrderById(HttpServletRequest req) {
		// String dri_id = (String) req.getSession().getAttribute("dri_id");
		String dri_id = req.getParameter("dri_id");
		List<Order> list1 = ms.selectSendOrderById(dri_id);
		List<Order> list2 = ms.selectMaintainById(dri_id);
		List<Order> list3 = ms.selectMaintenanceById(dri_id);
		List<Order> list4 = ms.selectRefuelingById(dri_id);
		List<Order> list5 = ms.selectScrapById(dri_id);
		List<Order> list = new ArrayList<Order>();
		if (list1 != null) {
			list.addAll(list1);
		}
		if (list2 != null) {
			list.addAll(list2);
		}
		if (list3 != null) {
			list.addAll(list3);
		}
		if (list4 != null) {
			list.addAll(list4);
		}
		if (list5 != null) {
			list.addAll(list5);
		}
		req.getSession().setAttribute("list", list);
		return "SelectHistoryOrder";
	}
}
