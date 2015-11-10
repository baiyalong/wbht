package com.tridiots.servlet.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.AdminDAO;
import com.tridiots.dao.impl.AdminDAOImpl;
import com.tridiots.domain.User;

public class AddWorkerServlet extends HttpServlet
{
	private static final long serialVersionUID = -2753627374219898347L;
	private AdminDAO adminDao = new AdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String companyName = request.getParameter("companyName");
		String companyType = request.getParameter("companyType");
		String workerAcount = request.getParameter("workerAcount");
		String workerName = request.getParameter("workerName");
		String workerPassword = request.getParameter("workerPassword");
		String position = request.getParameter("position");
		String zh = request.getParameter("zh");
		User user = new User();
		user.setAcountnumber(workerAcount);
		user.setUsername(workerName);
		user.setCompanyname(companyName);
		user.setCompanytype(companyType);
		user.setPassword(workerPassword);
		user.setPosition(position);
		user.setUsertype("worker");
		user.setCreateby(zh);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddWorkerSuccess", this.adminDao.addWorker(user,zh));
		
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

	public AdminDAO getAdminDao()
	{
		return adminDao;
	}

	public void setAdminDao(AdminDAO adminDao)
	{
		this.adminDao = adminDao;
	}

}
