package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.edu.wic.qingsongji.bean.Budget;
@Repository
public interface BudgetMapper {
	@Insert("INSERT INTO budget(budname,date,user_id,budamt,notes) VALUES "+
			"(#{budname},#{date},#{user_id},#{budamt},#{notes})")
	public void insertBudget(Budget budget);
	

	@Select("select id,budname,date,budamt,notes from budget "+
					"where user_id=#{user_id} order by date")
	public Budget[] queryBudgetArrayByUserId(Integer user_id);
	
	@Delete("DELETE FROM budget WHERE id = #{id}")
	public void deleteBudget(Integer id);
	
	@Select("select id,budname,date,budamt,notes from budget "+
			"where user_id=#{user_id} and date>=CURDATE() order by date limit 1")
	public Budget queryNearBudgetByUserId(Integer user_id);
	
	@Select("select DATEDIFF(date,curdate()) from budget where user_id=#{user_id} and date>=CURDATE() order by date LIMIT 1")
	public Integer getNearBudgetDiff(Integer user_id);
}
