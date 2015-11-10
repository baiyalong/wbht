package com.tridiots.servlet.anliku;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import com.tridiots.dao.AnliDAO;
import com.tridiots.dao.impl.AnliDAOImpl;
import com.tridiots.domain.AnliKu;

public class ViewAnliContentServlet extends HttpServlet
{
	private static final long serialVersionUID = 5035629701291776331L;
	private AnliDAO anliDao = new AnliDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String alTitle = request.getParameter("anTitle");
		
		response.setContentType("text/json; charset=utf-8");
		PrintWriter out = null;
		try {
			out = response.getWriter();
			out.println(JSONObject.fromObject(anliDao.findAnliContentByTitle(alTitle)));
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


