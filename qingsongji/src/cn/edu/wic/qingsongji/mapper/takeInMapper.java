package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.edu.wic.qingsongji.bean.userTakeIn;
import cn.edu.wic.qingsongji.model.IncomeModel;


@Repository
public interface takeInMapper {
	@Insert("INSERT INTO income(user_id,way_id,source_id,amount,date,notes) VALUES "+
			"(#{user_id},#{way_id},#{source_id},#{amount},#{date},#{notes})")
	public void takeInInsert(userTakeIn usertakein);
	@Select("select i.id,i.user_id,w.way,s.source,i.amount,i.date,i.notes from income i,way w,source s where i.way_id=w.id and i.source_id=s.id and i.user_id=#{user_id} ORDER BY i.date desc")
	public IncomeModel[] queryIncomeArrayByUserId(Integer user_id);
	
	@Delete("DELETE FROM income WHERE id = #{id}")
	public void deleteIncome(Integer id);
	
	@Select("select sum(amount) from income where user_id=#{user_id}")
	public Integer getInSumAmount(Integer user_id);
}
