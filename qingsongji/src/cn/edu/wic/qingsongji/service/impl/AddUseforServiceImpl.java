package cn.edu.wic.qingsongji.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.Usefor;
import cn.edu.wic.qingsongji.mapper.UseforMapper;
import cn.edu.wic.qingsongji.service.AddUseforService;
@Service
public class AddUseforServiceImpl implements AddUseforService {
	@Autowired
	private UseforMapper useforMapper;
	@Override
	public void insertUsefor(Usefor usefor) {
		useforMapper.insertUsefor(usefor);
	}
	@Override
	public Integer getUseforIdByUsefor(String usefor) {
		// TODO Auto-generated method stub
		return useforMapper.getUseforIdByUsefor(usefor);
	}
	@Override
	public void insertUserUsefor(Integer user_id, Integer usefor_id) {
		// TODO Auto-generated method stub
		useforMapper.insertUserUsefor(user_id, usefor_id);
	}
	@Override
	public Usefor[] getUseforsByUserId(Integer user_id) {
		return useforMapper.getUseforsByUserId(user_id);
	}
	@Override
	public void deleteUseforByUserId(Integer user_id, Integer usefor_id) {
		useforMapper.deleteUseforByUserId(user_id, usefor_id);
		
	}
	

}
