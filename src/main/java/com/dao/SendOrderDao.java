package com.dao;

import java.util.List;

import com.bean.Sendorder;

public interface SendOrderDao {
	public List<Sendorder> selectSendOrderByDirId();
	public List<Sendorder> selectSendOrderByStatus(String dri_id);
	public String selectTypeDriver(String dri_id);
	public void updateSendOrder(String send_id);
	public void updateApplyStatus(String send_id);
	public void updateCarStatus(String send_id);
	public void updateDriverStatus(String send_id);
	public List<Sendorder> selectSendOrder(String dri_id);
	public void updateDriverfinish(String send_id);
	public void updateCarfinish(String send_id);
	public void updateSendOrderfinish(String send_id);
	public void updateApplyfinish(String send_id);
}
