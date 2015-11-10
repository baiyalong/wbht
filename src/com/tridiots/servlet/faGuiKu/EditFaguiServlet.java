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
import com.tridiots.domain.FaGuiKu;

public class EditFaguiServlet extends HttpServlet
{
	private static final long serialVersionUID = -3505003113146229086L;
	private FaguiDAO faguiDao = new FaguiDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String domainKey = request.getParameter("id");
		int id = Integer.parseInt(domainKey);
		String fgwh = request.getParameter("fgwh");
		String fgtw = request.getParameter("fgtw");
		////////////////////////////////////////////////////////////////////
		String fgqwFileName = request.getParameter("fgqwFileNameTime");
		System.out.println(fgqwFileName+"-->fgqwFileNameTime");
		String truePath = this.getServletContext().getRealPath("/");
		//String truePath = "D:/upload/";
		String fgqwFileAndPath = truePath+fgqwFileName;//用于下载或浏览
		String fgqwFileAndPathContent = fgqwFileName+"|"+fgqwFileAndPath;
		System.out.println(fgqwFileAndPathContent);
		///////////////////////////////////////////////////////////////
		String sydq = request.getParameter("sydqname");
		String gjc = request.getParameter("gjc");
		String sz = request.getParameter("sz");
		String bz = request.getParameter("bz");
		
		FaGuiKu ht = new FaGuiKu();
		
		ht.setId(id);
		ht.setFgnumber(fgwh);
		ht.setFgtw(fgtw);
		ht.setContent(fgqwFileAndPathContent);
		ht.setKeyword(gjc);
		ht.setTaxtype(sz);
		ht.setArea(sydq);
		ht.setNote(bz);
		/////////////////////////////////
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isEditFaguiSuccess", this.faguiDao.eDitFagui(ht));
		
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