package com.tridiots.servlet.superAdmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.SuperAdminDAO;
import com.tridiots.dao.impl.SuperAdminDAOImpl;

public class IsRepeateJilianServlet extends HttpServlet
{
	private static final long serialVersionUID = -8285500042643561618L;
	private SuperAdminDAO superAdminDao = new SuperAdminDAOImpl();
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String yijiData = request.getParameter("yijiData");
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isRepeateJilian", this.superAdminDao.isRepeatJilian(yijiData));
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(result).toString());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				out.close();
			}
		}
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}

	public SuperAdminDAO getSuperAdminDao()
	{
		return superAdminDao;
	}

	public void setSuperAdminDao(SuperAdminDAO superAdminDao)
	{
		this.superAdminDao = superAdminDao;
	}
}
