package cn.edu.wic.qingsongji.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.Source;
import cn.edu.wic.qingsongji.mapper.SourceMapper;
import cn.edu.wic.qingsongji.service.AddSourceService;
@Service
public class AddSourceServiceImpl implements AddSourceService {
	@Autowired
	private SourceMapper sourceMapper;
	@Override
	public void insertSource(Source source) {
		sourceMapper.insertSource(source);
	}
	@Override
	public Integer getSourceIdBySource(String source) {
		// TODO Auto-generated method stub
		return sourceMapper.getSourceIdBySource(source);
	}
	@Override
	public void insertUserSource(Integer user_id, Integer source_id) {
		sourceMapper.insertUserSource(user_id, source_id);
		
	}
	@Override
	public Source[] getSourceByUserId(Integer user_id) {
		return sourceMapper.getSourceByUserId(user_id);
	}
	@Override
	public void deleteSourceByUserId(Integer user_id, Integer source_id) {
		sourceMapper.deleteSourceByUserId(user_id, source_id);
	}

}
