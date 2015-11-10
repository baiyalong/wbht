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

public class EditAlkServlet extends HttpServlet
{
	private static final long serialVersionUID = -4810113554651972362L;
	private AnliDAO anliDao = new AnliDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String domainKey = request.getParameter("id");
		int id = Integer.parseInt(domainKey);
		String bt = request.getParameter("bt");
		String al = request.getParameter("al");
		String sydq = request.getParameter("sydqname");
		String gjc = request.getParameter("gjc");
		String sz = request.getParameter("sz");
		String bz = request.getParameter("bz");
		
		AnliKu ht = new AnliKu();
		
		ht.setId(id);
		ht.setCasetitle(bt);
		ht.setCasecontent(al);
		ht.setKeyword(gjc);
		ht.setTaxtype(sz);
		ht.setArea(sydq);
		ht.setNote(bz);
		/////////////////////////////////
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isEditAlkSuccess", this.anliDao.eDitAlk(ht));
		
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
