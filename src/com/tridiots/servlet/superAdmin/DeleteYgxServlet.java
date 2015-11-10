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

public class DeleteYgxServlet extends HttpServlet
{
	private static final long serialVersionUID = 7381023749654656320L;
	private SuperAdminDAO taxDao = new SuperAdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String acountnumber = request.getParameter("acountnumber");
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isDeleteYgxASuccess", this.taxDao.deleteYgx(acountnumber));
		
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
