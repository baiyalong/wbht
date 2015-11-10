package com.tridiots.servlet.faGuiKu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.FaguiDAO;
import com.tridiots.dao.impl.FaguiDAOImpl;
import com.tridiots.domain.AnliKu;
import com.tridiots.domain.FaGuiKu;

public class FindFaguiByIdServlet extends HttpServlet
{
	private static final long serialVersionUID = -4938164964064454463L;
	private FaguiDAO faguiDao = new FaguiDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String DelId = request.getParameter("id");
		int id = Integer.parseInt(DelId);
		
		FaGuiKu anliku = this.faguiDao.findFaguiById(id);
		if(anliku!=null)
		{
			request.setAttribute("tax", anliku);
			request.getRequestDispatcher("/pages/faguiku/editFagui.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}
