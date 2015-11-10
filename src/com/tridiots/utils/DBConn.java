package com.tridiots.utils;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBConn {
	private static String DB_DRIVER="com.mysql.jdbc.Driver";
	private static String DB_USER = "root";
	//private static String DB_PASSWORD = "9ce9023d80";
	//private static String DB_URL = "JDBC:mysql://123.56.84.27:3306/wbht";
	private static String DB_PASSWORD = "root";
	private static String DB_URL = "JDBC:mysql://localhost:3306/wbht";
	
	private Connection conn = null;
	
	public Connection getConn(){
		try{
			Class.forName(DB_DRIVER);  
			conn=(Connection)DriverManager.getConnection(DB_URL+"?user="+DB_USER+"&password="+DB_PASSWORD+"&useUnicode=true&characterEncoding=utf-8");
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
}