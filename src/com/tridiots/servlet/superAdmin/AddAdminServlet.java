package com.tridiots.servlet.superAdmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.math.RandomUtils;

import net.sf.json.JSONObject;

import com.tridiots.dao.SuperAdminDAO;
import com.tridiots.dao.impl.SuperAdminDAOImpl;
import com.tridiots.domain.User;
import com.tridiots.utils.Encrypt;

public class AddAdminServlet extends HttpServlet
{
	private static final long serialVersionUID = -884651823580714177L;
	private SuperAdminDAO superAdminDao = new SuperAdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String companyName = request.getParameter("companyName");
		String companyType = request.getParameter("companyType");
		String adminAcount = request.getParameter("adminAcount");
		String adminPassword = request.getParameter("adminPassword");
		String workerNumber = request.getParameter("workerNumber");
		String adminName = request.getParameter("adminName");
		String createby = request.getParameter("createby");
		
		User user = new User();
		user.setAcountnumber(adminAcount);
		user.setUsername(adminName);
		user.setCompanyname(companyName);
		user.setCompanytype(companyType);
		user.setPassword(Encrypt.pwd(adminPassword));
		user.setLimitnumber(Integer.parseInt(workerNumber));
		user.setUsertype("admin");
		user.setCreateby(createby);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddAdminSuccess", this.superAdminDao.addAdmin(user));
		
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
