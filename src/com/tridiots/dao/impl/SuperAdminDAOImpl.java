package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import java.sql.Connection;
import com.tridiots.dao.SuperAdminDAO;
import com.tridiots.domain.Node;
import com.tridiots.domain.User;
import com.tridiots.utils.DBConn;
import com.tridiots.utils.DruidConn;

public class SuperAdminDAOImpl implements SuperAdminDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;

	public boolean deleteYgx(String acountnumber)
	{
		String sql = "";
		sql = "DELETE FROM `user` WHERE acountnumber='"+acountnumber+"'";
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			
			ps=conn.prepareStatement(sql);
			int num = ps.executeUpdate();
			System.out.println(sql);
			if(num>0){
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
	//////////////////////////////////////
	public boolean deleteYg(String acountnumber,String usertype,String createby)
	{
		String sql = "";
		if(usertype.equals("worker"))
		{
			sql = "DELETE FROM `user` WHERE acountnumber='"+acountnumber+"'";
		}
		else{
			sql = "DELETE FROM `user` WHERE acountnumber='"+acountnumber+"' OR createby='"+acountnumber+"'";
		}
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			
			ps=conn.prepareStatement(sql);
			int num = ps.executeUpdate();
			System.out.println(sql);
			if(num>0){
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
	//////////////////////////////////////
	public boolean deleteJilian(int id)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			String sql = "DELETE FROM jiliantable WHERE id=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int num = ps.executeUpdate();
			System.out.println("shanchu"+id);
			if(num==1){
				System.out.println("shanchu---2-->"+id);
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
	
	public boolean updateJilianById(String yiji,String erji,String type,int id)
	{
		String sql = "UPDATE jiliantable SET yijinode=?,erjinode=?,type=? WHERE id=?";
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
  		    ps.setString(1,yiji); 
  		    ps.setString(2,erji); 
  		    ps.setString(3,type); 
  		    ps.setInt(4,id); 

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
	
	public boolean updateLimitNumberById(int limitnumber,int id)
	{
		String sql = "UPDATE `user` SET limitnumber=? WHERE id=?";
		try{
			////////////////////////////////
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(sql);
			
  		    ps.setInt(1,limitnumber); 
  		    ps.setInt(2,id); 

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
	
	public boolean isRepeatJilian(String yijiData)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement("SELECT yijinode FROM jiliantable WHERE yijinode = ?;");
			ps.setString(1, yijiData);
			
			rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
			return false;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return false;
	}
	
	public boolean isRepeatCompany(String companyName)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement("SELECT companyname FROM `user` WHERE companyname = ?;");
			ps.setString(1, companyName);
			
			rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
			return false;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
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

	public boolean isRepeatAdminAcount(String adminAccount)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement("SELECT acountnumber FROM `user` WHERE acountnumber = ?;");
			ps.setString(1, adminAccount);
			
			rs = ps.executeQuery();
			if(rs.next()){
				return true;
			}
			return false;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return false;
	}

	public boolean addJilian(Node node)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"INSERT INTO jiliantable(yijinode,erjinode,type) VALUES(?,?,?);");
			ps.setString(1, node.getYijinode());  
			ps.setString(2, node.getErjinode());  
			ps.setString(3, node.getType());  
			
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


	public boolean addAdmin(User user)
	{
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement(
					"INSERT INTO user(acountnumber,username,password," +
					"usertype,companyname,companytype,position," +
					"createtime,limitnumber,createby) VALUES(?,?,?,?,?,?,?,NOW(),?,?);");
			ps.setString(1, user.getAcountnumber());  
			ps.setString(2, user.getUsername());  
			ps.setString(3, user.getPassword());  
			ps.setString(4, user.getUsertype());  
			ps.setString(5, user.getCompanyname());  
			ps.setString(6, user.getCompanytype());  
			ps.setString(7, user.getPosition());  
			ps.setString(9, user.getCreateby());  
			  
			ps.setInt(8, user.getLimitnumber());  
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

	/////////////////////////////////////
	public List<Node> getAllJilian(int start, int limit)
	{
		List<Node> jilians = new ArrayList<Node>();
		String sql = "SELECT yijinode,erjinode,type,id FROM jiliantable LIMIT ?,?";
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			
			while(rs.next()){
				
				Node admin = new Node();
				
				admin.setYijinode(rs.getString(1));
				admin.setErjinode(rs.getString(2));
				admin.setType(rs.getString(3));
				admin.setId(rs.getInt(4));
				
				jilians.add(admin);
				//System.out.println("dao-->"+anli.getCasetitle());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		
		return jilians;
	}
	
	public int getAllJilianCount()
	{
		String sql = "SELECT COUNT(*) FROM jiliantable";
		
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
	public Map<String, Object> listAllJilianKu(int start, int limit)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getAllJilianCount());
		result.put("list", this.getAllJilian(start, limit));
		
		return result;
	}
	//////////////////////////////////////
	
	public List<User> getAllAdmin(int start, int limit)
	{
		List<User> admins = new ArrayList<User>();
		String sql = "SELECT * FROM `user` ORDER BY companyname LIMIT ?,?";
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			//ps.setString(1, usertype);
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			
			while(rs.next()){
				
				User admin = new User();
				
				admin.setId(rs.getInt(1));
				admin.setAcountnumber(rs.getString(2));
				admin.setUsername(rs.getString(3));
				admin.setUsertype(rs.getString(5));
				admin.setCompanyname(rs.getString(6));
				admin.setLimitnumber(rs.getInt(10));
				admin.setCreateby(rs.getString(12));
				
				admins.add(admin);
				//System.out.println("dao-->"+anli.getCasetitle());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		
		return admins;
	}

	public int getAdminCount()
	{
		//String sql = "SELECT COUNT(*) FROM `user` WHERE usertype=?";
		String sql = "SELECT COUNT(*) FROM `user`";
		
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

	public Map<String, Object> listAllAdminKu(int start, int limit)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getAdminCount());
		result.put("list", this.getAllAdmin(start, limit));
		
		return result;
	}
	//////////////////////////////////////////////////////
	public List<User> getAllWorker(int start, int limit,String zh)
	{
		List<User> admins = new ArrayList<User>();
		String sql = "SELECT * FROM `user` WHERE acountnumber='"+zh+"' OR createby='"+zh+"' ORDER BY companyname LIMIT ?,?";
		
		try{
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement(sql);
			
			//ps.setString(1, usertype);
			ps.setInt(1, start);
			ps.setInt(2, limit);
			rs = ps.executeQuery();
			
			while(rs.next()){
				
				User admin = new User();
				
				admin.setId(rs.getInt(1));
				admin.setAcountnumber(rs.getString(2));
				admin.setUsername(rs.getString(3));
				admin.setUsertype(rs.getString(5));
				admin.setCompanyname(rs.getString(6));
				admin.setLimitnumber(rs.getInt(10));
				admin.setCreateby(rs.getString(12));
				
				admins.add(admin);
				//System.out.println("dao-->"+anli.getCasetitle());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		
		return admins;
	}

	public int getWorkerCount(String zh)
	{
		//String sql = "SELECT COUNT(*) FROM `user` WHERE usertype=?";
		String sql = "SELECT COUNT(*) FROM `user` WHERE acountnumber='"+zh+"' OR createby='"+zh+"'";
		
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

	public Map<String, Object> listAllWorkerKu(int start, int limit,String zh)
	{
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("sum", this.getWorkerCount(zh));
		result.put("list", this.getAllWorker(start, limit,zh));
		
		return result;
	}
	
	///////////////////////////////////////////////
}
