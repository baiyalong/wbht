package com.tridiots.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.Connection;
import com.tridiots.dao.AdminDAO;
import com.tridiots.domain.User;
import com.tridiots.utils.DruidConn;
import com.tridiots.vo.NumVO;

public class AdminDAOImpl implements AdminDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private PreparedStatement ps1=null;
	private ResultSet rs=null;
	
	public boolean isRepeateWorkerAccount(String workerAccount)
	{
		try{
			
			conn=(Connection) DruidConn.getConnection();
			ps=conn.prepareStatement("SELECT acountnumber FROM `user` WHERE acountnumber = ?;");
			ps.setString(1, workerAccount);
			
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
	
	public NumVO findNum(String zh)
	{
		NumVO numVo = new NumVO();
		
		try{
			conn=(Connection) DruidConn.getConnection();
			
			ps=conn.prepareStatement("SELECT limitnumber,nowNum FROM `user` WHERE acountnumber = ?;");
			ps.setString(1, zh);
			
			rs = ps.executeQuery();
			if(rs.next()){
				int limitnum = Integer.parseInt(rs.getString(1));
				int nownum = Integer.parseInt(rs.getString(2));
				
				numVo.setLimitnum(limitnum);
				numVo.setNownum(nownum);
				
				return numVo;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return null;
	}
	
	public boolean addWorker(User user,String zh)
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
			ps.setInt(8, user.getLimitnumber());  
			ps.setString(9, zh);
			if( ps.executeUpdate()==1)
			{
				System.out.println(zh+"9999");
				ps1=conn.prepareStatement("UPDATE `user` SET nowNum = nowNum+1  WHERE acountnumber = ?;");
				ps1.setString(1, zh);
				if( ps1.executeUpdate()==1)
				{
					System.out.println(zh+"00009999");
					return true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
			DruidConn.commit();
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

}
