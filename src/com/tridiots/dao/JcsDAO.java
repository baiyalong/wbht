package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.Ht;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.Jcs;
import com.tridiots.domain.JcsDetail;
import com.tridiots.domain.JcsTax;

public interface JcsDAO
{
	/**
	 * 增加决策数据
	 * @return
	 */
	public boolean addJcs(Jcs jcs,List<JcsTax> jcsTaxs);
	
	/**
	 * 删除案例
	 * @param id
	 * @return
	 */
	public boolean deleteJcs(String id);
	/**
	 * 按id查询jcs与具体税种
	 * @param id
	 * @return
	 */
	public JcsDetail findJcsAndTaxById(String id);
	/**
	 * 更新jcs数据
	 * @return
	 */
	public boolean eDitJcs(Jcs ht,List<JcsTax> htTaxs);
	////////////////////////////////////////////////////////
	
	/////////////////////////分页列出搜索内容开始///////////////////////////
	/**
	* 获取决策树总数
	* @return
	*/
	public int getJcsCountByJilian(String yijicd, String erji,String companyName,String usertype);
	/**
	*搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<JcsDetail> listJcsByJilian(int start, int limit, String yijicd, String erji,String companyName,String usertype);
	
	/**
	* 分页列出所有的决策树文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listJcsKuByJilian(int start, int limit, String yijicd, String erji,String companyName,String usertype);
	
	/////////////////////////分页列出搜索内容结束///////////////////////////
	/////////////////////////分页列出搜索内容开始///////////////////////////
	/**
	* 获取决策树总数
	* @return
	*/
	public int getJcsCount(String gjc, String biaoti, String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	/**
	*搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<JcsDetail> listJcs(int start, int limit, String gjc, String biaoti, String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	
	/**
	* 分页列出所有的决策树文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listJcsKu(int start, int limit, String gjc, String biaoti,String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	
	/////////////////////////分页列出搜索内容结束///////////////////////////
	
	
	/**
	 * 关闭数据库
	 */
	public void close();
}
