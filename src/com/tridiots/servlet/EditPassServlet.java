package com.tridiots.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.UserDAO;
import com.tridiots.dao.impl.UserDAOImpl;

public class EditPassServlet extends HttpServlet
{
	private static final long serialVersionUID = -2003096246094579662L;
	private UserDAO userDao = new UserDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		int id = Integer.parseInt(request.getParameter("id"));
		String newPass = request.getParameter("newPass");
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isUpdatePassSuccess", this.userDao.updatePassById(id, newPass));
		
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

	public UserDAO getUserDao()
	{
		return userDao;
	}

	public void setUserDao(UserDAO userDao)
	{
		this.userDao = userDao;
	}
}
