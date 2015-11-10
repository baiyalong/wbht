package com.tridiots.domain;

import java.io.Serializable;

public class User implements Serializable
{
	private static final long serialVersionUID = -854738553273071942L;
	private int id;
	private String acountnumber;//账号（工号）
	private String username;
	private String password;
	private String usertype;
	private String companyname;
	private String companytype;
	private String position;	//职位
	private String createtime;	//工号创建时间
	private String createby;
	private int limitnumber;
	private int nowNum;
	
	public String getCreateby()
	{
		return createby;
	}
	public void setCreateby(String createby)
	{
		this.createby = createby;
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
	public String getCompanyname()
	{
		return companyname;
	}
	public void setCompanyname(String companyname)
	{
		this.companyname = companyname;
	}
	public String getCompanytype()
	{
		return companytype;
	}
	public void setCompanytype(String companytype)
	{
		this.companytype = companytype;
	}
	public String getPosition()
	{
		return position;
	}
	public void setPosition(String position)
	{
		this.position = position;
	}
	public String getCreatetime()
	{
		return createtime;
	}
	public void setCreatetime(String createtime)
	{
		this.createtime = createtime;
	}
	public int getLimitnumber()
	{
		return limitnumber;
	}
	public void setLimitnumber(int limitnumber)
	{
		this.limitnumber = limitnumber;
	}
}
