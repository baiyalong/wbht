package com.tridiots.servlet.faGuiKu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tridiots.dao.FaguiDAO;
import com.tridiots.dao.impl.FaguiDAOImpl;

public class UpdateFaguiServlet extends HttpServlet
{
	private static final long serialVersionUID = -3957595100890881633L;
	private FaguiDAO faguiDao = new FaguiDAOImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String wh = request.getParameter("wh");
		String tw = request.getParameter("tw");
		String qw = request.getParameter("qw");
		String sydq = request.getParameter("sydq");
		String sz = request.getParameter("sz");
		String gjc = request.getParameter("gjc");
		String bz = request.getParameter("bz");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		this.faguiDao.updateFaguiById(wh, tw, qw, sydq, sz, gjc, bz, id);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		this.doGet(request, response);
	}

}
