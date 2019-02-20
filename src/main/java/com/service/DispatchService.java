package com.service;

import java.util.List;
import java.util.Map;






import com.bean.ApplyCarBean;
import com.bean.Sendorder;

public interface DispatchService {

	
	public List<ApplyCarBean> findApply(Map<String, Object> params);
	
	public List<String> findApplyBySometype(Map<String, String> type);
	
	public void updateApplyStatus(Map<String, String> status);
	public void insertSendOrder(Sendorder so);
}
