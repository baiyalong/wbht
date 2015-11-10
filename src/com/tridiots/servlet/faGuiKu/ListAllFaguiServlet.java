package com.tridiots.servlet.faGuiKu;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.FaguiDAO;
import com.tridiots.dao.impl.FaguiDAOImpl;

public class ListAllFaguiServlet extends HttpServlet
{
	private static final long serialVersionUID = -8458148618011282840L;
	private static final int PAGE_LIMIT = 3;
	private FaguiDAO faguiDao = new FaguiDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String start = request.getParameter("start");
		String limit = request.getParameter("limit");
		String gjc_sousuo = request.getParameter("gjc_sousuo");
		String sz_sousuo = request.getParameter("sz_sousuo");
		String fgwh_sousuo = request.getParameter("fgwh_sousuo");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		
		int iStart = start == null ? 0 : Integer.parseInt(start);
		int iLimit = limit == null ? PAGE_LIMIT : Integer.parseInt(limit);
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(faguiDao.listAllFaguiKu(iStart, iLimit,gjc_sousuo,sz_sousuo,fgwh_sousuo,companyName,usertype)));
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
