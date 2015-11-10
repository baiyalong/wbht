package com.tridiots.servlet.taxType;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.dao.impl.TaxTypeDAOImpl;

import net.sf.json.JSONObject;

public class DeleteTaxServlet extends HttpServlet
{
	private static final long serialVersionUID = 3830353535062554195L;
	private TaxTypeDAO taxDao = new TaxTypeDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String DelId = request.getParameter("id");
		int id = Integer.parseInt(DelId);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isDeleteTaxSuccess", this.taxDao.deleteTax(id));
		
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

