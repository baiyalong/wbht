package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.Ht;
import com.tridiots.domain.HtDetail;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.Node;

public interface HtDAO
{
	/**
	 * 构造一二级节点
	 * @return
	 */
	public List<Node> listNode(String type); 
	/**
	 * 更新合同控税数据
	 * @return
	 */
	public boolean eDitHt(Ht ht,List<HtTax> htTaxs);
	/**
	 * 增加合同控税数据
	 * @return
	 */
	public boolean addHt(Ht ht,List<HtTax> htTaxs);
	/**
	 * 删除案例
	 * @param id
	 * @return
	 */
	public boolean deleteHt(String id);
	///////////////////////////////////
	/**
	 * 按id查询合同控税与具体税种
	 * @param id
	 * @return
	 */
	public HtDetail findHtAndTaxById(String id);
	/////////////////////////分页列出搜索内容开始///////////////////////////
	/**
	* 获取合同总数
	* @return
	*/
	public int getHtCount(String gjc, String htlx, String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	/**
	*搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<HtDetail> listHt(int start, int limit, String gjc, String htlx, String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	
	/**
	* 分页列出所有的合同文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listHtKu(int start, int limit, String gjc, String htlx,String yaodian, String gslx,String companyName,String usertype,String alsousuo);
	
	/////////////////////////分页列出搜索内容结束///////////////////////////
	/////////////////////////////////////////////////////////////
	
	/**
	* 获取合同总数
	* @return
	*/
	public int getHtByJilianCount(String yijicd, String erji,String companyName,String usertype);
	/**
	*搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<HtDetail> listHtByJilian(int start, int limit, String yijicd, String erji,String companyName,String usertype);
	
	/**
	* 分页列出所有的合同文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listHtByJilianKu(int start, int limit, String yijicd, String erji,String companyName,String usertype);
	
	///////////////////////////////////////////////////////////////
	
	/**
	 * 关闭数据库
	 */
	public void close();
}
