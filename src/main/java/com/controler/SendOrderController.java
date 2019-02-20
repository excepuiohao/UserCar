package com.controler;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.Sendorder;
import com.service.impl.SendOrderServiceImpl;
import com.service.SendOrderService;

@Controller
@RequestMapping("/jsp")
public class SendOrderController {
	@Resource(name = "sendOrderServiceImpl",type=SendOrderServiceImpl.class)
	SendOrderService sos;

	@RequestMapping("/selecApply")
	public String selectApply(HttpServletRequest req, HttpServletResponse resp) throws UnsupportedEncodingException {
		// String dri_id = (String) req.getSession().getAttribute("dri_id");
		String dri_id = "wdw10283327";
		List<Sendorder> list = null;
		if (dri_id != "") {
			String dri_type = sos.selectTypeDriver(dri_id);
			if (dri_type.equals("兼职员工")) {
				list = sos.selectSendOrderByDirId();
			}
			if (dri_type.equals("正式员工")) {
				list = sos.selectSendOrderByStatus(dri_id);
			}
		}
		req.getSession().setAttribute("list", list);
		req.getSession().setAttribute("opera", "take");
		return "TakeOrderAndFinishOrder";
	}

	@RequestMapping("/takeOrder")
	public ModelAndView takeOrder(HttpServletRequest req){
		String send_id = req.getParameter("send_id");
		sos.updateSendOrder(send_id);	
		sos.updateApplyStatus(send_id);
		sos.updateCarStatus(send_id);
		sos.updateDriverStatus(send_id);
		return new ModelAndView("redirect:/jsp/selecApply");
	}
	
	@RequestMapping("/selectSendOrder")
	public String selectOrder(HttpServletRequest req){
		String dri_id = req.getParameter("dri_id");
		List<Sendorder> list = sos.selectSendOrder(dri_id);
		req.getSession().setAttribute("list", list);
		req.getSession().setAttribute("opera", "finish");
		return "TakeOrderAndFinishOrder";
	}
	
	@RequestMapping("/finishOrder")
	public ModelAndView finishOrder(HttpServletRequest req){
		String send_id = req.getParameter("send_id");
		sos.updateApplyfinish(send_id);
		sos.updateDriverfinish(send_id);
		sos.updateCarfinish(send_id);
		sos.updateSendOrderfinish(send_id);
		return new ModelAndView("redirect:/jsp/selecApply");
	}
	
}
