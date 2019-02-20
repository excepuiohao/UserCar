package com.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.ApplyCarBean;
import com.bean.Sendorder;
import com.dao.DispatchDao;
import com.service.DispatchService;
@Service
public class DispatchServiceImpl implements DispatchService{
	@Autowired
	DispatchDao dd;
	
	public List<ApplyCarBean> findApply(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return dd.findApply(params);
	}
	
	public List<String> findApplyBySometype(Map<String, String> type) {
		// TODO Auto-generated method stub
		return dd.findApplyBySometype(type);
	}
	
	public void updateApplyStatus(Map<String, String> status) {
		// TODO Auto-generated method stub
		dd.updateApplyStatus(status);
	}
	
	public void insertSendOrder(Sendorder so) {
		// TODO Auto-generated method stub
		dd.insertSendOrder(so);
	}

	

}
