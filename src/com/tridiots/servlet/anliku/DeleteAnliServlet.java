package com.tridiots.servlet.anliku;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.AnliDAO;
import com.tridiots.dao.impl.AnliDAOImpl;

public class DeleteAnliServlet extends HttpServlet
{
	private static final long serialVersionUID = 2234368427056650613L;
	private AnliDAO anliDao = new AnliDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String anliDelId = request.getParameter("id");
		int id = Integer.parseInt(anliDelId);
		System.out.println("id-->"+id);
		//this.sjsmService.deleteSjsmById(sjsmid);
		//this.anliDao.deleteAnli(id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isDeleteAnliSuccess", this.anliDao.deleteAnli(id));
		
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

