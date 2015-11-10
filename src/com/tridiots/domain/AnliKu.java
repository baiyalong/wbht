package com.tridiots.domain;

public class AnliKu
{
	private int id;
	private String casetitle;//标题
	private String casecontent;//案例
	private String keyword;//关键词
	private String taxtype;//税种
	private String area;//适用地区
	private String note;//备注
	private String gonghao;//工号
	private String companyName;//录入员所属公司
	private String usertype;//录入员的类型
	
	
	public String getCompanyName()
	{
		return companyName;
	}
	public void setCompanyName(String companyName)
	{
		this.companyName = companyName;
	}
	public String getUsertype()
	{
		return usertype;
	}
	public void setUsertype(String usertype)
	{
		this.usertype = usertype;
	}
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getCasetitle()
	{
		return casetitle;
	}
	public void setCasetitle(String casetitle)
	{
		this.casetitle = casetitle;
	}
	public String getCasecontent()
	{
		return casecontent;
	}
	public void setCasecontent(String casecontent)
	{
		this.casecontent = casecontent;
	}
	public String getKeyword()
	{
		return keyword;
	}
	public void setKeyword(String keyword)
	{
		this.keyword = keyword;
	}
	public String getTaxtype()
	{
		return taxtype;
	}
	public void setTaxtype(String taxtype)
	{
		this.taxtype = taxtype;
	}
	public String getArea()
	{
		return area;
	}
	public void setArea(String area)
	{
		this.area = area;
	}
	public String getNote()
	{
		return note;
	}
	public void setNote(String note)
	{
		this.note = note;
	}
	public String getGonghao()
	{
		return gonghao;
	}
	public void setGonghao(String gonghao)
	{
		this.gonghao = gonghao;
	}
}
