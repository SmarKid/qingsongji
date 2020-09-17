package cn.edu.wic.qingsongji.service;

import cn.edu.wic.qingsongji.bean.userTakeIn;
import cn.edu.wic.qingsongji.model.IncomeModel;

public interface takeInService {
	public void takeInInsert(userTakeIn usertakein);
	public IncomeModel[] queryIncomeArrayByUserId(Integer user_id);
	public void deleteIncome(Integer id);
	public Integer getInSumAmount(Integer user_id);
}
