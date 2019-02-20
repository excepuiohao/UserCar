package com.dao;



import java.util.List;

import com.bean.Apply;

public interface ApplyDao {
	public void insertApply(Apply app);
	public List<Apply> selectByStuats1();
	public List<Apply> selectByStuats2();
	public List<Apply> selectByStuats3();
	public List<Apply> selectByStuats4();
	public List<Apply> selectByName();
	public List<Apply> updateByappId();
	public List<Apply> deleteApply();
	public void deleteApply(String app_id);
	public void updateByappId(Apply app);
	public Apply selectByappId(String app_id);
}