package com.service;

import java.util.List;

import com.bean.UseCarRecord;

public interface UseCarRecordService {
	public List<UseCarRecord> selectByempId(String emp_id);
}
