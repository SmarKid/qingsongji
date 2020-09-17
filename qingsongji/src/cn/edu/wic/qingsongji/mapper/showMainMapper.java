package cn.edu.wic.qingsongji.mapper;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface showMainMapper {
	@Select("SELECT SUM(amount) FROM expense WHERE YEARWEEK(date_format(date,'%Y-%m-%d')) = YEARWEEK(now()) and user_id=#{user_id};")
	public Integer weekExpense(Integer user_id); 
	@Select("SELECT sum(amount) FROM expense WHERE DATE_FORMAT( date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' ) and user_id=#{user_id}")
	public Integer monthExpense(Integer user_id);
	
}
