package com.tridiots.servlet.taxType;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.dao.impl.TaxTypeDAOImpl;
import com.tridiots.domain.Ht;
import com.tridiots.domain.HtTax;
import com.tridiots.domain.TaxType;

public class EditTaxServlet extends HttpServlet
{
	private static final long serialVersionUID = -3038181435399527538L;
	private TaxTypeDAO taxDao = new TaxTypeDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String domainKey = request.getParameter("id");
		int id = Integer.parseInt(domainKey);
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
		
		TaxType ht = new TaxType();
		
		ht.setId(id);
		ht.setFirstnode(yiji);
		ht.setSecondnode(erji);
		ht.setTitle(bt);
		ht.setPlanpoint(chd);
		ht.setCondition(tj);
		ht.setCasetitle(al);
		ht.setMisunderstanding(wq);
		ht.setScheme(fx);
		ht.setCompanytype(gslx);
		ht.setArea(sydq);
		ht.setKeyword(gjc);
		ht.setTaxtype(sz);
		ht.setNote(bz);
		ht.setRuletw(fg);
		/////////////////////////////////
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isEditTaxSuccess", this.taxDao.eDitTax(ht));
		
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

