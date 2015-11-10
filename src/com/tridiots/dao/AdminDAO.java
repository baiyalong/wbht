package com.tridiots.dao;

import com.tridiots.domain.User;
import com.tridiots.vo.NumVO;

public interface AdminDAO
{
	public NumVO findNum(String zh);
	/**
	 * 检测员工账号是否重复
	 * @param workerAccount
	 * @return
	 */
	public boolean isRepeateWorkerAccount(String workerAccount);
	/**
	 * 增加员工
	 * @param user
	 * @return
	 */
	public boolean addWorker(User user,String zh);
	/**
	 * 数据库关闭
	 */
	public void close();
}
