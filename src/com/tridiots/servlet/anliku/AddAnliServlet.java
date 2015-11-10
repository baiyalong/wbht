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
import com.tridiots.domain.AnliKu;

public class AddAnliServlet extends HttpServlet
{
	private static final long serialVersionUID = -5468306306097315659L;
	private AnliDAO anliDao = new AnliDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String bt = request.getParameter("bt");
		String al = request.getParameter("al");
		String sydq = request.getParameter("sydq");
		String sz = request.getParameter("sz");
		String gjc = request.getParameter("gjc");
		String bz = request.getParameter("bz");
		String zh = request.getParameter("zh");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		
		AnliKu anli = new AnliKu();
		
		anli.setCasetitle(bt);
		anli.setCasecontent(al);
		anli.setArea(sydq);
		anli.setGonghao(zh);
		anli.setKeyword(gjc);
		anli.setNote(bz);
		anli.setTaxtype(sz);
		anli.setCompanyName(companyName);
		anli.setUsertype(usertype);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddAnliSuccess", this.anliDao.addAnli(anli));
		
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

