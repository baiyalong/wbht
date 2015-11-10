package com.tridiots.listener;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class Log4jInit implements ServletContextListener{
	
	Logger log = Logger.getLogger(Log4jInit.class);
	
	public void contextDestroyed(ServletContextEvent sce) {
		log.info("Log4jInit contextDestroyed!");
	}

	public void contextInitialized(ServletContextEvent sce) {
		
		//得到servletContext对象的方法
		ServletContext sc = sce.getServletContext();
		//指明文件的相对路径就能够得到文件的绝对路径
		//System.out.println(sc.getRealPath("/"));
		String path = sc.getRealPath("/WEB-INF/log4j.properties");
		
		//启动服务器的时候加载日志的配置文件
		init(path,sc);
		log.info("log4j");
	}
	
	
	/**
	 * 
	 * @param path 配置文件的路径
	 * @param sc ServletContext对象
	 */
	public void init(String path,ServletContext sc){
		FileInputStream istream = null;
		try{
			Properties props = new Properties();
			//加载配置文件
			istream = new FileInputStream(path);
			//props.remove("log4j.appender.file.File");
			//指明log文件的位置
			//props.put("log4j.appender.file.File", sc.getRealPath("/hb.log"));
			//加载文件流，加载Log4j文件的配置文件信息
			props.load(istream);
			PropertyConfigurator.configure(props);
		} catch (Exception ex){
			try {
				throw new Exception(ex);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} finally{
			try {
				istream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
}