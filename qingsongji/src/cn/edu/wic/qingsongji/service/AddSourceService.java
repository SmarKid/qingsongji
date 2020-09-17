package cn.edu.wic.qingsongji.service;


import cn.edu.wic.qingsongji.bean.Source;

public interface AddSourceService {
	public void insertSource(Source source);
	
	public Integer getSourceIdBySource(String source);

	public void insertUserSource(Integer user_id,Integer source_id);
	
	public Source[] getSourceByUserId(Integer user_id);
	
	public void deleteSourceByUserId(Integer user_id,Integer source_id);
}
