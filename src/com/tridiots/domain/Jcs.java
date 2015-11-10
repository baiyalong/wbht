package com.tridiots.domain;
/**
 * 决策树的主体部分
 * @author zhaojigang
 *
 */
public class Jcs
{
	private String domainKey;//人造主键
	private String firstnode;
	private String secondnode;
	private String title;//标题
	private String yaodian;//要点
	private String gslx;
	//private String area;
	private String keyword;
	private String note;
	private String al;
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
	public String getAl()
	{
		return al;
	}
	public void setAl(String al)
	{
		this.al = al;
	}
	public String getYaodian()
	{
		return yaodian;
	}
	public void setYaodian(String yaodian)
	{
		this.yaodian = yaodian;
	}
	public String getDomainKey()
	{
		return domainKey;
	}
	public void setDomainKey(String domainKey)
	{
		this.domainKey = domainKey;
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
	public String getGslx()
	{
		return gslx;
	}
	public void setGslx(String gslx)
	{
		this.gslx = gslx;
	}
	/*public String getArea()
	{
		return area;
	}
	public void setArea(String area)
	{
		this.area = area;
	}*/
	public String getKeyword()
	{
		return keyword;
	}
	public void setKeyword(String keyword)
	{
		this.keyword = keyword;
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
