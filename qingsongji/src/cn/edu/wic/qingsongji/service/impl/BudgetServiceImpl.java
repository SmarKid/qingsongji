package cn.edu.wic.qingsongji.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.Budget;
import cn.edu.wic.qingsongji.mapper.BudgetMapper;
import cn.edu.wic.qingsongji.service.BudgetService;
@Service
public class BudgetServiceImpl implements BudgetService {
	@Autowired
	private BudgetMapper budgetMapper;
	@Override
	public void insertBudget(Budget budget) {
		budgetMapper.insertBudget(budget);

	}
	@Override
	public Budget[] queryBudgetArrayByUserId(Integer user_id) {
		
		return budgetMapper.queryBudgetArrayByUserId(user_id);
	}
	@Override
	public void deleteBudget(Integer id) {
		budgetMapper.deleteBudget(id);
		
	}
	@Override
	public Budget queryNearBudgetByUserId(Integer user_id) {
		// TODO Auto-generated method stub
		return budgetMapper.queryNearBudgetByUserId(user_id);
	}
	@Override
	public Integer getNearBudgetDiff(Integer user_id) {
		// TODO Auto-generated method stub
		return budgetMapper.getNearBudgetDiff(user_id);
	}

}
