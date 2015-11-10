<%@page import="com.tridiots.vo.UserVO"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String path2 = request.getContextPath(); %>
<!-- 导航条开始 -->
<header class="navbar navbar-inverse navbar-fixed-top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="<%=path2 %>/systemSelect.jsp" class="navbar-brand" style="color:white">返回首页</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
      	<li>
          <a class="htNav" href="<%=path2 %>/pages/ht/ht.jsp" style="color:white">合同控税</a>
        </li>
        <li>
          <a class="jcsNav" href="<%=path2 %>/pages/jcs/jcs.jsp" style="color:white">决策树</a>
        </li>
        <li>
          <a class="szNav" href="<%=path2 %>/pages/taxType/taxType.jsp" style="color:white">单税种</a>
        </li>
        <li>
          <a class="alNav" href="<%=path2 %>/pages/alk/alk.jsp" style="color:white">案例库</a>
        </li>
        <li>
          <a class="fgNav" href="<%=path2 %>/pages/faguiku/faguiku.jsp" style="color:white">法规库</a>
        </li>
        <li>
          <a class="csNav" href="<%=path2 %>/pages/calculater/calculater.jsp" style="color:white">测算</a>
        </li>
        <li>
          <a class="ssNav" href="<%=path2 %>/pages/search/choose.jsp" style="color:white">搜索</a>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right" style="cursor:pointer;">
          <%
          	UserVO user =  (UserVO)session.getAttribute("userVo");
           if(user!=null)
          	{ 
          		String name = user.getUsername();
          %>
	          <li>
	            <a style="color:white"><%=name%></a>
	          </li>
          <%
          	} 
          %>
          <li>
             <a href="<%=path2 %>/UserServlet?method=landOut" style="color:white">[注销]</a>
          </li>
          
      </ul>
      <!-- <form class="navbar-form navbar-right" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
      </form> -->
    </nav>
  </div>
</header>
<!-- 导航条结束 -->