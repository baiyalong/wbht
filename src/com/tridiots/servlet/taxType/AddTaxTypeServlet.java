package com.tridiots.servlet.taxType;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.dao.impl.TaxTypeDAOImpl;
import com.tridiots.domain.TaxType;

public class AddTaxTypeServlet extends HttpServlet
{
	private static final long serialVersionUID = -559299581242569870L;
	private TaxTypeDAO taxDao = new TaxTypeDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String yiji = request.getParameter("yiji");
		String erji = request.getParameter("erji");
		String bt = request.getParameter("bt");
		String chd = request.getParameter("chd");
		String tj = request.getParameter("tj");
		String al = request.getParameter("al");
		String wq = request.getParameter("wq");
		String fx = request.getParameter("fx");
		String fg = request.getParameter("fg");
		String gslx = request.getParameter("gslx");
		String sydq = request.getParameter("sydqname");
		String gjc = request.getParameter("gjc");
		String sz = request.getParameter("sz");
		String bz = request.getParameter("bz");
		
		String zh = request.getParameter("zh");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		//System.out.println(sydq+"-->sydq");
		TaxType tax = new TaxType();
		
		tax.setArea(sydq);
		tax.setCasetitle(al);
		tax.setCompanytype(gslx);
		tax.setCondition(tj);
		tax.setFirstnode(yiji);
		tax.setKeyword(gjc);
		tax.setMisunderstanding(wq);
		tax.setNote(bz);
		tax.setPlanpoint(chd);
		tax.setRuletw(fg);
		tax.setScheme(fx);
		tax.setSecondnode(erji);
		tax.setTaxtype(sz);
		tax.setTitle(bt);
		tax.setGonghao(zh);
		tax.setCompanyName(companyName);
		tax.setUsertype(usertype);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddTaxTypeSuccess", this.taxDao.addTaxType(tax));
		
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

