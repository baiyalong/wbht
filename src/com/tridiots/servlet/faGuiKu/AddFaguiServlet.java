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

public class AddFaguiServlet extends HttpServlet
{
	private static final long serialVersionUID = 8059912684245646676L;
	private FaguiDAO faguiDao = new FaguiDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String fgwh = request.getParameter("fgwh");
		String fgtw = request.getParameter("fgtw");
		String sydq = request.getParameter("sydq");
		String sz = request.getParameter("sz");
		String gjc = request.getParameter("gjc");
		String bz = request.getParameter("bz");
		////////////////////////////////////
		String zh = request.getParameter("zh");
		String companyName = request.getParameter("companyName");
		String usertype = request.getParameter("usertype");
		////////////////////////////////////
		String fgqwFileName = request.getParameter("fgqwFileName");
		String truePath = this.getServletContext().getRealPath("/fileupload/");
		//String truePath = request.getContextPath();
		String fgqwFileAndPath = truePath+"/"+fgqwFileName;//用于下载或浏览
		String fgqwFileAndPathContent = fgqwFileName+"|"+fgqwFileAndPath;
		/////////////////////////////////////
		FaGuiKu fagui = new FaGuiKu();
		
		fagui.setArea(sydq);
		fagui.setContent(fgqwFileAndPathContent);
		fagui.setFgnumber(fgwh);
		fagui.setFgtw(fgtw);
		fagui.setGonghao(zh);
		fagui.setCompanyName(companyName);
		fagui.setUsertype(usertype);
		fagui.setKeyword(gjc);
		fagui.setNote(bz);
		fagui.setTaxtype(sz);
		
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("isAddFaguiSuccess", this.faguiDao.addFagui(fagui));
		
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
