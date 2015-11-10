package com.tridiots.dao;

import com.tridiots.domain.User;
import com.tridiots.vo.UserVO;

public 	interface UserDAO
{
	
	/**
	 * 登录
	 * @param user
	 * @return
	 */
	public UserVO findLogin(User user);
	
	/**
	 * 修改密码
	 * @param id
	 * @param newPass
	 * @return
	 */
	public boolean updatePassById(int id, String newPass);
	/**
	 * 数据库关闭
	 */
	public void close();
}
