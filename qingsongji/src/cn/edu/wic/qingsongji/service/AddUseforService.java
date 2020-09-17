package cn.edu.wic.qingsongji.service;

import cn.edu.wic.qingsongji.bean.Usefor;

public interface AddUseforService {
	public void insertUsefor(Usefor usefor);
	
	public Integer getUseforIdByUsefor(String usefor);
	
	public void insertUserUsefor(Integer user_id,Integer usefor_id);
	
	public Usefor[] getUseforsByUserId(Integer user_id);
	
	public void deleteUseforByUserId(Integer user_id,Integer usefor_id);
}
