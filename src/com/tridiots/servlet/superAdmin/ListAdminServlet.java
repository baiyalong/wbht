package com.tridiots.servlet.superAdmin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.SuperAdminDAO;
import com.tridiots.dao.impl.SuperAdminDAOImpl;

import net.sf.json.JSONObject;


public class ListAdminServlet extends HttpServlet
{
	private static final long serialVersionUID = -3833833124838038361L;
	private static final int PAGE_LIMIT = 20;
	private SuperAdminDAO superDao = new SuperAdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String usertype = request.getParameter("usertype2");
		String start = request.getParameter("start");
		String limit = request.getParameter("limit");
		String zh = "";
		if(usertype.equals("admin"))
			zh = request.getParameter("zh");
		
		int iStart = start == null ? 0 : Integer.parseInt(start);
		int iLimit = limit == null ? PAGE_LIMIT : Integer.parseInt(limit);
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			if(usertype.equals("superadmin"))
				out.println(JSONObject.fromObject(this.superDao.listAllAdminKu(iStart, iLimit)));
			else
				out.println(JSONObject.fromObject(this.superDao.listAllWorkerKu(iStart, iLimit,zh)));
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

}

