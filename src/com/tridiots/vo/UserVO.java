package com.tridiots.vo;

public class UserVO
{
	private int id;
	private String acountnumber;//账号
	private String username;
	private String password;
	private String usertype;//员工类型
	private String companyName;//公司名称
	private String companyType;
	private int limitnumber;
	private int nowNum;
	
	public int getLimitnumber()
	{
		return limitnumber;
	}
	public void setLimitnumber(int limitnumber)
	{
		this.limitnumber = limitnumber;
	}
	public int getNowNum()
	{
		return nowNum;
	}
	public void setNowNum(int nowNum)
	{
		this.nowNum = nowNum;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getAcountnumber()
	{
		return acountnumber;
	}
	public void setAcountnumber(String acountnumber)
	{
		this.acountnumber = acountnumber;
	}
	public String getUsername()
	{
		return username;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getUsertype()
	{
		return usertype;
	}
	public void setUsertype(String usertype)
	{
		this.usertype = usertype;
	}
	public String getCompanyName()
	{
		return companyName;
	}
	public void setCompanyName(String companyName)
	{
		this.companyName = companyName;
	}
	public String getCompanyType()
	{
		return companyType;
	}
	public void setCompanyType(String companyType)
	{
		this.companyType = companyType;
	}
}
