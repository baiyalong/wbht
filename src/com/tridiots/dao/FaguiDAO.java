package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.AnliKu;
import com.tridiots.domain.FaGuiKu;

public interface FaguiDAO
{
	public FaGuiKu findFgtwByTitle(String tw);
	public FaGuiKu findFaguiById(int id);
	
	public boolean eDitFagui(FaGuiKu ht);
	/**
	 * 获取法规总数
	 * @return
	 */
	public int getFaguiCount(String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype);
	/**
	 * 分页列出所有的法规文件
	 * @return
	 */
	public List<FaGuiKu> listAllFagui(int start, int limit, String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype);
	/**
	 * 分页列出所有的法规文件，并传到前台去
	 * @param start
	 * @param limit
	 * @return
	 */
	public Map<String, Object> listAllFaguiKu(int start, int limit,String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype);
	/**
	 * 添加法规到法规库
	 */
	public boolean addFagui(FaGuiKu fagui);
	///////////////
	/**
	 * 删除案例
	 * @param id
	 * @return
	 */
	public boolean deleteFagui(int id);
	////////////////////////
	/**
	 * 更新
	 * @param wh
	 * @param tw
	 * @param qw
	 * @param sydq
	 * @param sz
	 * @param gjc
	 * @param bz
	 * @param id
	 */
	public void updateFaguiById(String wh, String tw, String qw, String sydq,String sz, String gjc, String bz,  int id);
	////////////////////////
	/**
	 * 关闭数据库
	 */
	public void close();
}
