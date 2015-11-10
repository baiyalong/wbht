package com.tridiots.servlet.anliku;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.AnliDAO;
import com.tridiots.dao.impl.AnliDAOImpl;
import com.tridiots.domain.AnliKu;

public class FindAnliByIdServlet extends HttpServlet
{
	private static final long serialVersionUID = -978677229426487387L;
	private AnliDAO anliDao = new AnliDAOImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String DelId = request.getParameter("id");
		int id = Integer.parseInt(DelId);
		
		AnliKu anliku = this.anliDao.findAnliById(id);
		if(anliku!=null)
		{
			request.setAttribute("tax", anliku);
			System.out.println("anlikudeedit");
			request.getRequestDispatcher("/pages/alk/editAlk.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}
}

