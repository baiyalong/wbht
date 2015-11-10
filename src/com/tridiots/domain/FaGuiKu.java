package com.tridiots.domain;
/**
 * 法规库
 * @author zhaojigang
 *
 */
public class FaGuiKu
{
	private int id;
	private String fgnumber;//法规文号
	private String fgtw;//法规条文
	private String keyword;//关键词
	private String taxtype;//税种
	private String area;//适用地区
	private String content;//法规全文
	private String note;//备注
	
	private String gonghao;//录入员工号
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
	public String getFgnumber()
	{
		return fgnumber;
	}
	public void setFgnumber(String fgnumber)
	{
		this.fgnumber = fgnumber;
	}
	public String getFgtw()
	{
		return fgtw;
	}
	public void setFgtw(String fgtw)
	{
		this.fgtw = fgtw;
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
	public String getContent()
	{
		return content;
	}
	public void setContent(String content)
	{
		this.content = content;
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
