package com.tridiots.servlet.taxType;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.TaxTypeDAO;
import com.tridiots.dao.impl.TaxTypeDAOImpl;
import com.tridiots.domain.HtDetail;
import com.tridiots.domain.TaxType;

public class FindTaxByIdServlet extends HttpServlet
{
	private static final long serialVersionUID = 1442767210721124563L;
	private TaxTypeDAO taxDao = new TaxTypeDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String DelId = request.getParameter("id");
		int id = Integer.parseInt(DelId);
		
		TaxType tax = this.taxDao.findTaxById(id);
		if(tax!=null)
		{
			request.setAttribute("tax", tax);
			request.getRequestDispatcher("/pages/taxType/editTax.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}
