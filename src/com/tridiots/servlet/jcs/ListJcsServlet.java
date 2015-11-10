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

public class ListJcsServlet extends HttpServlet
{
	private static final long serialVersionUID = -1420949607914273949L;
	private static final int PAGE_LIMIT = 1;
	private JcsDAO jcsDao = new JcsDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String start = request.getParameter("start");
		String limit = request.getParameter("limit");
		String gjc = request.getParameter("gjc");
		String biaoti = request.getParameter("biaoti");
		String yaodian = request.getParameter("yaodian");
		String gslx = request.getParameter("gslx");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		String alsousuo = request.getParameter("alsousuo");
		
		//System.out.println(start+"-->"+limit+"-->"+gjc_sousuo+"-->"+sz_sousuo);
		
		int iStart = start == null ? 0 : Integer.parseInt(start);
		int iLimit = limit == null ? PAGE_LIMIT : Integer.parseInt(limit);
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			//System.out.println("servet");
			out.println(JSONObject.fromObject(jcsDao.listJcsKu(iStart, iLimit, gjc, biaoti, yaodian, gslx,companyName,usertype,alsousuo)));
			//out.println(JSONObject.fromObject(htDao.listHtKu(iStart, iLimit, gjc, htlx, gslx)));
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
