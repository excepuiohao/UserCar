package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Apply;
import com.dao.ApplyDao;
import com.service.ApplyService;

@Service
public class ApplyServiceImpl implements ApplyService {
	@Autowired
	ApplyDao applydao;

	

	
	public void insertApply(Apply app) {
		applydao.insertApply(app);
		// TODO Auto-generated method stub
		
	}

	
	public List<Apply> selectByStuats1() {
		// TODO Auto-generated method stub
		return applydao.selectByStuats1();
	}

	
	public List<Apply> selectByStuats2() {
		// TODO Auto-generated method stub
		return applydao.selectByStuats2();
	}

	
	public List<Apply> selectByStuats3() {
		// TODO Auto-generated method stub
		return applydao.selectByStuats3();
	}

	
	public List<Apply> selectByStuats4() {
		// TODO Auto-generated method stub
		return applydao.selectByStuats4();
	}

	
	public List<Apply> selectByName() {
		// TODO Auto-generated method stub
		return applydao.selectByName();
	}

	
	public List<Apply> updateByappId() {
		// TODO Auto-generated method stub
		return applydao.updateByappId();
	}

	
	public List<Apply> deleteApply() {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void deleteApply(String app_id) {
		// TODO Auto-generated method stub
		applydao.deleteApply(app_id);
	}

	
	public void updateByappId(Apply app) {
		// TODO Auto-generated method stub
		applydao.updateByappId(app);
	}

	
	public Apply selectByappId(String app_id) {
		// TODO Auto-generated method stub
		return applydao.selectByappId(app_id);
	}

}
