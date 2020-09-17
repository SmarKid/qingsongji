package cn.edu.wic.qingsongji.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.wic.qingsongji.bean.Login;
import cn.edu.wic.qingsongji.bean.User;
import cn.edu.wic.qingsongji.mapper.userMapper;
import cn.edu.wic.qingsongji.service.userService;

@Service("userService")
public class userServiceImpl implements userService {
	@Autowired
	private userMapper usermapper;

	@Override
	public Integer getUserIDByLogin(String username, String password) {
		return usermapper.getUserIDByLogin(username, password);
	}
	
	@Override
	public void insertUser(User user)
	{
		usermapper.insertUser(user);
	}

	@Override
	public User getUserByID(Integer user_id) {
		return usermapper.getUserByID(user_id);
	}

	@Override
	public Integer getUserIdByUsername(String username) {
		return usermapper.getUserIdByUsername(username);
	}
	
	public void insertLogin(Login login) {

		usermapper.insertLogin(login);
	}

	@Override
	public void insertUserWay(Integer user_id,Integer way_id) {
		usermapper.insertUserWay(user_id,way_id);
	}

	@Override
	public void insertUserUsefor(Integer user_id,Integer usefor_id) {
		usermapper.insertUserUsefor(user_id,usefor_id);
	}

	@Override
	public void insertUserSource(Integer user_id, Integer source_id) {
		usermapper.insertUserSource(user_id, source_id);
	}

	@Override
	public void updateAvecon(Integer user_id, Integer avecon)
	{
		usermapper.updateAvecon(user_id, avecon);
	}

	@Override
	public Integer getAveconById(Integer user_id)
	{
		// TODO Auto-generated method stub
		return usermapper.getAveconById(user_id);
	}

	@Override
	public void changeUserInfo(User user) {
		usermapper.changeUserInfo(user);
	}




}
