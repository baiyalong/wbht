package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.Node;
import com.tridiots.domain.User;

public interface SuperAdminDAO
{
	public boolean updateLimitNumberById(int limitnumber,int id);
	public boolean updateJilianById(String yiji,String erji,String type,int id);
	public boolean deleteJilian(int id);
	/////////////////////////////////////
	public List<Node> getAllJilian(int start, int limit);
	public int getAllJilianCount();
	public Map<String, Object> listAllJilianKu(int start, int limit);
	//////////////////////////////////////
	//////////////////////////////////////////
	public List<User> getAllWorker(int start, int limit,String zh);
	public int getWorkerCount(String zh);
	public Map<String, Object> listAllWorkerKu(int start, int limit,String zh);
	public boolean deleteYgx(String acountnumber);
	/////////////////////////////////////
	/*public List<User> getAllAdmin(int start, int limit, String usertype);
	public int getAdminCount(String usertype);
	public Map<String, Object> listAllAdminKu(int start, int limit, String usertype);*/
	public List<User> getAllAdmin(int start, int limit);
	public int getAdminCount();
	public Map<String, Object> listAllAdminKu(int start, int limit);
	public boolean deleteYg(String acountnumber,String usertype,String createby);
	public boolean isRepeatJilian(String yijiData);
	/**
	 * 判断公司名称是否重复
	 * @param companyName
	 * @return
	 */
	public boolean isRepeatCompany(String companyName);
	/**
	 * 判断管理员账号是否重复
	 * @param adminAccount
	 * @return
	 */
	public boolean isRepeatAdminAcount(String adminAccount);
	/**
	 * 增加管理员
	 * @param user
	 * @return
	 */
	public boolean addAdmin(User user);
	/**
	 * 增加级联数据
	 * @param node
	 * @return
	 */
	public boolean addJilian(Node node);
	/**
	 * 数据库关闭
	 */
	public void close();
}
