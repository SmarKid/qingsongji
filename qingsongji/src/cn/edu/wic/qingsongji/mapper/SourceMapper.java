package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;


import cn.edu.wic.qingsongji.bean.Source;


public interface SourceMapper {
	@Insert("INSERT INTO source(source) VALUES (#{source})")
	public void insertSource(Source source);
	@Select("select id from source where source=#{source}")
	public Integer getSourceIdBySource(String source);
	@Insert("INSERT INTO user_source(user_id,source_id) VALUES (#{param1},#{param2})")
	public void insertUserSource(Integer user_id,Integer source_id);
	@Select("select s.id,s.source from source s,user_source u where u.user_id=#{user_id} and  u.source_id=s.id ORDER BY s.id")
	public Source[] getSourceByUserId(Integer user_id);
	@Delete("delete from user_source where user_id=#{param1} and source_id=#{param2}")
	public void deleteSourceByUserId(Integer user_id,Integer source_id);
}
