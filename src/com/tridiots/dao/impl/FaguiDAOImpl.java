package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import com.tridiots.dao.FaguiDAO;
import com.tridiots.domain.FaGuiKu;
import com.tridiots.utils.DBConn;
import com.tridiots.utils.DruidConn;

public class FaguiDAOImpl implements FaguiDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	public FaGuiKu findFgtwByTitle(String tw)
	{
		FaGuiKu al = new FaGuiKu();
		String sql = "SELECT fgtw FROM fgk WHERE fgnumber = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, tw);
			rs = ps.executeQuery();
			if(rs.next()){
				al.setFgtw(rs.getString(1));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return al;
	}

	
	public FaGuiKu findFaguiById(int id)
	{
		FaGuiKu ht = new FaGuiKu();
		String sql = "SELECT * FROM fgk WHERE id = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				
				//String id = rs.getString(1);
				
				ht.setId(id);
				ht.setFgnumber(rs.getString(2));
				ht.setFgtw(rs.getString(3));
				ht.setKeyword(rs.getString(4));
				
				ht.setTaxtype(rs.getString(5));
				ht.setArea(rs.getString(6));
				ht.setContent(rs.getString(7));
				ht.setNote(rs.getString(8));
				ht.setGonghao(rs.getString(9));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return ht;
	}
	
	public boolean eDitFagui(FaGuiKu ht)
	{
		String sql = "UPDATE fgk SET fgnumber=?,fgtw=?,keyword=?,taxtype=?," +
				"area=?,content=?,note=? WHERE id=?";
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, ht.getFgnumber());  
			ps.setString(2, ht.getFgtw());  
			ps.setString(3, ht.getKeyword());  
			ps.setString(4, ht.getTaxtype());  
			ps.setString(5, ht.getArea());  
			ps.setString(6, ht.getContent()); 
			System.out.println(ht.getContent()+"-->DAO");
			ps.setString(7, ht.getNote());  
  		    ps.setInt(8, ht.getId()); 

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
	
	public List<FaGuiKu> listAllFagui(int start, int limit,String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype)
	{
		String sql = "";
		
		if(gjc_sousuo==""||gjc_sousuo==null)
		{
			if(sz_sousuo==""||sz_sousuo==null)
			{
				if(fgwh_sousuo==""||fgwh_sousuo==null) //关键词、税种、法规文号都为空
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype " +
								"FROM fgk LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype " +
								"FROM fgk WHERE companyName = '"+companyName+"' OR usertype='superadmin' LIMIT ?,?;";
				}
				else{	//关键词、税种为空，法规文号不为空
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgnumber LIKE \"%"+fgwh_sousuo+"%\" LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin') LIMIT ?,?;";
				}
			}
			else{
				if(fgwh_sousuo==""||fgwh_sousuo==null) //税种不为空，关键词、法规文号为空
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
				else{ //税种、法规文号不为空，关键词为空
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
			}
		}
		else
		{
			if(sz_sousuo==""||sz_sousuo==null)
			{
				if(fgwh_sousuo==""||fgwh_sousuo==null)
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
				else{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
			}
			else{
				if(fgwh_sousuo==""||fgwh_sousuo==null)
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
				else{
					if(usertype.equals("superadmin"))
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" LIMIT ?,?;";
					else
						sql = "SELECT id,fgnumber,fgtw,keyword,area,content,note,taxtype,gonghao,companyName,usertype FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')  LIMIT ?,?;";
				}
			}
		}
		List<FaGuiKu> allFagui = new ArrayList<FaGuiKu>();
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			while(rs.next()){
				
				FaGuiKu fagui = new FaGuiKu();
				
				fagui.setId(rs.getInt(1));
				fagui.setFgnumber(rs.getString(2));
				fagui.setFgtw(rs.getString(3));
				fagui.setKeyword(rs.getString(4));
				fagui.setArea(rs.getString(5));
				fagui.setContent(rs.getString(6));
				fagui.setNote(rs.getString(7));
				fagui.setTaxtype(rs.getString(8));
				fagui.setGonghao(rs.getString(9));
				fagui.setCompanyName(rs.getString(10));
				fagui.setUsertype(rs.getString(11));
				
				allFagui.add(fagui);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return allFagui;
	}
	
	
	
	public Map<String, Object> listAllFaguiKu(int start, int limit,String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype)
	{
		/*List<Kdxx> allKdxxForDay = this.kdxxDao.getAllKdxxByDay(dateforall);
		return allKdxxForDay;*/
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getFaguiCount(gjc_sousuo,sz_sousuo,fgwh_sousuo,companyName,usertype));
		result.put("list", this.listAllFagui(start, limit, gjc_sousuo,sz_sousuo,fgwh_sousuo,companyName,usertype));
		return result;
	}
	
	
	public int getFaguiCount(String gjc_sousuo,String sz_sousuo,String fgwh_sousuo,String companyName,String usertype)
	{
		String sql = "";
		
		if(gjc_sousuo==""||gjc_sousuo==null)
		{
			if(sz_sousuo==""||sz_sousuo==null)
			{
				if(fgwh_sousuo==""||fgwh_sousuo==null) //关键词、税种、法规文号都为空
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk";
					else
						sql = "SELECT COUNT(*) FROM fgk WHERE (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
				else{	//关键词、税种为空，法规文号不为空
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgnumber LIKE \"%"+fgwh_sousuo+"%\"";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
			}
			else{
				if(fgwh_sousuo==""||fgwh_sousuo==null) //税种不为空，关键词、法规文号为空
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"'";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
				else{ //税种、法规文号不为空，关键词为空
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\"";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
			}
		}
		else
		{
			if(sz_sousuo==""||sz_sousuo==null)
			{
				if(fgwh_sousuo==""||fgwh_sousuo==null)
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\"";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
				else{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND fgnumber LIKE \"%"+fgwh_sousuo+"%\"";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
			}
			else{
				if(fgwh_sousuo==""||fgwh_sousuo==null)
				{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"'";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND (companyName = '"+companyName+"' OR usertype='superadmin')";
				}
				else{
					if(usertype.equals("superadmin"))
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\"";
					else
						sql = "SELECT COUNT(*) FROM fgk " +
								"WHERE fgtw LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' AND fgnumber LIKE \"%"+fgwh_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin')";
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
	
	public boolean addFagui(FaGuiKu fagui)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"INSERT INTO fgk(fgnumber,fgtw,keyword," +
					"taxtype,area,content,note," +
					"gonghao,companyName,usertype) VALUES(?,?,?,?,?,?,?,?,?,?);");
			ps.setString(1, fagui.getFgnumber());  
			ps.setString(2, fagui.getFgtw());  
			ps.setString(3, fagui.getKeyword());  
			ps.setString(4, fagui.getTaxtype());  
			ps.setString(5, fagui.getArea());  
			ps.setString(6, fagui.getContent());  
			ps.setString(7, fagui.getNote());  
			ps.setString(8, fagui.getGonghao()); 
			ps.setString(9, fagui.getCompanyName()); 
			ps.setString(10, fagui.getUsertype()); 
			  
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
	

	public void close(){
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

	public boolean deleteFagui(int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			String sql = "DELETE FROM fgk WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int num = ps.executeUpdate();
			System.out.println(num);
			if(num==1){
				//删除成功
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
	
	public void updateFaguiById(String wh, String tw, String qw, String sydq,String sz, String gjc, String bz,  int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"UPDATE fgk SET fgnumber=?,fgtw=?,content=?,area=?,taxtype=?,keyword=?,note=? WHERE id=?");
			  
			ps.setString(1, wh);  
			ps.setString(2, tw);  
			ps.setString(3, qw); 
			ps.setString(4, sydq);  
			ps.setString(5, sz);  
			ps.setString(6, gjc);  
			ps.setString(7, bz);  
			
			ps.setInt(8, id);
			  
			ps.executeUpdate();	
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
	}
	/*public static void main(String[] args)
	{
		FaguiDAOImpl fadao = new FaguiDAOImpl();
		List<FaGuiKu> fas = fadao.listAllFagui(0, 3, null, "s7", "穗地税函[2010]170号") ;
		for(FaGuiKu fa: fas)
		{
			System.out.println(fa.getFgnumber());
		}
		
	}*/
}
