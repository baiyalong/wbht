package com.tridiots.domain;

public class TaxType
{
	private int id;
	private String firstnode;
	private String secondnode;
	private String title;//标题
	private String planpoint;//筹划点
	private String condition;//条件
	private String casetitle;//案例标题
	private String misunderstanding;//误区
	private String scheme;//风险应对方案
	private String ruletw;//法规条文
	private String companytype;//公司类型
	private String area;
	private String keyword;//关键词
	private String taxtype;
	private String note;
	private String gonghao;//工号
	private String companyName;//录入员所属公司
	private String usertype;//录入员的类型
	
	public String getGonghao()
	{
		return gonghao;
	}
	public void setGonghao(String gonghao)
	{
		this.gonghao = gonghao;
	}
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
	public String getFirstnode()
	{
		return firstnode;
	}
	public void setFirstnode(String firstnode)
	{
		this.firstnode = firstnode;
	}
	public String getSecondnode()
	{
		return secondnode;
	}
	public void setSecondnode(String secondnode)
	{
		this.secondnode = secondnode;
	}
	public String getTitle()
	{
		return title;
	}
	public void setTitle(String title)
	{
		this.title = title;
	}
	public String getPlanpoint()
	{
		return planpoint;
	}
	public void setPlanpoint(String planpoint)
	{
		this.planpoint = planpoint;
	}
	public String getCondition()
	{
		return condition;
	}
	public void setCondition(String condition)
	{
		this.condition = condition;
	}
	public String getCasetitle()
	{
		return casetitle;
	}
	public void setCasetitle(String casetitle)
	{
		this.casetitle = casetitle;
	}
	public String getMisunderstanding()
	{
		return misunderstanding;
	}
	public void setMisunderstanding(String misunderstanding)
	{
		this.misunderstanding = misunderstanding;
	}
	public String getScheme()
	{
		return scheme;
	}
	public void setScheme(String scheme)
	{
		this.scheme = scheme;
	}
	public String getRuletw()
	{
		return ruletw;
	}
	public void setRuletw(String ruletw)
	{
		this.ruletw = ruletw;
	}
	public String getCompanytype()
	{
		return companytype;
	}
	public void setCompanytype(String companytype)
	{
		this.companytype = companytype;
	}
	public String getArea()
	{
		return area;
	}
	public void setArea(String area)
	{
		this.area = area;
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
	public String getNote()
	{
		return note;
	}
	public void setNote(String note)
	{
		this.note = note;
	}
}
