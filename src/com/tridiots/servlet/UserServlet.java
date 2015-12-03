package com.tridiots.servlet;

import java.io.IOException;
import java.io.Serializable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tridiots.dao.UserDAO;
import com.tridiots.dao.impl.UserDAOImpl;
import com.tridiots.domain.User;
import com.tridiots.vo.UserVO;

public class UserServlet extends HttpServlet implements Serializable
{
	private static final long serialVersionUID = 7687238380273452360L;
	
	private UserDAO userDao = new UserDAOImpl();

	public UserDAO getUserDao()
	{
		return userDao;
	}

	public void setUserDao(UserDAO userDao)
	{
		this.userDao = userDao;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String acountnumber = request.getParameter("acountnumber");
		String password = request.getParameter("password");
		User user = new User();
		user.setAcountnumber(acountnumber);
		user.setPassword(password);
		
		HttpSession session = request.getSession();
		String path = request.getContextPath();
		
		if(acountnumber!=null&&acountnumber!=""&&password!=null&&password!="")
		{
			UserVO userVo = userDao.findLogin(user);
			if(userVo!=null)
			{


					session.setAttribute("userVo", userVo);
					onlineUserList.getInstance().addUser(userVo.getId(), session.getId());
					//session.setMaxInactiveInterval(1*60);
					//只有这一个才可以把session传过去
					request.getRequestDispatcher("/systemSelect.jsp").forward(request, response);
					//response.sendRedirect("/"+path+"/systemSelect.jsp");
					
			}
			else
			{
				response.sendRedirect(path+"/userLogin.jsp");
			}
		}
		else{
			response.sendRedirect(path+"/userLogin.jsp");
		}
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		this.doGet(req, resp);
	}
	/**
	 * 注销
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	public void landOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
	
		String path = req.getContextPath();
		req.getSession().invalidate();
		req.getRequestDispatcher(path+"/userLogin.jsp").forward(req, resp);
	}
}
