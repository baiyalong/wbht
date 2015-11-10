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

public class UpdateJilianServlet extends HttpServlet
{
	private static final long serialVersionUID = -5027864940128400404L;
	private SuperAdminDAO superAdminDao = new SuperAdminDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String yiji = request.getParameter("yiji");
		String erji = request.getParameter("erji");
		String type = request.getParameter("type");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		System.out.println(yiji+erji+type+id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isUpdateJilianSuccess", this.superAdminDao.updateJilianById(yiji,erji,type,id));
		
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

}
