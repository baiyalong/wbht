package com.tridiots.dao;

import java.util.List;
import java.util.Map;

import com.tridiots.domain.AnliKu;
import com.tridiots.domain.TaxType;


public interface AnliDAO
{
	public AnliKu findAnliById(int id);
	/**
	 * 根据案例标题查找案例全文
	 * @param title 案例标题
	 * @return
	 */
	public AnliKu findAnliContentByTitle(String title);
	
	public boolean eDitAlk(AnliKu ht);
	/**
	 * 添加案例到案例库
	 */
	public boolean addAnli(AnliKu anli);
	
	/////////////////////////分页列出搜索内容开始///////////////////////////
	/**
	 * 删除案例
	 * @param id
	 * @return
	 */
	public boolean deleteAnli(int id);
	///////////////////////////////////
	/**
	 * 更新
	 * @param title
	 * @param anli
	 * @param gjc
	 * @param sz
	 * @param sydq
	 * @param bz
	 * @param id
	 */
	public void updateAnliById(String title, String anli, String gjc, String sz, String sydq, String bz, int id);
	////////////////////////////////
	/**
	 * 获取搜索案例总数
	 * @return
	 */
	public int getAnliSousuoCount(String gjc_sousuo, String sz_sousuo,String companyName,String usertype);
	/**
	 * 按关键词或税种进行搜索
	 * @param start
	 * @param limit
	 * @return
	 */
	public List<AnliKu> listSousuoAnli(int start, int limit, String gjc_sousuo, String sz_sousuo,String companyName,String usertype);
	
	/**
	 * 分页列出所有的案例文件，并传到前台去
	 * @param start
	 * @param limit
	 * @return
	 */
	public Map<String, Object> listSousuoAnliKu(int start, int limit, String gjc_sousuo, String sz_sousuo,String companyName,String usertype);
	
	/////////////////////////分页列出搜索内容结束///////////////////////////
	/**
	 * 关闭数据库
	 */
	public void close();
}
