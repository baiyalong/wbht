package com.tridiots.servlet.jcs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.JcsDAO;
import com.tridiots.dao.impl.JcsDAOImpl;

public class ListJcsByJilianServlet extends HttpServlet
{
	private static final long serialVersionUID = 2460028022799239643L;
	private static final int PAGE_LIMIT = 1;
	private JcsDAO jcsDao = new JcsDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String start = request.getParameter("start");
		String limit = request.getParameter("limit");
		String yijicd = request.getParameter("yijicd");
		String erji = request.getParameter("erji");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		
		int iStart = start == null ? 0 : Integer.parseInt(start);
		int iLimit = limit == null ? PAGE_LIMIT : Integer.parseInt(limit);
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(jcsDao.listJcsKuByJilian(iStart, iLimit, yijicd, erji,companyName,usertype)));
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
