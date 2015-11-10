package com.tridiots.domain;

public class Node
{
	private int id;
	private String yijinode;
	private String erjinode;
	private String type;
	
	public String getType()
	{
		return type;
	}
	public void setType(String type)
	{
		this.type = type;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getYijinode()
	{
		return yijinode;
	}
	public void setYijinode(String yijinode)
	{
		this.yijinode = yijinode;
	}
	public String getErjinode()
	{
		return erjinode;
	}
	public void setErjinode(String erjinode)
	{
		this.erjinode = erjinode;
	}
}
