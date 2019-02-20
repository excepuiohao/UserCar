package com.dao;

import java.util.List;

import com.bean.UseCarRecord;

public interface UseCarRecordDao {
	public List<UseCarRecord> selectByempId(String emp_id);
}
