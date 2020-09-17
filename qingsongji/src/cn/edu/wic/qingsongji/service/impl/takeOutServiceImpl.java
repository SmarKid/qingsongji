package cn.edu.wic.qingsongji.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.userTakeout;
import cn.edu.wic.qingsongji.mapper.takeoutMapper;
import cn.edu.wic.qingsongji.model.ExpenseModel;
import cn.edu.wic.qingsongji.service.takeOutService;

@Service
public class takeOutServiceImpl implements takeOutService{
	@Autowired 
	private takeoutMapper takeoutmapper;

	@Override
	public void insertTakeout(userTakeout usertakeout) {
		takeoutmapper.insertTakeout(usertakeout);
	}

	@Override
	public ExpenseModel[] queryExpenseArrayByUserId(Integer user_id) {
		ExpenseModel[] expenseModels=takeoutmapper.queryExpenseArrayByUserId(user_id);
		return expenseModels;
	}

	@Override
	public void deleteExpense(Integer id) {
		takeoutmapper.deleteExpense(id);
	}

	@Override
	public Integer getSumAmount(Integer user_id) {
		Integer sum=takeoutmapper.getSumAmount(user_id);
		if(sum!=null) {
			return sum;
		}
		else
		{
			return 0;
		}
	}
	
}
