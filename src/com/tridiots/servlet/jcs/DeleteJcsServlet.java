package com.tridiots.servlet.jcs;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.HtDAO;
import com.tridiots.dao.JcsDAO;
import com.tridiots.dao.impl.HtDAOImpl;
import com.tridiots.dao.impl.JcsDAOImpl;

public class DeleteJcsServlet extends HttpServlet
{
	private static final long serialVersionUID = -1650332402510354957L;
	private JcsDAO jcsDao = new JcsDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String id = request.getParameter("id");
		//int id = Integer.parseInt(DelId);
		System.out.println("id-->"+id);
		//this.sjsmService.deleteSjsmById(sjsmid);
		//this.anliDao.deleteAnli(id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isDeleteJcsSuccess", this.jcsDao.deleteJcs(id));
		
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

