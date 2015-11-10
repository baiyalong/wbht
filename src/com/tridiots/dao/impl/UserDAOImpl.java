package com.tridiots.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.tridiots.dao.UserDAO;
import com.tridiots.domain.User;
import com.tridiots.utils.DruidConn;
import com.tridiots.utils.Encrypt;
import com.tridiots.vo.UserVO;

public class UserDAOImpl implements UserDAO
{
	private Connection conn = null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	public UserVO findLogin(User user)
	{
		UserVO userVo = new UserVO();
		
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement("SELECT id,username,password, usertype,companyname,companytype,acountnumber,limitnumber,nowNum FROM `user` WHERE acountnumber = ? AND password = ?;");
			ps.setString(1, user.getAcountnumber());
			//ps.setString(2, user.getPassword());
			ps.setString(2, Encrypt.pwd(user.getPassword()));
			System.out.println(Encrypt.pwd(user.getPassword()));
			rs = ps.executeQuery();
			if(rs.next()){
				int id = Integer.parseInt(rs.getString(1));
				String username = rs.getString(2);
				String password = rs.getString(3);
				String usertype = rs.getString(4);
				String companyname = rs.getString(5);
				String companytype = rs.getString(6);
				String acountnumber = rs.getString(7);
				int limitnumber = rs.getInt(8);
				int nowNum = rs.getInt(9);
				
				userVo.setId(id);
				userVo.setUsername(username);
				userVo.setPassword(password);
				userVo.setUsertype(usertype);
				userVo.setCompanyName(companyname);
				userVo.setCompanyType(companytype);
				userVo.setAcountnumber(acountnumber);
				userVo.setLimitnumber(limitnumber);
				userVo.setNowNum(nowNum);
				
				return userVo;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return null;
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

	
	public boolean updatePassById(int id, String newPass)
	{
		boolean isUpdatePassSuccess = false;
		try{
			conn=(Connection) DruidConn.getConnection();
			DruidConn.startTransaction();
			ps=conn.prepareStatement("UPDATE `user` SET `password` = ? WHERE id = ?;");
			
			ps.setString(1, Encrypt.pwd(newPass));  
			ps.setInt(2, id);  
			 
			if(ps.executeUpdate()==1){
				isUpdatePassSuccess = true;
			}	
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DruidConn.commit();
			close();
		}
		return isUpdatePassSuccess;
	}
}
