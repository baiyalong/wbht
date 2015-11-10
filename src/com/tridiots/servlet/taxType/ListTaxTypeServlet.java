package com.tridiots.servlet.taxType;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.dao.impl.TaxTypeDAOImpl;

public class ListTaxTypeServlet extends HttpServlet
{
	private static final long serialVersionUID = -5556961489545198L;
	
	private static final int PAGE_LIMIT = 3;
	private TaxTypeDAO taxTypeDao = new TaxTypeDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String start = request.getParameter("start");
		String limit = request.getParameter("limit");
		String sz = request.getParameter("sz");
		String sydq = request.getParameter("sydq"); 
		String gjc = request.getParameter("gjc");
		String companyType = request.getParameter("companyType");
		String biao = request.getParameter("biao");
		
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		
		//System.out.println(start+"-->"+limit+"-->"+gjc_sousuo+"-->"+sz_sousuo);
		
		int iStart = start == null ? 0 : Integer.parseInt(start);
		int iLimit = limit == null ? PAGE_LIMIT : Integer.parseInt(limit);
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(taxTypeDao.listTaxTypeKu(iStart, iLimit, sz, sydq, gjc, companyType, biao,companyName,usertype)));
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

