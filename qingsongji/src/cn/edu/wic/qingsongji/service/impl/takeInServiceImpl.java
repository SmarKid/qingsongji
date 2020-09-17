package cn.edu.wic.qingsongji.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.userTakeIn;
import cn.edu.wic.qingsongji.mapper.takeInMapper;
import cn.edu.wic.qingsongji.model.IncomeModel;
import cn.edu.wic.qingsongji.service.takeInService;

@Service
public class takeInServiceImpl implements takeInService {
	
	@Resource
	takeInMapper takeinmapper;
	@Override
	public void takeInInsert(userTakeIn usertakein) {
		takeinmapper.takeInInsert(usertakein);
	}
	@Override
	public IncomeModel[] queryIncomeArrayByUserId(Integer user_id) {
		IncomeModel[] incomeModels=takeinmapper.queryIncomeArrayByUserId(user_id);
		return incomeModels;
	}
	@Override
	public void deleteIncome(Integer id) {
		takeinmapper.deleteIncome(id);
		
	}
	@Override
	public Integer getInSumAmount(Integer user_id) {
		Integer sum=takeinmapper.getInSumAmount(user_id);
		if(sum!=null) {
			return sum;
		}
		else
		{
			return 0;
		}
	}

}
