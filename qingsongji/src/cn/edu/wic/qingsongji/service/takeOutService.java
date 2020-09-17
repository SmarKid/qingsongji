package cn.edu.wic.qingsongji.service;

import cn.edu.wic.qingsongji.bean.userTakeout;
import cn.edu.wic.qingsongji.model.ExpenseModel;


public interface takeOutService {
	public void insertTakeout(userTakeout usertakeout);
	public ExpenseModel[] queryExpenseArrayByUserId(Integer user_id);
	public void deleteExpense(Integer id);
	public Integer getSumAmount(Integer user_id);
}
