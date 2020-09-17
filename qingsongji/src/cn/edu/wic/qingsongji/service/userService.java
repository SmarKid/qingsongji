package cn.edu.wic.qingsongji.service;


import cn.edu.wic.qingsongji.bean.Login;
import cn.edu.wic.qingsongji.bean.User;

public interface userService {
	public  Integer getUserIDByLogin(String  username,String password);
	public User getUserByID(Integer user_id);
	public void insertUser(User user);
	public Integer getUserIdByUsername(String username);
	public void insertLogin(Login login);
	public void insertUserWay(Integer user_id,Integer way_id);
	public void insertUserUsefor(Integer user_id,Integer usefor_id);
	public void insertUserSource(Integer user_id,Integer source_id);
	public void updateAvecon(Integer user_id,Integer avecon);
	public Integer getAveconById(Integer user_id);
	public void changeUserInfo(User user);
}
