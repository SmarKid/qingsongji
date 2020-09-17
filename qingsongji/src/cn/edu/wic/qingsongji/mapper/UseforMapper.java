package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import cn.edu.wic.qingsongji.bean.Usefor;

public interface UseforMapper {
	@Insert("INSERT INTO usefor(usefor) VALUES (#{usefor})")
	public void insertUsefor(Usefor usefor);
	@Select("select id from usefor where usefor=#{usefor}")
	public Integer getUseforIdByUsefor(String usefor);
	@Insert("INSERT INTO user_usefor(user_id,usefor_id) VALUES (#{param1},#{param2})")
	public void insertUserUsefor(Integer user_id,Integer usefor_id);
	@Select("select f.id,f.usefor from usefor f,user_usefor u where u.user_id=#{user_id} and  u.usefor_id=f.id ORDER BY f.id")
	public Usefor[] getUseforsByUserId(Integer user_id);
	@Delete("delete from user_usefor where user_id=#{param1} and usefor_id=#{param2}")
	public void deleteUseforByUserId(Integer user_id,Integer usefor_id);
}
