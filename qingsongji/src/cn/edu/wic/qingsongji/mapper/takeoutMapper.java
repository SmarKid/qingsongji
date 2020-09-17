package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.edu.wic.qingsongji.bean.userTakeout;
import cn.edu.wic.qingsongji.model.ExpenseModel;

@Repository
public interface takeoutMapper {
	@Insert("INSERT INTO expense(user_id,way_id,usefor_id,amount,date,notes) VALUES "+
			"(#{user_id},#{way_id},#{usefor_id},#{amount},#{date},#{notes})")
	public void insertTakeout(userTakeout usertakeout);
	
	@Select("select e.id,e.user_id,w.way,f.usefor,e.amount,e.date,e.notes from expense e,way w,usefor f where e.way_id=w.id and e.usefor_id=f.id and e.user_id=#{user_id} ORDER BY e.date desc")
	public ExpenseModel[] queryExpenseArrayByUserId(Integer user_id);
	
	@Delete("DELETE FROM expense WHERE id = #{id}")
	public void deleteExpense(Integer id);
	
	@Select("select sum(amount) from expense where user_id=#{user_id}")
	public Integer getSumAmount(Integer user_id);
}
