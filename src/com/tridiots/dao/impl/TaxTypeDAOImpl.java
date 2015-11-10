package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.TaxType;
import com.tridiots.utils.DBConn;
import com.tridiots.utils.DruidConn;

public class TaxTypeDAOImpl implements TaxTypeDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	//////////////////////////////////////
	public TaxType findTaxById(int id)
	{
		TaxType ht = new TaxType();
		String sql = "SELECT * FROM landtax WHERE id = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				
				//String id = rs.getString(1);
				
				ht.setId(id);
				ht.setFirstnode(rs.getString(2));
				ht.setSecondnode(rs.getString(3));
				ht.setTitle(rs.getString(4));
				
				ht.setPlanpoint(rs.getString(5));
				ht.setCondition(rs.getString(6));
				ht.setCasetitle(rs.getString(7));
				ht.setMisunderstanding(rs.getString(8));
				ht.setScheme(rs.getString(9));
				ht.setRuletw(rs.getString(10));
				ht.setCompanytype(rs.getString(11));
				ht.setArea(rs.getString(12));
				ht.setKeyword(rs.getString(13));
				ht.setTaxtype(rs.getString(14));
				ht.setNote(rs.getString(15));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return ht;
	}
	
	////////////////////////////////
	public boolean eDitTax(TaxType ht)
	{
		String sql = "UPDATE landtax SET firstnode=?,secondnode=?,title=?,planpoint=?," +
				"`condition`=?,casetitle=?,misunderstanding=?,scheme=?,ruletw=?," +
				"companytype=?,area=?,keyword=?,taxtype=?,note=? WHERE id=?";
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, ht.getFirstnode());  
			ps.setString(2, ht.getSecondnode());  
			ps.setString(3, ht.getTitle());  
			ps.setString(4, ht.getPlanpoint());  
			ps.setString(5, ht.getCondition());  
			ps.setString(6, ht.getCasetitle());  
			ps.setString(7, ht.getMisunderstanding());  
			ps.setString(8, ht.getScheme());  
  		    ps.setString(9, ht.getRuletw()); 
  		    ps.setString(10, ht.getCompanytype()); 
  		    ps.setString(11, ht.getArea()); 
  		    ps.setString(12, ht.getKeyword()); 
  		    ps.setString(13, ht.getTaxtype()); 
  		    ps.setString(14, ht.getNote()); 
  		    ps.setInt(15, ht.getId()); 

			if( ps.executeUpdate()==1)
			{
				return true;
			}
			///////////////////////////////////

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return false;
	}
	//////////////////////////////////////
	public boolean deleteTax(int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			String sql = "DELETE FROM landtax WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int num = ps.executeUpdate();
			
			if(num==1){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return false;
	}
	//////////////////////////
	/**
	* 获取税种总数
	* @return
	*/
	public int getTaxTypeCountByJilian(String yijicd, String erji, String biao,String companyName,String usertype)
	{
		String sql = "";
		if(usertype.equals("superadmin"))
			sql = "SELECT COUNT(*) FROM "+biao+" WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"';";
		else
			sql = "SELECT COUNT(*) FROM "+biao+" WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' AND (companyName = '"+companyName+"' OR usertype='superadmin');";
		
		int size = 0;
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				size=Integer.parseInt(rs.getString(1));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return size;
	}
	/**
	* 按关键词或税种进行搜索
	* @param start
	* @param limit
	* @return
	*/
	public List<TaxType> listTaxTypeByJilian(int start, int limit, String yijicd, String erji, String biao,String companyName,String usertype)
	{
		List<TaxType> allTaxType = new ArrayList<TaxType>();
		
		String sql = "";
		if(usertype.equals("superadmin"))
			sql = "SELECT * FROM "+biao+" WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' LIMIT ?,?;";
		else
			sql = "SELECT * FROM "+biao+" WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' AND (companyName = '"+companyName+"' OR usertype='superadmin') LIMIT ?,?;";
			
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			System.out.println(sql);
			while(rs.next()){
				
				TaxType tax = new TaxType();
				
				tax.setId(rs.getInt(1));
				tax.setFirstnode(rs.getString(2));
				tax.setSecondnode(rs.getString(3));
				tax.setTitle(rs.getString(4));
				tax.setPlanpoint(rs.getString(5));
				tax.setCondition(rs.getString(6));
				tax.setCasetitle(rs.getString(7));
				tax.setMisunderstanding(rs.getString(8));
				tax.setScheme(rs.getString(9));
				tax.setRuletw(rs.getString(10));
				tax.setCompanytype(rs.getString(11));
				tax.setArea(rs.getString(12));
				tax.setKeyword(rs.getString(13));
				tax.setTaxtype(rs.getString(14));
				tax.setNote(rs.getString(15));
				tax.setGonghao(rs.getString(16));
				tax.setCompanyName(rs.getString(17));
				tax.setUsertype(rs.getString(18));
				
				allTaxType.add(tax);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return allTaxType;
	}
	
	/**
	* 分页列出所有的税种文件，并传到前台去
	* @param start
	* @param limit
	* @return
	*/
	public Map<String, Object> listTaxTypeKuByJilian(int start, int limit, String yijicd, String erji, String biao,String companyName,String usertype)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getTaxTypeCountByJilian(yijicd, erji, biao, companyName, usertype));
		result.put("list", this.listTaxTypeByJilian(start, limit, yijicd, erji, biao, companyName, usertype));
		return result;
	}
	///////////////////////////////////////////////
	
	public int getTaxTypeCount(String sz, String sydq, String gjc,
			String companyType, String biao,String companyName,String usertype)
	{
		if(companyType!=""&&companyType!=null&&companyType.equals("外资、内资、上市"))//公司类型为全部
		{
			companyType="";
		}
		String sql = "";
		String sqlQx = " AND (companyName = '"+companyName+"' OR usertype='superadmin') ";
		
		if(gjc==""||gjc==null)
		{
			if(sz==""||sz==null)
			{
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//全为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companyName = '"+companyName+"' OR usertype='superadmin';";
					}
					else//只有公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\""+sqlQx+"";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						//sql = "SELECT COUNT(*) FROM "+biao+" WHERE area = '"+sydq+"'";
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE "+sydqZz;
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE "+sydqZz+" "+sqlQx+"";
						//System.out.println(sql+"----->danteng");
					}
					else//适用地区、公司类型不为空
					{
						//sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND area = '"+sydq+"'";
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz;
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" "+sqlQx+"";
					}
				}
				
			}
			else{//税种不为空
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//只有税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"'";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"'"+sqlQx+"";
					}
					else//公司类型、税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"'";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"'"+sqlQx+"";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz;
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" "+sqlQx+"";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz;
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" "+sqlQx+"";
					}
				}
			}
		}
		else//关键词不为空
		{
			if(sz==""||sz==null)
			{
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//全为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
					else
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE "+sydqZz+" AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
				}
				
			}
			else{//税种不为空
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//只有税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
					else//公司类型、税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\"";
						else
							sql = "SELECT COUNT(*) FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+"";
					}
				}
			}
			
		}
		
		int size = 0;
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()){
				size=Integer.parseInt(rs.getString(1));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return size;
	}
	
	public List<TaxType> listTaxType(int start, int limit, String sz,
			String sydq, String gjc, String companyType, String biao,String companyName,String usertype)
	{
		if(companyType!=""&&companyType!=null&&companyType.equals("外资、内资、上市"))//公司类型为全部
		{
			companyType="";
		}
		List<TaxType> allTaxType = new ArrayList<TaxType>();
		String sql = "";
		String sqlQx = " AND (companyName = '"+companyName+"' OR usertype='superadmin') ";
		
		if(gjc==""||gjc==null)
		{
			if(sz==""||sz==null)
			{
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//全为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companyName = '"+companyName+"' OR usertype='superadmin' LIMIT ?,?;";
					}
					else//只有公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\""+sqlQx+" LIMIT ?,?;";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE "+sydqZz+" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE "+sydqZz+" "+sqlQx+" LIMIT ?,?;";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" "+sqlQx+" LIMIT ?,?;";
					}
				}
				
			}
			else{//税种不为空
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//只有税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"'"+sqlQx+" LIMIT ?,?;";
					}
					else//公司类型、税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"' LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"'"+sqlQx+" LIMIT ?,?;";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" "+sqlQx+" LIMIT ?,?;";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" "+sqlQx+" LIMIT ?,?;";
					}
				}
			}
		}
		else//关键词不为空
		{
			if(sz==""||sz==null)
			{
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//全为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
					else
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE "+sydqZz+" AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
				}
				
			}
			else{//税种不为空
				if(sydq==""||sydq==null||sydq.equals("null"))
				{
					if(companyType==""||companyType==null)//只有税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
					else//公司类型、税种不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE companytype LIKE \"%"+companyType+"%\" AND taxtype = '"+sz+"' AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
				}
				else//适用地区不为空
				{
					String sydqArray[] = sydq.split(",");
					StringBuffer sb = new StringBuffer();
					for(int i=0;i<sydqArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<sydqArray.length-1)
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" Or ");
						else
							sb.append(" area LIKE \"%"+sydqArray[i]+"%\" ");
					}
					String sydqZz = sb.toString();
					if(companyType==""||companyType==null)
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
					else//适用地区、公司类型不为空
					{
						if(usertype.equals("superadmin"))
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\" LIMIT ?,?;";
						else
							sql = "SELECT * FROM "+biao+" WHERE taxtype = '"+sz+"' AND companytype LIKE \"%"+companyType+"%\" AND "+sydqZz+" AND title LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
					}
				}
			}
			
		}
		System.out.println("sql ========="+sql);
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			System.out.println(sql);
			while(rs.next()){
				
				TaxType tax = new TaxType();
				
				tax.setId(rs.getInt(1));
				tax.setFirstnode(rs.getString(2));
				tax.setSecondnode(rs.getString(3));
				tax.setTitle(rs.getString(4));
				tax.setPlanpoint(rs.getString(5));
				tax.setCondition(rs.getString(6));
				tax.setCasetitle(rs.getString(7));
				tax.setMisunderstanding(rs.getString(8));
				tax.setScheme(rs.getString(9));
				tax.setRuletw(rs.getString(10));
				tax.setCompanytype(rs.getString(11));
				tax.setArea(rs.getString(12));
				tax.setKeyword(rs.getString(13));
				tax.setTaxtype(rs.getString(14));
				tax.setNote(rs.getString(15));
				tax.setGonghao(rs.getString(16));
				tax.setCompanyName(rs.getString(17));
				tax.setUsertype(rs.getString(18));
				
				allTaxType.add(tax);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return allTaxType;
	}

	public Map<String, Object> listTaxTypeKu(int start, int limit, String sz,
			String sydq, String gjc, String companyType, String biao,String companyName,String usertype)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getTaxTypeCount(sz, sydq, gjc, companyType, biao, companyName, usertype));
		result.put("list", this.listTaxType(start, limit, sz, sydq, gjc, companyType, biao, companyName, usertype));
		return result;
	}

	public void close()
	{
		try{
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}if(conn!=null){
				conn.close();
			}
			}catch(Exception e){
				e.printStackTrace();
			}
		
	}
	
	public boolean addTaxType(TaxType taxType)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
				"INSERT INTO landtax(firstnode,secondnode,title,planpoint,`condition`,casetitle,misunderstanding,scheme,ruletw,companytype,area,keyword,taxtype,note,gonghao,companyName,usertype) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
			ps.setString(1, taxType.getFirstnode());  
			ps.setString(2, taxType.getSecondnode());  
			ps.setString(3, taxType.getTitle());  
			ps.setString(4, taxType.getPlanpoint());  
			ps.setString(5, taxType.getCondition());  
			ps.setString(6, taxType.getCasetitle());  
			ps.setString(7, taxType.getMisunderstanding());  
			ps.setString(8, taxType.getScheme()); 
			ps.setString(9, taxType.getRuletw()); 
			ps.setString(10, taxType.getCompanytype()); 
			ps.setString(11, taxType.getArea()); 
			ps.setString(12, taxType.getKeyword()); 
			ps.setString(13, taxType.getTaxtype()); 
			ps.setString(14, taxType.getNote()); 
			ps.setString(15, taxType.getGonghao()); 
			ps.setString(16, taxType.getCompanyName()); 
			ps.setString(17, taxType.getUsertype());
			
			System.out.println(taxType.getArea()+"-->sydq");
			  
			if( ps.executeUpdate()==1)
			{
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return false;
	}
	

	/*public static void main(String[] args)
	{
		TaxTypeDAOImpl d = new TaxTypeDAOImpl();
		List<TaxType> t = d.listTaxType(0,5,null, "上海", null, "", "landtax");
		for(TaxType ty:t)
		System.out.println(ty.getFirstnode());
	}*/


}
