package cn.edu.wic.qingsongji.service;

import cn.edu.wic.qingsongji.bean.Budget;

public interface BudgetService {
	public void insertBudget(Budget budget);
	
	public Budget[] queryBudgetArrayByUserId(Integer user_id);
	
	public void deleteBudget(Integer id);
	

	public Budget queryNearBudgetByUserId(Integer user_id);
	
	public Integer getNearBudgetDiff(Integer user_id);
}
