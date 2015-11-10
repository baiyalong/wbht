package com.tridiots.utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.alibaba.druid.pool.DruidDataSource;

public class DruidConn {
	static Logger logger = Logger.getLogger(DruidConn.class);
	//声明线程共享变量
	public static ThreadLocal<Connection> container = new ThreadLocal<Connection>();
	
	private static String DB_DRIVER="com.mysql.jdbc.Driver";
	private static String DB_USER = "root";
	//private static String DB_PASSWORD = "9ce9023d80";
	//private static String DB_URL = "JDBC:mysql://123.56.84.27:3306/wbht";
	private static String DB_PASSWORD = "root";
	private static String DB_URL = "jdbc:mysql://localhost:3306/wbht";
	
	private static DruidDataSource dataSource = new DruidDataSource();
	//配置说明，参考官方网址
	//http://blog.163.com/hongwei_benbear/blog/static/1183952912013518405588/
	static{
		
		dataSource.setUrl(DB_URL+"?useUnicode=true&characterEncoding=utf-8");
		dataSource.setUsername(DB_USER);
		dataSource.setPassword(DB_PASSWORD);
		dataSource.setInitialSize(2);
		dataSource.setMaxActive(20);
		dataSource.setMinIdle(0);
        dataSource.setMaxWait(60000);
        dataSource.setValidationQuery("SELECT 1");
        dataSource.setTestOnBorrow(false);
        dataSource.setTestWhileIdle(true);
        dataSource.setPoolPreparedStatements(false);
	}
	
	/**
     * 获取数据连接
     * @return
     */
	public static Connection getConnection(){
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
			logger.info(Thread.currentThread().getName()+"连接已开启。。。");
			container.set(conn);
		} catch (SQLException e) {
			logger.info("连接获取失败!");
			e.printStackTrace();
		}
		return conn;
	}
	
	/**
	 *开启事务
	 */
	public static void startTransaction(){
		Connection conn = container.get();//首先获取当前线程的连接
		if(conn == null){//如果连接为空
			conn = getConnection();
			logger.info(Thread.currentThread().getName()+"空连接从dataSource获取连接");
		}else{
			logger.info(Thread.currentThread().getName()+"从缓存中获得连接");
		}
		try {
			conn.setAutoCommit(false);//开启事务
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 提交事务
	 */
	public static void commit(){
		Connection conn = container.get();
		if(conn != null){
			try {
				conn.commit();
				logger.info(Thread.currentThread().getName()+"事务已经提交......");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 回滚事务
	 */
	public static void rollback(){
		Connection conn = container.get();
		if(conn != null){
			try {
				conn.rollback();
				container.remove();//如果回滚了，就移除这个连接
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(){
		Connection conn = container.get();
		if(conn != null){
			try {
				conn.close();
				logger.info(Thread.currentThread().getName()+"连接关闭");
			}catch(SQLException e){
	            throw new RuntimeException(e.getMessage(),e);
	        }finally{
	            try {
	                container.remove();//从当前线程移除连接切记
	            } catch (Exception e2) {
	                e2.printStackTrace();
	            }
	        }
		}
	}
	
	/**
	 * 测试连接池
	 */
	public static void main(String[] args) {
		try {
			Connection conn = DruidConn.getConnection();
	        PreparedStatement ps = conn.prepareStatement("SELECT 1");
			ResultSet rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        DruidConn.close();
      //update,insert,delete操作
        Connection conn2 = DruidConn.getConnection();
        //开启事务1
        DruidConn.startTransaction();
        logger.info("执行事务操作111111111111111....");
        DruidConn.commit();
        //开启事务2
        DruidConn.startTransaction();
        logger.info("执行事务操作222222222222....");
        DruidConn.commit();
        DruidConn.close();
        for (int i = 0; i < 2; i++) {
            new Thread(new Runnable() {
 
                public void run() {
                    Connection conn2 = DruidConn.getConnection();
                    for (int i = 0; i < 2; i++) {
                    	DruidConn.startTransaction();
                        logger.info(conn2);
                        logger.info(Thread.currentThread().getName()+"执行事务操作。。。。。。。。。。。。。");
                        DruidConn.commit();
                    }
                    DruidConn.close();
                }
            }).start();
        }
         
	}
}
