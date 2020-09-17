package cn.edu.wic.qingsongji.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import cn.edu.wic.qingsongji.bean.User;
import cn.edu.wic.qingsongji.bean.Login;

@Repository
public interface userMapper
{
	@Select("select user_id from login"
			+ " where username=#{param1} and password=#{param2} ")
	public Integer getUserIDByLogin(String  username,String password);
	
	@Select("select id,username,sex,telnum,email,notes from user "+
					" where id=#{user_id}")
	public User getUserByID(Integer user_id);
	
	@Insert("INSERT INTO user(username,sex,telnum,email) VALUES"+
	" (#{username},#{sex},#{telnum},#{email})")
	public void insertUser(User user);
	
	@Select("select id from user where username=#{username}")
	public Integer getUserIdByUsername(String username);
	
	@Insert("insert into login(user_id,username,password) values (#{user_id},#{username},#{password})")
	public void insertLogin(Login login);
	
	@Insert("insert into user_way(user_id,way_id) values(#{param1},#{param2})")
	public void insertUserWay(Integer user_id,Integer way_id);
	
	@Insert("insert into user_usefor(user_id,usefor_id) values(#{param1},#{param2})")
	public void insertUserUsefor(Integer user_id,Integer usefor_id);
	
	@Insert("insert into user_source(user_id,source_id) values(#{param1},#{param2})")
	public void insertUserSource(Integer user_id,Integer source_id);
	
	@Update("update user set avecon=#{param2} where id=#{param1}")
	public void updateAvecon(Integer user_id,Integer avecon);
	
	@Select("select avecon from user where id=#{user_id}")
	public Integer getAveconById(Integer user_id);

	@Update("update user set username='${username}',email='${email}',telnum='${telnum}',notes='${notes}' where id=${id}")
	public void changeUserInfo(User user);
	
}
