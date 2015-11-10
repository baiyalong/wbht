package com.tridiots.servlet.ht;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.HtDAO;
import com.tridiots.dao.impl.HtDAOImpl;
import com.tridiots.domain.HtDetail;

public class FindHtAndTaxByIdServlet extends HttpServlet
{
	private static final long serialVersionUID = -8663822260525374056L;
	private HtDAO htDao = new HtDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String id = request.getParameter("id");
		HtDetail htDetail = this.htDao.findHtAndTaxById(id);
		if(htDetail!=null)
		{
			request.setAttribute("htDetail", htDetail);
			request.getRequestDispatcher("/pages/ht/editHt.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}