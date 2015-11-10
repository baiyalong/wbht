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
import com.tridiots.domain.Node;
import com.tridiots.domain.User;

public class AddJilianServlet extends HttpServlet
{
	private static final long serialVersionUID = 3629484821262496989L;
	private SuperAdminDAO superAdminDao = new SuperAdminDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String yijiData = request.getParameter("yijiData");
		String erjiData = request.getParameter("erjiData");
		String type = request.getParameter("type");
		
		Node node = new Node();
		node.setYijinode(yijiData);
		node.setErjinode(erjiData);
		node.setType(type);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddJilianSuccess", this.superAdminDao.addJilian(node));
		
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
