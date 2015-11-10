package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import com.tridiots.dao.AnliDAO;
import com.tridiots.domain.AnliKu;
import com.tridiots.utils.DBConn;
import com.tridiots.utils.DruidConn;

public class AnliDAOImpl implements AnliDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;

	public AnliKu findAnliContentByTitle(String title)
	{
		AnliKu al = new AnliKu();
		String sql = "SELECT casecontent FROM alk WHERE casetitle = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, title);
			rs = ps.executeQuery();
			if(rs.next()){
				al.setCasecontent(rs.getString(1));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return al;
	}
	
	public AnliKu findAnliById(int id)
	{
		AnliKu ht = new AnliKu();
		String sql = "SELECT * FROM alk WHERE id = ?";
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if(rs.next()){
				
				//String id = rs.getString(1);
				
				ht.setId(id);
				ht.setCasetitle(rs.getString(2));
				ht.setCasecontent(rs.getString(3));
				ht.setKeyword(rs.getString(4));
				
				ht.setTaxtype(rs.getString(5));
				ht.setArea(rs.getString(6));
				ht.setNote(rs.getString(7));
				ht.setGonghao(rs.getString(8));
				System.out.println("rs.getString(6)"+rs.getString(6));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return ht;
	}
	
	public boolean eDitAlk(AnliKu ht)
	{
		String sql = "UPDATE alk SET casetitle=?,casecontent=?,keyword=?,taxtype=?," +
				"area=?,note=? WHERE id=?";
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, ht.getCasetitle());  
			ps.setString(2, ht.getCasecontent());  
			ps.setString(3, ht.getKeyword());  
			ps.setString(4, ht.getTaxtype());  
			ps.setString(5, ht.getArea());  
			ps.setString(6, ht.getNote());  
  		    ps.setInt(7, ht.getId()); 

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
	
	public boolean addAnli(AnliKu anli)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"INSERT INTO alk(casetitle,casecontent,keyword," +
					"taxtype,area,note," +
					"gonghao,companyName,usertype) VALUES(?,?,?,?,?,?,?,?,?);");
			ps.setString(1, anli.getCasetitle());  
			ps.setString(2, anli.getCasecontent());  
			ps.setString(3, anli.getKeyword());  
			ps.setString(4, anli.getTaxtype());  
			ps.setString(5, anli.getArea());  
			ps.setString(6, anli.getNote());  
			ps.setString(7, anli.getGonghao()); 
			ps.setString(8, anli.getCompanyName()); 
			ps.setString(9, anli.getUsertype());
			  
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
	
	
	public boolean deleteAnli(int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			String sql = "DELETE FROM alk WHERE id=?";
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
	
	public void updateAnliById(String title, String anli, String gjc,
			String sz, String sydq, String bz, int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"UPDATE alk SET casetitle=?,casecontent=?,keyword=?,taxtype=?,area=?,note=? WHERE id=?");
			  
			ps.setString(1, title);  
			ps.setString(2, anli);  
			ps.setString(3, gjc); 
			ps.setString(4, sz);  
			ps.setString(5, sydq);  
			ps.setString(6, bz);  
			
			ps.setInt(7, id);
			  
			ps.executeUpdate();	
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
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

	
	
	//////////////////////////////列出搜索案例开始////////////////////////
	public List<AnliKu> listSousuoAnli(int start, int limit,String gjc_sousuo, String sz_sousuo,String companyName,String usertype)
	{
		List<AnliKu> allAnli = new ArrayList<AnliKu>();
		String sql = "";
		
		if(gjc_sousuo==""||gjc_sousuo==null)
		{
			if(sz_sousuo==""||sz_sousuo==null||sz_sousuo.equals("null"))
			{
				if(usertype.equals("superadmin"))
					sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
							"LIMIT ?,?;";
				else
					sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
							"WHERE companyName = '"+companyName+"' OR usertype='superadmin' LIMIT ?,?;";
			}
			else
			{
				String szArray[] = sz_sousuo.split(",");
				StringBuffer sb = new StringBuffer();
				
				if(sz_sousuo.contains("增值税")&&!sz_sousuo.contains("土地增值税"))
				{
					System.out.println("shuchu");
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") OR ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") OR ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" Or ");
						}
						else
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" ");
							
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
					
				}
				else
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
						else
						{
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
				}
				String szZz = sb.toString();
				sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
						"WHERE "+szZz+" LIMIT ?,?;";
				
				/*sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao FROM alk " +
					"WHERE taxtype = '"+sz_sousuo+"' LIMIT ?,?;";*/
			}
		}
		else
		{
			if(sz_sousuo==""||sz_sousuo==null||sz_sousuo.equals("null"))
			{
				if(usertype.equals("superadmin"))
					sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" LIMIT ?,?;";
				else
					sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
							"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" AND (companyName = '"+companyName+"' OR usertype='superadmin') LIMIT ?,?;";
			}
			else
			{

				String szArray[] = sz_sousuo.split(",");
				StringBuffer sb = new StringBuffer();
				
				if(sz_sousuo.contains("增值税")&&!sz_sousuo.contains("土地增值税"))
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") OR ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") OR ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" Or ");
						}
						else
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") OR ");
							else
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" ");
							
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
					
				}
				else
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
						else
						{
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
				}
				String szZz = sb.toString();
				sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao,companyName,usertype FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" AND "+szZz+" LIMIT ?,?;";
				
				/*sql = "SELECT id,casetitle,casecontent,keyword,taxtype,area,note,gonghao FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"' LIMIT ?,?;";*/
			}
		}
		
		System.out.println(sql+"-->before");
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			System.out.println(sql);
			while(rs.next()){
				
				AnliKu anli = new AnliKu();
				
				anli.setId(rs.getInt(1));
				anli.setCasetitle(rs.getString(2));
				anli.setCasecontent(rs.getString(3));
				anli.setKeyword(rs.getString(4));
				anli.setTaxtype(rs.getString(5));
				anli.setArea(rs.getString(6));
				anli.setNote(rs.getString(7));
				anli.setGonghao(rs.getString(8));
				anli.setCompanyName(rs.getString(9));
				anli.setUsertype(rs.getString(10));
				
				allAnli.add(anli);
				//System.out.println("dao-->"+anli.getCasetitle());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		
		return allAnli;
	}

	public int getAnliSousuoCount(String gjc_sousuo, String sz_sousuo,String companyName,String usertype)
	{
		String sql = "";
		
		if(gjc_sousuo==""||gjc_sousuo==null)
		{
			if(sz_sousuo==""||sz_sousuo==null||sz_sousuo.equals("null"))
			{
				if(usertype.equals("superadmin"))
					sql = "SELECT COUNT(*) FROM alk;";
				else
					sql = "SELECT COUNT(*) FROM alk WHERE companyName = '"+companyName+"' OR usertype='superadmin';";
			}
			else
			{

				String szArray[] = sz_sousuo.split(",");
				StringBuffer sb = new StringBuffer();
				
				if(sz_sousuo.contains("增值税")&&!sz_sousuo.contains("土地增值税"))
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") OR ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") OR ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" Or ");
						}
						else
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" ");
							
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
					
				}
				else
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
						else
						{
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
				}
				String szZz = sb.toString();
				sql = "SELECT COUNT(*) FROM alk " +
						"WHERE "+szZz+";";
				
				/*sql = "SELECT COUNT(*) FROM alk " +
					"WHERE taxtype = '"+sz_sousuo+"'";*/
			}
		}
		else//关键词不为空
		{
			if(sz_sousuo==""||sz_sousuo==null||sz_sousuo.equals("null"))
			{
				if(usertype.equals("superadmin"))
					sql = "SELECT COUNT(*) FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\"";
				else
					sql = "SELECT COUNT(*) FROM alk " +
							"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\"  AND (companyName = '"+companyName+"' OR usertype='superadmin')";
			}
			else
			{
				String szArray[] = sz_sousuo.split(",");
				StringBuffer sb = new StringBuffer();
				
				if(sz_sousuo.contains("增值税")&&!sz_sousuo.contains("土地增值税"))
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") OR ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") OR ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" Or ");
						}
						else
						{
							if(szArray[i].equals("增值税"))
								//sb.append(" (taxtype LIKE \"%"+szArray[i]+"%\" AND taxtype NOT LIKE \"%土地增值税%\") ");
								sb.append(" (taxtype LIKE \""+szArray[i]+"%\") ");
							else
								//sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
								sb.append(" taxtype LIKE \""+szArray[i]+"%\" ");
							
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
					
				}
				else
				{
					for(int i=0;i<szArray.length;i++)
					{	//title LIKE \"%"+gjc+"%\"
						if(i<szArray.length-1)
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" Or ");
						else
						{
							sb.append(" taxtype LIKE \"%"+szArray[i]+"%\" ");
							if(!usertype.equals("superadmin"))
								sb.append("  AND (companyName = '"+companyName+"' OR usertype='superadmin') ");
						}
					}
				}
				String szZz = sb.toString();
				sql = "SELECT COUNT(*) FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" AND "+szZz+" ";
			
				/*sql = "SELECT COUNT(*) FROM alk " +
						"WHERE casetitle LIKE \"%"+gjc_sousuo+"%\" AND taxtype = '"+sz_sousuo+"'";*/
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

	public Map<String, Object> listSousuoAnliKu(int start, int limit,
			String gjc_sousuo, String sz_sousuo,String companyName,String usertype)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getAnliSousuoCount(gjc_sousuo,sz_sousuo,companyName,usertype));
		result.put("list", this.listSousuoAnli(start, limit, gjc_sousuo, sz_sousuo,companyName,usertype));
		
		return result;
	}
	////////////////////////列出搜索案例结束//////////////////////////
	/*public static void main(String[] args)
	{
		AnliDAOImpl fadao = new AnliDAOImpl();
		int fas = fadao.getAnliSousuoCount(null, "增值税");
		
		System.out.println(fas+"-->");
	}*/
}
