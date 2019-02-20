package com.service;

import java.util.List;
import java.util.Map;

import com.bean.Driver;
import com.bean.Sendorder;

public interface DriverService {
	// �����ʻԱ��Ϣ
	public void insertDriver(Driver d);

	// �������Ͳ�ѯ�ܹ��ж�������ʻԱ��Ϣ
	public Integer selectCount(Map<String, Object> info);

	// ����ҳ���ѯ��ʻԱ�Ļ�����Ϣ��Ϣ������ÿҳĬ��10�����ݣ�
	public List<Driver> selectPaged(Map<String, Object> info);

	// ����id��ѯһ����ʻԱ����ϸ��Ϣ
	public Driver selectInfoById(String dri_id);

	// ������ʻԱ����������ֵ������id�޸�һ����ʻԱ�����Ե�ֵ
	public void updateInfoById(Map<String, String> info);
	
	//���ݼ�ʻԱid��ѯ�ü�ʻԱ�ɵ���¼����
	public Integer selectSendOrderCountByDriverId(String dri_id);
	
	//���ݼ�ʻԱid��ѯ�ü�ʻԱ���ɵ���¼
	public List<Sendorder> selectSendorderByDriverId(Map<String,Object> info);

}
