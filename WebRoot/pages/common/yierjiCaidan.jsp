<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.dao.HtDAO"%>
<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.vo.UserVO"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- 一二级菜单开始 -->
				<%
	     			 HtDAO htDaocd = new HtDAOImpl();
	     			 List<Node> nodeListcd = htDaocd.listNode("合同");
		
					 int nodeLencd = nodeListcd.size();   
					 //int erjiLen = 0;   			 
	     		%>	
				<div class="yierjiCaidan col-xs-12 col-md-8 col-lg-8">
	      		  	<font class="yijidp">一级</font>
	      		  	<select class="yiji_cd">
				  		<%
	      		  			for(int i=0;i<nodeLencd;i++)
	      		  			{
	      		  				Node node = nodeListcd.get(i);
	      		  		 %>
				  				<option value="<%=node.getYijinode() %>"><%=node.getYijinode() %></option> 
				  		<%
				  			} 
				  		%> 
				  	</select>
	      		  	<font class="erjijiedian">二级</font>
				  		<%
	      		  			for(int i=0;i<nodeLencd;i++)
	      		  			{
	      		  				Node node = nodeListcd.get(i);
	      		  				String[] erjiNode = node.getErjinode().split(",");
	      		  				int erLen = erjiNode.length;
	      		  				if(i==0)
	      		  				{
	      		  		 %>
					      		  	<select class="form-control erji_cd_<%=i+1 %>"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
					  	<% 		
					  			}
					  			if(i>=1)
							  	{ %>
								  	<select class="form-control erji_cd_<%=i+1 %>" style="display: none;"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
							  	<%
							  	}
				  			} 
				  		%>
				  	
				  	<button class="btn btn-primary" id="jilianCdSearch">进入</button>
				</div>
				
				
			<!-- 一二级菜单结束 -->