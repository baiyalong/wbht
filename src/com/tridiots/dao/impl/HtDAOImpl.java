package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import com.tridiots.dao.HtDAO;
import com.tridiots.domain.Ht;
import com.tridiots.domain.HtDetail;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.Node;
import com.tridiots.utils.DBConn;
import com.tridiots.utils.DruidConn;

public class HtDAOImpl implements HtDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private PreparedStatement ps1=null;
	private ResultSet rs=null;
	private ResultSet rs1=null;
	
	public HtDetail findHtAndTaxById(String id)
	{
		HtDetail ht = new HtDetail();
		String sql = "SELECT * FROM ht WHERE id = ?";
		String sql1 = "SELECT * FROM ht_tax WHERE ht_id = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				
				//String id = rs.getString(1);
				
				ht.setDomainKey(id);
				ht.setFirstnode(rs.getString(2));
				ht.setSecondnode(rs.getString(3));
				ht.setHtlx(rs.getString(4));
				
				ht.setGslx(rs.getString(5));
				ht.setKeyword(rs.getString(6));
				ht.setNote(rs.getString(7));
				ht.setYaodian(rs.getString(8));
				ht.setAl(rs.getString(9));
				
				ps=conn.prepareStatement(sql1);
				ps.setString(1, id);
				rs1 = ps.executeQuery();
				while(rs1.next()){
					String ht_taxtype = rs1.getString(12);
					if(ht_taxtype.equals("营业税"))
					{
						ht.setYy_chd1(rs1.getString(2));
						ht.setYy_chd2(rs1.getString(3));
						ht.setYy_chd3(rs1.getString(4));
						ht.setYy_tj1(rs1.getString(5));
						ht.setYy_tj2(rs1.getString(6));
						ht.setYy_tj3(rs1.getString(7));
						ht.setYy_wq(rs1.getString(8));
						ht.setYy_fx(rs1.getString(9));
						ht.setYy_al(rs1.getString(10));
						ht.setYy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("企业所得税"))
					{
						ht.setQy_chd1(rs1.getString(2));
						ht.setQy_chd2(rs1.getString(3));
						ht.setQy_chd3(rs1.getString(4));
						ht.setQy_tj1(rs1.getString(5));
						ht.setQy_tj2(rs1.getString(6));
						ht.setQy_tj3(rs1.getString(7));
						ht.setQy_wq(rs1.getString(8));
						ht.setQy_fx(rs1.getString(9));
						ht.setQy_al(rs1.getString(10));
						ht.setQy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地增值税"))
					{
						ht.setTdzz_chd1(rs1.getString(2));
						ht.setTdzz_chd2(rs1.getString(3));
						ht.setTdzz_chd3(rs1.getString(4));
						ht.setTdzz_tj1(rs1.getString(5));
						ht.setTdzz_tj2(rs1.getString(6));
						ht.setTdzz_tj3(rs1.getString(7));
						ht.setTdzz_wq(rs1.getString(8));
						ht.setTdzz_fx(rs1.getString(9));
						ht.setTdzz_al(rs1.getString(10));
						ht.setTdzz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("增值税"))
					{
						ht.setZz_chd1(rs1.getString(2));
						ht.setZz_chd2(rs1.getString(3));
						ht.setZz_chd3(rs1.getString(4));
						ht.setZz_tj1(rs1.getString(5));
						ht.setZz_tj2(rs1.getString(6));
						ht.setZz_tj3(rs1.getString(7));
						ht.setZz_wq(rs1.getString(8));
						ht.setZz_fx(rs1.getString(9));
						ht.setZz_al(rs1.getString(10));
						ht.setZz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("契税"))
					{
						ht.setQ_chd1(rs1.getString(2));
						ht.setQ_chd2(rs1.getString(3));
						ht.setQ_chd3(rs1.getString(4));
						ht.setQ_tj1(rs1.getString(5));
						ht.setQ_tj2(rs1.getString(6));
						ht.setQ_tj3(rs1.getString(7));
						ht.setQ_wq(rs1.getString(8));
						ht.setQ_fx(rs1.getString(9));
						ht.setQ_al(rs1.getString(10));
						ht.setQ_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("个人所得税"))
					{
						ht.setGrsd_chd1(rs1.getString(2));
						ht.setGrsd_chd2(rs1.getString(3));
						ht.setGrsd_chd3(rs1.getString(4));
						ht.setGrsd_tj1(rs1.getString(5));
						ht.setGrsd_tj2(rs1.getString(6));
						ht.setGrsd_tj3(rs1.getString(7));
						ht.setGrsd_wq(rs1.getString(8));
						ht.setGrsd_fx(rs1.getString(9));
						ht.setGrsd_al(rs1.getString(10));
						ht.setGrsd_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("房产税"))
					{
						ht.setFc_chd1(rs1.getString(2));
						ht.setFc_chd2(rs1.getString(3));
						ht.setFc_chd3(rs1.getString(4));
						ht.setFc_tj1(rs1.getString(5));
						ht.setFc_tj2(rs1.getString(6));
						ht.setFc_tj3(rs1.getString(7));
						ht.setFc_wq(rs1.getString(8));
						ht.setFc_fx(rs1.getString(9));
						ht.setFc_al(rs1.getString(10));
						ht.setFc_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地使用税"))
					{
						ht.setTdsy_chd1(rs1.getString(2));
						ht.setTdsy_chd2(rs1.getString(3));
						ht.setTdsy_chd3(rs1.getString(4));
						ht.setTdsy_tj1(rs1.getString(5));
						ht.setTdsy_tj2(rs1.getString(6));
						ht.setTdsy_tj3(rs1.getString(7));
						ht.setTdsy_wq(rs1.getString(8));
						ht.setTdsy_fx(rs1.getString(9));
						ht.setTdsy_al(rs1.getString(10));
						ht.setTdsy_fg(rs1.getString(11));
					}
					else
					{
						ht.setYh_chd1(rs1.getString(2));
						ht.setYh_chd2(rs1.getString(3));
						ht.setYh_chd3(rs1.getString(4));
						ht.setYh_tj1(rs1.getString(5));
						ht.setYh_tj2(rs1.getString(6));
						ht.setYh_tj3(rs1.getString(7));
						ht.setYh_wq(rs1.getString(8));
						ht.setYh_fx(rs1.getString(9));
						ht.setYh_al(rs1.getString(10));
						ht.setYh_fg(rs1.getString(11));
					}
				}
				//System.out.println("+++++++++");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return ht;
	}
	
	/**
	 * 更新合同控税数据
	 * @return
	 */
	public boolean eDitHt(Ht ht,List<HtTax> htTaxs)
	{
		String sqlTax = "UPDATE ht_tax SET chd1=?,chd2=?,chd3=?,tj1=?,tj2=?,tj3=?,wq=?,fx=?,al=?,fg=? WHERE ht_id =? AND ht_taxtype=?";
		String sql = "UPDATE ht SET firstnode=?,secondnode=?,htlx=?,gslx=?,keyword=?,note=?,yaodian=?,al=? WHERE id=?";
		boolean htFlag = false;
		boolean httaxFlag = false;
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, ht.getFirstnode());  
			ps.setString(2, ht.getSecondnode());  
			ps.setString(3, ht.getHtlx());  
			ps.setString(4, ht.getGslx());  
			ps.setString(5, ht.getKeyword());  
			ps.setString(6, ht.getNote());  
			ps.setString(7, ht.getYaodian());  
			ps.setString(8, ht.getAl());  
  		    ps.setString(9, ht.getDomainKey()); 

			if( ps.executeUpdate()==1)
			{
				htFlag =  true;
			}
			///////////////////////////////////
			
			
			//conn.setAutoCommit(false);
			ps1=conn.prepareStatement(sqlTax);
			//System.out.println(htTaxs.size());	
			for(int i=1;i<=htTaxs.size();i++)
			{
				
				HtTax yy = htTaxs.get(i-1);
				
				ps1.setString(1, yy.getChd1());  
				ps1.setString(2, yy.getChd2());  
				ps1.setString(3, yy.getChd3());  
				ps1.setString(4, yy.getTj1());  
				ps1.setString(5, yy.getTj2());  
				ps1.setString(6, yy.getTj3());  
				ps1.setString(7, yy.getWq());  
				ps1.setString(8, yy.getFx());  
				ps1.setString(9, yy.getAl());  
				ps1.setString(10, yy.getFg()); 
				
				ps1.setString(11, yy.getHt_id()); 
				ps1.setString(12, yy.getHt_taxtype());  
				ps1.addBatch();
			}
			
			ps1.executeBatch();	
			//conn.commit();
			//conn.setAutoCommit(true);
			
			httaxFlag =  true;
		//////////////////////////////////
			if(htFlag&&httaxFlag)
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
	
	public boolean addHt(Ht ht,List<HtTax> htTaxs)
	{
		boolean htFlag = false;
		boolean httaxFlag = false;
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
				"INSERT INTO ht(id,firstnode,secondnode,htlx,gslx,keyword,note,yaodian,al,gonghao,companyName,usertype) VALUES(?,?,?,?,?,?,?,?,?,?,?,?);");
			ps.setString(1, ht.getDomainKey());  
			ps.setString(2, ht.getFirstnode());  
			ps.setString(3, ht.getSecondnode());  
			ps.setString(4, ht.getHtlx());  
			ps.setString(5, ht.getGslx());  
			ps.setString(6, ht.getKeyword());  
			ps.setString(7, ht.getNote());  
			ps.setString(8, ht.getYaodian());  
			ps.setString(9, ht.getAl());
			ps.setString(10, ht.getGonghao()); 
			ps.setString(11, ht.getCompanyName()); 
			ps.setString(12, ht.getUsertype());
			
			if( ps.executeUpdate()==1)
			{
				htFlag =  true;
			}
			///////////////////////////////////
			
			ps=conn.prepareStatement(
					"INSERT INTO ht_tax(chd1,chd2,chd3,tj1,tj2,tj3,wq,fx,al,fg,ht_taxtype,ht_id) " +
					"SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?" +
					" UNION ALL" +
					" SELECT ?,?,?,?,?,?,?,?,?,?,?,?;");
			System.out.println(htTaxs.size());	
			for(int i=1;i<=htTaxs.size();i++)
			{
				HtTax yy = htTaxs.get(i-1);
				
				ps.setString(i*12-11, yy.getChd1());  
				ps.setString(i*12-10, yy.getChd2());  
				ps.setString(i*12-9, yy.getChd3());  
				ps.setString(i*12-8, yy.getTj1());  
				ps.setString(i*12-7, yy.getTj2());  
				ps.setString(i*12-6, yy.getTj3());  
				ps.setString(i*12-5, yy.getWq());  
				ps.setString(i*12-4, yy.getFx());  
				ps.setString(i*12-3, yy.getAl());  
				ps.setString(i*12-2, yy.getFg());  
				ps.setString(i*12-1, yy.getHt_taxtype());  
				ps.setString(i*12, yy.getHt_id());  
			}
				
			if(ps.executeUpdate()==9)
			{
				httaxFlag =  true;
			}
		//////////////////////////////////
			if(htFlag&&httaxFlag)
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
	
	public boolean deleteHt(String id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			String sql = "DELETE FROM ht WHERE id=?";
			String sql1 = "DELETE FROM ht_tax WHERE ht_id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			int num = ps.executeUpdate();
			System.out.println(num);
			if(num==1){
				//删除成功
				ps=conn.prepareStatement(sql1);
				ps.setString(1, id);
				int num1 = ps.executeUpdate();
				if(num1>=0)
				{
					return true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return false;
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

	/////////////////////////////////////////////////////////////
	public int getHtByJilianCount(String yijicd, String erji,String companyName,String usertype)
	{
		String sql = "";
		if(usertype.equals("superadmin"))
			sql = "SELECT COUNT(*) FROM ht WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"';";
		else
			sql = "SELECT COUNT(*) FROM ht WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' AND (companyName = '"+companyName+"' OR usertype='superadmin');";
		
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
	public List<HtDetail> listHtByJilian(int start, int limit, String yijicd, String erji,String companyName,String usertype)
	{
		List<HtDetail> details = new ArrayList<HtDetail>();
		
		String sql = "";
		if(usertype.equals("superadmin"))
			sql = "SELECT * FROM ht WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' LIMIT ?,?;";
		else
			sql = "SELECT * FROM ht WHERE firstnode = '"+yijicd+"' AND secondnode = '"+erji+"' AND (companyName = '"+companyName+"' OR usertype='superadmin') LIMIT ?,?;";
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			while(rs.next()){
				
				HtDetail ht = new HtDetail();
				
				String id = rs.getString(1);
				
				ht.setDomainKey(id);
				ht.setFirstnode(rs.getString(2));
				ht.setSecondnode(rs.getString(3));
				ht.setHtlx(rs.getString(4));
				
				ht.setGslx(rs.getString(5));
				ht.setKeyword(rs.getString(6));
				ht.setNote(rs.getString(7));
				ht.setYaodian(rs.getString(8));
				ht.setAl(rs.getString(9));
				ht.setGonghao(rs.getString(10));
				ht.setCompanyName(rs.getString(11));
				ht.setUsertype(rs.getString(12));
				
				ps=conn.prepareStatement("SELECT * FROM ht_tax WHERE ht_id = ?");
				ps.setString(1, id);
				rs1 = ps.executeQuery();
				while(rs1.next()){
					String ht_taxtype = rs1.getString(12);
					if(ht_taxtype.equals("营业税"))
					{
						ht.setYy_chd1(rs1.getString(2));
						ht.setYy_chd2(rs1.getString(3));
						ht.setYy_chd3(rs1.getString(4));
						ht.setYy_tj1(rs1.getString(5));
						ht.setYy_tj2(rs1.getString(6));
						ht.setYy_tj3(rs1.getString(7));
						ht.setYy_wq(rs1.getString(8));
						ht.setYy_fx(rs1.getString(9));
						ht.setYy_al(rs1.getString(10));
						ht.setYy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("企业所得税"))
					{
						ht.setQy_chd1(rs1.getString(2));
						ht.setQy_chd2(rs1.getString(3));
						ht.setQy_chd3(rs1.getString(4));
						ht.setQy_tj1(rs1.getString(5));
						ht.setQy_tj2(rs1.getString(6));
						ht.setQy_tj3(rs1.getString(7));
						ht.setQy_wq(rs1.getString(8));
						ht.setQy_fx(rs1.getString(9));
						ht.setQy_al(rs1.getString(10));
						ht.setQy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地增值税"))
					{
						ht.setTdzz_chd1(rs1.getString(2));
						ht.setTdzz_chd2(rs1.getString(3));
						ht.setTdzz_chd3(rs1.getString(4));
						ht.setTdzz_tj1(rs1.getString(5));
						ht.setTdzz_tj2(rs1.getString(6));
						ht.setTdzz_tj3(rs1.getString(7));
						ht.setTdzz_wq(rs1.getString(8));
						ht.setTdzz_fx(rs1.getString(9));
						ht.setTdzz_al(rs1.getString(10));
						ht.setTdzz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("增值税"))
					{
						ht.setZz_chd1(rs1.getString(2));
						ht.setZz_chd2(rs1.getString(3));
						ht.setZz_chd3(rs1.getString(4));
						ht.setZz_tj1(rs1.getString(5));
						ht.setZz_tj2(rs1.getString(6));
						ht.setZz_tj3(rs1.getString(7));
						ht.setZz_wq(rs1.getString(8));
						ht.setZz_fx(rs1.getString(9));
						ht.setZz_al(rs1.getString(10));
						ht.setZz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("契税"))
					{
						ht.setQ_chd1(rs1.getString(2));
						ht.setQ_chd2(rs1.getString(3));
						ht.setQ_chd3(rs1.getString(4));
						ht.setQ_tj1(rs1.getString(5));
						ht.setQ_tj2(rs1.getString(6));
						ht.setQ_tj3(rs1.getString(7));
						ht.setQ_wq(rs1.getString(8));
						ht.setQ_fx(rs1.getString(9));
						ht.setQ_al(rs1.getString(10));
						ht.setQ_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("个人所得税"))
					{
						ht.setGrsd_chd1(rs1.getString(2));
						ht.setGrsd_chd2(rs1.getString(3));
						ht.setGrsd_chd3(rs1.getString(4));
						ht.setGrsd_tj1(rs1.getString(5));
						ht.setGrsd_tj2(rs1.getString(6));
						ht.setGrsd_tj3(rs1.getString(7));
						ht.setGrsd_wq(rs1.getString(8));
						ht.setGrsd_fx(rs1.getString(9));
						ht.setGrsd_al(rs1.getString(10));
						ht.setGrsd_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("房产税"))
					{
						ht.setFc_chd1(rs1.getString(2));
						ht.setFc_chd2(rs1.getString(3));
						ht.setFc_chd3(rs1.getString(4));
						ht.setFc_tj1(rs1.getString(5));
						ht.setFc_tj2(rs1.getString(6));
						ht.setFc_tj3(rs1.getString(7));
						ht.setFc_wq(rs1.getString(8));
						ht.setFc_fx(rs1.getString(9));
						ht.setFc_al(rs1.getString(10));
						ht.setFc_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地使用税"))
					{
						ht.setTdsy_chd1(rs1.getString(2));
						ht.setTdsy_chd2(rs1.getString(3));
						ht.setTdsy_chd3(rs1.getString(4));
						ht.setTdsy_tj1(rs1.getString(5));
						ht.setTdsy_tj2(rs1.getString(6));
						ht.setTdsy_tj3(rs1.getString(7));
						ht.setTdsy_wq(rs1.getString(8));
						ht.setTdsy_fx(rs1.getString(9));
						ht.setTdsy_al(rs1.getString(10));
						ht.setTdsy_fg(rs1.getString(11));
					}
					else
					{
						ht.setYh_chd1(rs1.getString(2));
						ht.setYh_chd2(rs1.getString(3));
						ht.setYh_chd3(rs1.getString(4));
						ht.setYh_tj1(rs1.getString(5));
						ht.setYh_tj2(rs1.getString(6));
						ht.setYh_tj3(rs1.getString(7));
						ht.setYh_wq(rs1.getString(8));
						ht.setYh_fx(rs1.getString(9));
						ht.setYh_al(rs1.getString(10));
						ht.setYh_fg(rs1.getString(11));
					}
				}
				System.out.println("+++++++++");
				details.add(ht);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return details;
	}
	public Map<String, Object> listHtByJilianKu(int start, int limit, String yijicd, String erji,String companyName,String usertype)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getHtByJilianCount(yijicd, erji, companyName, usertype));
		result.put("list", this.listHtByJilian(start, limit, yijicd, erji, companyName, usertype));
		return result;
	}
	///////////////////////////////////////////////////////////////
	public int getHtCount(String gjc, String htlx, String yaodian, String gslx,String companyName,String usertype,String alsousuo)
	{
		if(gslx!=""&&gslx!=null&&gslx.equals("外资、内资、上市"))//公司类型为全部
		{
			gslx="";
		}
		String sql = "";
		String sqlQx = " AND (companyName = '"+companyName+"' OR usertype='superadmin') ";
		if(gjc==""||gjc==null)
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht;";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE companyName = '"+companyName+"' OR usertype='superadmin';";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE companyName = '"+companyName+"' OR usertype='superadmin' AND al LIKE \"%"+alsousuo+"%\";";
						}
						
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\""+sqlQx+";";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
						
					}
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								//sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\"";
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\""+sqlQx+"";
						} 
						else{
							if(usertype.equals("superadmin"))
								//sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\"";
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\""+sqlQx+";";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
					}
					
				}
			}
			else//合同类型不为空
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\""+sqlQx+";";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+";";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+"";
						}else{ 
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+";";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
					}
					
				}
			}
		}
		else//关键词不为空
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\""+sqlQx+"";
						}else{ 
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+";";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\";";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\";";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+"";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+"";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					
				}
			}
			else//合同类型不为空
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+"";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+"";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+"";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+"";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\"";
							else
								sql = "SELECT COUNT(*) FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\"";
						}
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

	public List<HtDetail> listHt(int start, int limit, String gjc, String htlx,String yaodian, String gslx,String companyName,String usertype,String alsousuo)
	{
		if(gslx!=""&&gslx!=null&&gslx.equals("外资、内资、上市"))//公司类型为全部
		{
			gslx="";
		}
		List<HtDetail> details = new ArrayList<HtDetail>();
		String sql = "";
		String sqlQx = " AND (companyName = '"+companyName+"' OR usertype='superadmin') ";
		if(gjc==""||gjc==null)
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE companyName = '"+companyName+"' OR usertype='superadmin' LIMIT ?,?;";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE companyName = '"+companyName+"' OR usertype='superadmin' AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
						
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
						
					}
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								//sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\"";
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\""+sqlQx+" LIMIT ?,?";
						} 
						else{
							if(usertype.equals("superadmin"))
								//sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\"";
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
					}
					
				}
			}
			else//合同类型不为空
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?";
						}else{ 
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
					}
					
				}
			}
		}
		else//关键词不为空
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?";
						}else{ 
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?;";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					
				}
			}
			else//合同类型不为空
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?";
						}
						else
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					
				}
				else//公司类型不为空
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" AND al LIKE \"%"+alsousuo+"%\" LIMIT ?,?";
						}
					}
					
				}
			}
		}
		/*if(gjc==""||gjc==null)
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE companyName = '"+companyName+"' OR usertype='superadmin' LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
				else
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" "+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND gslx LIKE \"%"+gslx+"%\" "+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
			}
			else
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
				else
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
			}
		}
		else
		{
			if(htlx==""||htlx==null)
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
				else
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
			}
			else
			{
				if(gslx==""||gslx==null)
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\" LIMIT ?,?";
							else
								sql = "SELECT * FROM ht WHERE htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" AND keyword LIKE \"%"+gjc+"%\""+sqlQx+" LIMIT ?,?";
						}else{
							/
						}
					}
					
				}
				else
				{
					if(yaodian==""||yaodian==null)
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					else//要点不为空
					{
						if(alsousuo==""||alsousuo==null)
						{
							if(usertype.equals("superadmin"))
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\" LIMIT ?,?;";
							else
								sql = "SELECT * FROM ht WHERE gslx LIKE \"%"+gslx+"%\" AND keyword LIKE \"%"+gjc+"%\" AND htlx LIKE \"%"+htlx+"%\" AND yaodian LIKE \"%"+yaodian+"%\""+sqlQx+" LIMIT ?,?;";
						}else{
							/
						}
					}
					
				}
			}
		}*/
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			while(rs.next()){
				
				HtDetail ht = new HtDetail();
				
				String id = rs.getString(1);
				
				ht.setDomainKey(id);
				ht.setFirstnode(rs.getString(2));
				ht.setSecondnode(rs.getString(3));
				ht.setHtlx(rs.getString(4));
				
				ht.setGslx(rs.getString(5));
				ht.setKeyword(rs.getString(6));
				ht.setNote(rs.getString(7));
				ht.setYaodian(rs.getString(8));
				ht.setAl(rs.getString(9));
				ht.setGonghao(rs.getString(10));
				ht.setCompanyName(rs.getString(11));
				ht.setUsertype(rs.getString(12));
				
				ps=conn.prepareStatement("SELECT * FROM ht_tax WHERE ht_id = ?");
				ps.setString(1, id);
				rs1 = ps.executeQuery();
				while(rs1.next()){
					String ht_taxtype = rs1.getString(12);
					if(ht_taxtype.equals("营业税"))
					{
						ht.setYy_chd1(rs1.getString(2));
						ht.setYy_chd2(rs1.getString(3));
						ht.setYy_chd3(rs1.getString(4));
						ht.setYy_tj1(rs1.getString(5));
						ht.setYy_tj2(rs1.getString(6));
						ht.setYy_tj3(rs1.getString(7));
						ht.setYy_wq(rs1.getString(8));
						ht.setYy_fx(rs1.getString(9));
						ht.setYy_al(rs1.getString(10));
						ht.setYy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("企业所得税"))
					{
						ht.setQy_chd1(rs1.getString(2));
						ht.setQy_chd2(rs1.getString(3));
						ht.setQy_chd3(rs1.getString(4));
						ht.setQy_tj1(rs1.getString(5));
						ht.setQy_tj2(rs1.getString(6));
						ht.setQy_tj3(rs1.getString(7));
						ht.setQy_wq(rs1.getString(8));
						ht.setQy_fx(rs1.getString(9));
						ht.setQy_al(rs1.getString(10));
						ht.setQy_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地增值税"))
					{
						ht.setTdzz_chd1(rs1.getString(2));
						ht.setTdzz_chd2(rs1.getString(3));
						ht.setTdzz_chd3(rs1.getString(4));
						ht.setTdzz_tj1(rs1.getString(5));
						ht.setTdzz_tj2(rs1.getString(6));
						ht.setTdzz_tj3(rs1.getString(7));
						ht.setTdzz_wq(rs1.getString(8));
						ht.setTdzz_fx(rs1.getString(9));
						ht.setTdzz_al(rs1.getString(10));
						ht.setTdzz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("增值税"))
					{
						ht.setZz_chd1(rs1.getString(2));
						ht.setZz_chd2(rs1.getString(3));
						ht.setZz_chd3(rs1.getString(4));
						ht.setZz_tj1(rs1.getString(5));
						ht.setZz_tj2(rs1.getString(6));
						ht.setZz_tj3(rs1.getString(7));
						ht.setZz_wq(rs1.getString(8));
						ht.setZz_fx(rs1.getString(9));
						ht.setZz_al(rs1.getString(10));
						ht.setZz_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("契税"))
					{
						ht.setQ_chd1(rs1.getString(2));
						ht.setQ_chd2(rs1.getString(3));
						ht.setQ_chd3(rs1.getString(4));
						ht.setQ_tj1(rs1.getString(5));
						ht.setQ_tj2(rs1.getString(6));
						ht.setQ_tj3(rs1.getString(7));
						ht.setQ_wq(rs1.getString(8));
						ht.setQ_fx(rs1.getString(9));
						ht.setQ_al(rs1.getString(10));
						ht.setQ_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("个人所得税"))
					{
						ht.setGrsd_chd1(rs1.getString(2));
						ht.setGrsd_chd2(rs1.getString(3));
						ht.setGrsd_chd3(rs1.getString(4));
						ht.setGrsd_tj1(rs1.getString(5));
						ht.setGrsd_tj2(rs1.getString(6));
						ht.setGrsd_tj3(rs1.getString(7));
						ht.setGrsd_wq(rs1.getString(8));
						ht.setGrsd_fx(rs1.getString(9));
						ht.setGrsd_al(rs1.getString(10));
						ht.setGrsd_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("房产税"))
					{
						ht.setFc_chd1(rs1.getString(2));
						ht.setFc_chd2(rs1.getString(3));
						ht.setFc_chd3(rs1.getString(4));
						ht.setFc_tj1(rs1.getString(5));
						ht.setFc_tj2(rs1.getString(6));
						ht.setFc_tj3(rs1.getString(7));
						ht.setFc_wq(rs1.getString(8));
						ht.setFc_fx(rs1.getString(9));
						ht.setFc_al(rs1.getString(10));
						ht.setFc_fg(rs1.getString(11));
					}
					else if(ht_taxtype.equals("土地使用税"))
					{
						ht.setTdsy_chd1(rs1.getString(2));
						ht.setTdsy_chd2(rs1.getString(3));
						ht.setTdsy_chd3(rs1.getString(4));
						ht.setTdsy_tj1(rs1.getString(5));
						ht.setTdsy_tj2(rs1.getString(6));
						ht.setTdsy_tj3(rs1.getString(7));
						ht.setTdsy_wq(rs1.getString(8));
						ht.setTdsy_fx(rs1.getString(9));
						ht.setTdsy_al(rs1.getString(10));
						ht.setTdsy_fg(rs1.getString(11));
					}
					else
					{
						ht.setYh_chd1(rs1.getString(2));
						ht.setYh_chd2(rs1.getString(3));
						ht.setYh_chd3(rs1.getString(4));
						ht.setYh_tj1(rs1.getString(5));
						ht.setYh_tj2(rs1.getString(6));
						ht.setYh_tj3(rs1.getString(7));
						ht.setYh_wq(rs1.getString(8));
						ht.setYh_fx(rs1.getString(9));
						ht.setYh_al(rs1.getString(10));
						ht.setYh_fg(rs1.getString(11));
					}
				}
				System.out.println("+++++++++");
				details.add(ht);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return details;
	}

	public Map<String, Object> listHtKu(int start, int limit, String gjc,
			String htlx,String yaodian, String gslx,String companyName,String usertype,String alsousuo)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getHtCount(gjc,htlx,yaodian,gslx,companyName,usertype,alsousuo));
		result.put("list", this.listHt(start, limit, gjc,htlx,yaodian,gslx,companyName,usertype,alsousuo));
		return result;
	}

	public List<Node> listNode(String type)
	{
		List<Node> nodeList = new ArrayList<Node>();
		String sql = "SELECT * FROM jiliantable WHERE type LIKE ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, "%"+type+"%");
			rs = ps.executeQuery();
			while(rs.next()){
				Node node = new Node();
				
				node.setId(rs.getInt(1));
				node.setYijinode(rs.getString(2));
				node.setErjinode(rs.getString(3));
				node.setType(rs.getString(4));
				
				nodeList.add(node);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return nodeList;
	}
	
	/*public static void main(String[] args)
	{
		HtDAOImpl t = new HtDAOImpl();
		List<Node> list = t.listNode("合同");
		for(int i=0;i<list.size();i++)
		System.out.println(list.get(i).getId());
	}*/
}
