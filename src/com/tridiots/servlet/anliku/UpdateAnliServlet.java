package com.tridiots.servlet.anliku;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.AnliDAO;
import com.tridiots.dao.impl.AnliDAOImpl;


public class UpdateAnliServlet extends HttpServlet
{
	private static final long serialVersionUID = -39056192862848508L;
	private AnliDAO anliDao = new AnliDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String title = request.getParameter("title");
		String anli = request.getParameter("anli");
		String gjc = request.getParameter("gjc");
		String sz = request.getParameter("sz");
		String sydq = request.getParameter("sydq");
		String bz = request.getParameter("bz");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		this.anliDao.updateAnliById(title, anli, gjc, sz, sydq, bz, id);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}

}

