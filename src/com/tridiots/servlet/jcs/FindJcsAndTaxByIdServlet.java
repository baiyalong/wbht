package com.tridiots.servlet.jcs;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.JcsDAO;
import com.tridiots.dao.impl.JcsDAOImpl;
import com.tridiots.domain.JcsDetail;

public class FindJcsAndTaxByIdServlet extends HttpServlet
{
	private static final long serialVersionUID = 4941687295416261795L;
	private JcsDAO jcsDao = new JcsDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String id = request.getParameter("id");
		JcsDetail jcsDetail = this.jcsDao.findJcsAndTaxById(id);
		if(jcsDetail!=null)
		{
			request.setAttribute("htDetail", jcsDetail);
			request.getRequestDispatcher("/pages/jcs/editJcs.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}