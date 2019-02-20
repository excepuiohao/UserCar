package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.UseCarRecord;
import com.dao.UseCarRecordDao;
import com.service.UseCarRecordService;
@Service
public class UseCarRecordServiceImpl implements UseCarRecordService {
	@Autowired
	UseCarRecordDao usecarrecorddao;

	
	public List<UseCarRecord> selectByempId(String emp_id) {
		// TODO Auto-generated method stub
		return usecarrecorddao.selectByempId(emp_id);
	}

}
