package com.tridiots.domain;

public class JcsTax
{
	private int tax_id;
	private String chd1;
	private String chd2;
	private String chd3;
	private String tj1;
	private String tj2;
	private String tj3;
	private String wq;
	private String fx;
	private String al;
	private String fg;
	private String jcs_taxtype;//税种
	private String jcs_id;//用于找到对应的决策树
	
	public int getTax_id()
	{
		return tax_id;
	}
	public void setTax_id(int tax_id)
	{
		this.tax_id = tax_id;
	}
	public String getChd1()
	{
		return chd1;
	}
	public void setChd1(String chd1)
	{
		this.chd1 = chd1;
	}
	public String getChd2()
	{
		return chd2;
	}
	public void setChd2(String chd2)
	{
		this.chd2 = chd2;
	}
	public String getChd3()
	{
		return chd3;
	}
	public void setChd3(String chd3)
	{
		this.chd3 = chd3;
	}
	public String getTj1()
	{
		return tj1;
	}
	public void setTj1(String tj1)
	{
		this.tj1 = tj1;
	}
	public String getTj2()
	{
		return tj2;
	}
	public void setTj2(String tj2)
	{
		this.tj2 = tj2;
	}
	public String getTj3()
	{
		return tj3;
	}
	public void setTj3(String tj3)
	{
		this.tj3 = tj3;
	}
	public String getWq()
	{
		return wq;
	}
	public void setWq(String wq)
	{
		this.wq = wq;
	}
	public String getFx()
	{
		return fx;
	}
	public void setFx(String fx)
	{
		this.fx = fx;
	}
	public String getAl()
	{
		return al;
	}
	public void setAl(String al)
	{
		this.al = al;
	}
	public String getFg()
	{
		return fg;
	}
	public void setFg(String fg)
	{
		this.fg = fg;
	}
	public String getJcs_taxtype()
	{
		return jcs_taxtype;
	}
	public void setJcs_taxtype(String jcs_taxtype)
	{
		this.jcs_taxtype = jcs_taxtype;
	}
	public String getJcs_id()
	{
		return jcs_id;
	}
	public void setJcs_id(String jcs_id)
	{
		this.jcs_id = jcs_id;
	}
}
