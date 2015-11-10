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

public class IsRepeateWorkerAcountServlet extends HttpServlet
{
	private static final long serialVersionUID = 5338687171193354718L;
	private AdminDAO adminDao = new AdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String workerAcount = request.getParameter("workerAcount");
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isRepeateWorkerAcount", this.adminDao.isRepeateWorkerAccount(workerAcount));
		
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
