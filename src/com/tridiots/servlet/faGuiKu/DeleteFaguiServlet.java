package com.tridiots.servlet.faGuiKu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.FaguiDAO;
import com.tridiots.dao.impl.FaguiDAOImpl;

public class DeleteFaguiServlet extends HttpServlet
{
	private static final long serialVersionUID = 8469616359717248758L;
	private FaguiDAO faguiDao = new FaguiDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String DelId = request.getParameter("id");
		int id = Integer.parseInt(DelId);
		System.out.println("id-->"+id);
		//this.sjsmService.deleteSjsmById(sjsmid);
		//this.anliDao.deleteAnli(id);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isDeleteFaguiSuccess", this.faguiDao.deleteFagui(id));
		
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


