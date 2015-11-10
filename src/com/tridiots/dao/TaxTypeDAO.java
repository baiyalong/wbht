package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.Ht;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.TaxType;

public interface TaxTypeDAO
{
	public TaxType findTaxById(int id);
	
	public boolean eDitTax(TaxType ht);
	
	public boolean deleteTax(int id);
	//////////////////////////
	/**
	* 获取税种总数
	* @return
	*/
	public int getTaxTypeCountByJilian(String yijicd, String erji, String biao,String companyName,String usertype);
	/**
	* 按关键词或税种进行搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<TaxType> listTaxTypeByJilian(int start, int limit, String yijicd, String erji, String biao,String companyName,String usertype);
	
	/**
	* 分页列出所有的税种文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listTaxTypeKuByJilian(int start, int limit, String yijicd, String erji, String biao,String companyName,String usertype);
	///////////////////////////////////////////////
	/////////////////////////分页列出搜索内容开始///////////////////////////
	/**
	* 获取税种总数
	* @return
	*/
	public int getTaxTypeCount(String sz, String sydq, String gjc, String companyType, String biao,String companyName,String usertype);
	/**
	* 按关键词或税种进行搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<TaxType> listTaxType(int start, int limit, String sz, String sydq, String gjc, String companyType, String biao,String companyName,String usertype);
	
	/**
	* 分页列出所有的税种文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listTaxTypeKu(int start, int limit, String sz, String sydq, String gjc, String companyType, String biao,String companyName,String usertype);
	
	/////////////////////////分页列出搜索内容结束///////////////////////////
	
	public boolean addTaxType(TaxType taxType);
	/**
	* 关闭数据库
	*/
	public void close();
}
