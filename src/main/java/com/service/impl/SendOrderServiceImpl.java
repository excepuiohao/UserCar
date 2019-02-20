package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Sendorder;
import com.dao.SendOrderDao;
import com.service.SendOrderService;

@Service
public class SendOrderServiceImpl implements SendOrderService {
	@Autowired
	SendOrderDao sod;

	

	
	public List<Sendorder> selectSendOrderByDirId() {
		// TODO Auto-generated method stub
		return sod.selectSendOrderByDirId();
	}

	
	public String selectTypeDriver(String dri_id) {
		// TODO Auto-generated method stub
		return sod.selectTypeDriver(dri_id);
	}

	
	public List<Sendorder> selectSendOrderByStatus(String dri_id) {
		// TODO Auto-generated method stub
		return sod.selectSendOrderByStatus(dri_id);
	}

	
	public void updateSendOrder(String send_id) {
		// TODO Auto-generated method stub
		sod.updateSendOrder(send_id);
	}

	
	public void updateApplyStatus(String send_id) {
		// TODO Auto-generated method stub
		sod.updateApplyStatus(send_id);
	}

	
	public void updateCarStatus(String send_id) {
		// TODO Auto-generated method stub
		sod.updateCarStatus(send_id);
	}

	
	public void updateDriverStatus(String send_id) {
		// TODO Auto-generated method stub
		sod.updateDriverStatus(send_id);
	}

	
	public List<Sendorder> selectSendOrder(String dri_id) {
		// TODO Auto-generated method stub
		return sod.selectSendOrder(dri_id);
	}

	
	public void updateDriverfinish(String send_id) {
		// TODO Auto-generated method stub
		sod.updateDriverfinish(send_id);
	}

	
	public void updateCarfinish(String send_id) {
		// TODO Auto-generated method stub
		sod.updateCarfinish(send_id);
	}

	
	public void updateSendOrderfinish(String send_id) {
		// TODO Auto-generated method stub
		sod.updateSendOrderfinish(send_id);
	}

	
	public void updateApplyfinish(String send_id) {
		// TODO Auto-generated method stub
		sod.updateApplyfinish(send_id);
	}

}
