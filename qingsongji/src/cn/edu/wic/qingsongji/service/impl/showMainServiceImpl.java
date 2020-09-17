package cn.edu.wic.qingsongji.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.mapper.showMainMapper;
import cn.edu.wic.qingsongji.service.showMainService;

@Service
public class showMainServiceImpl implements showMainService{
	@Resource
	showMainMapper showmainmapper;

	@Override
	public Integer weekExpense(Integer user_id) {
		Integer sum=showmainmapper.weekExpense(user_id);
		if(sum!=null) {
			return sum;
		}
		else
		{
			return 0;
		}
	}

	@Override
	public Integer monthExpense(Integer user_id) {
		Integer sum=showmainmapper.monthExpense(user_id);
		if(sum!=null) {
			return sum;
		}
		else
		{
			return 0;
		}
	}
	
	
	
}
