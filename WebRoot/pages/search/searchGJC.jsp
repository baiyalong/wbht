<%@page import="com.tridiots.vo.UserVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案例库</title>
    <link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/anliku/anliku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/faguiku/faguiku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/taxType/taxType.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/search/search.css"/>
  </head>
  
  <body>
  	<div class="container">
  		<%
		       	UserVO userFaguiKu =  (UserVO)session.getAttribute("userVo");
		       	String acountnumber = "";
		       	String companyName = "";
		       	String usertype = "";
		        if(userFaguiKu!=null)
		        { 
		            acountnumber = userFaguiKu.getAcountnumber();
		            companyName = userFaguiKu.getCompanyName();
		            usertype = userFaguiKu.getUsertype();
		             
		        }
		        
		        String ssgjc = request.getParameter("gjc");
		      %>
  		<!-- 导航条开始 -->
<header class="navbar navbar-inverse navbar-fixed-top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle sangang" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="../../systemSelect.jsp" class="navbar-brand" style="color:white">返回首页</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
      	<li>
          <a class="htNav" href="../../pages/ht/ht.jsp" style="color:white">合同控税</a>
        </li>
        <li>
          <a class="jcsNav" href="../../pages/jcs/jcs.jsp" style="color:white">决策树</a>
        </li>
        <li>
          <a class="szNav" href="../../pages/taxType/taxType.jsp" style="color:white">单税种</a>
        </li>
        <li>
          <a class="alNav" href="../../pages/alk/alk.jsp" style="color:white">案例库</a>
        </li>
        <li>
          <a class="fgNav" href="../../pages/faguiku/faguiku.jsp" style="color:white">法规库</a>
        </li>
        <li>
          <a class="csNav" href="../../pages/calculater/calculater.jsp" style="color:white">测算</a>
        </li>
        <li>
          <a class="ssNav" href="../../pages/search/choose.jsp" style="color:white">搜索</a>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right" style="cursor:pointer;">
      	  <li>
      	  	<button class="btn btn-default fhbtn" style="margin-top:10px;background:transparent;color:white;">返回</button>
      	  </li>
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
             <a href="../../UserServlet?method=landOut" style="color:white">[注销]</a>
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
    	<!-- 导航条界面开始 -->
		<%-- <%@ include file="../../pages/common/navbar.jsp" %> --%>
		<!-- 导航条界面结束 -->
		
        <div class="row" style="margin-top: -10px;">
            	<div id="allAnli_table_body" class="allFaGui_table_body allTaxType_table_body allJcs_table_body allHt_table_body" >
            			<!-- Ajax填充 -->
            			<h3 style="font-family: 微软雅黑" class="text-center">点击相应模块进行搜索</h3>
            		
            	</div>
            	<!-- table布局开始 -->
		<table class="systemTable">
			<tr>
				<td>
					<a class="ssht" style="cursor:pointer"><img src="<%=path%>/imgs/systemSelect/ht.png"></a>
				</td>
				<td>
					<a class="ssjcs" style="cursor:pointer"><img src="<%=path%>/imgs/systemSelect/jc.png"></a>
				</td>
				
			</tr>
			
			<tr>
				<td>
					<a class="sssz" style="cursor:pointer"><img src="<%=path%>/imgs/systemSelect/sf.png"></a>
				</td>
				<td>
					<a class="ssal" style="cursor:pointer"><img src="<%=path%>/imgs/systemSelect/al.png"></a>
				</td>
			</tr>
			
			<tr>
				<td>
					<a class="ssfg" style="cursor:pointer"><img src="<%=path%>/imgs/systemSelect/fg.png"></a>
				</td>
				<td>
				</td>
			</tr>
		</table>
		<!-- table布局结束 -->
		
            	<div class="text-center">
            	<ul id="index-bar" class="pagination">
					<!-- Ajax填充分页 -->
				</ul>
				</div>
      	</div>
      
      
		<!-- 版权说明开始 -->
		<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
     	</footer>
     	<!-- 版权说明结束 -->
			
     </div> <!-- /container -->
     <script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path %>/js/anli.js"></script>
	<script src="<%=path %>/js/faguiku.js"></script>
	<script src="<%=path %>/js/taxtype.js"></script>
	<script src="<%=path %>/js/jcs.js"></script>
	<script src="<%=path %>/js/ht.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			////////////////////增加返回按钮/////////////////////
			$('.fhbtn').hide();
			
			//////////////////////////////////////////
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			var ssgjc = '<%=ssgjc %>';
			
			$('.ssal').click(function(){
				searchAnli(0,3,true,ssgjc, null,zh,companyName,usertype);
				$('.fhbtn').show();
				$('.systemTable').hide();
			});
			////////////////////////////////////
			$('.ssfg').click(function(){
				loadAllFagui(0,3,true,ssgjc,null,null,zh,companyName,usertype);
				$('.fhbtn').show();
				$('.systemTable').hide();
			});
			////////////////////////////////
			
			var table = "landtax"; 
			
			$('.sssz').click(function(){
				loadTaxType(0,3,true,null, null, ssgjc, null,table,zh,companyName,usertype);
				$('.fhbtn').show();
				$('.systemTable').hide();
			});
			/////////////////////////////////
			
			$('.ssjcs').click(function(){
				loadJcs(0,1,true, ssgjc, null, null, null,zh,companyName,usertype);
				$('.fhbtn').show();
				$('.systemTable').hide();
			});
			/////////////////////////////////////
			
			$('.ssht').click(function(){
				loadHt(0,1,true, ssgjc, null, null, null,zh,companyName,usertype);
				$('.fhbtn').show();
				$('.systemTable').hide();
			});
			
			$('.fhbtn').click(function(){
				if($(document).width()<=767)//480即为480px
        		{
					$('.sangang').click();
				}
				
				$('#allAnli_table_body').empty();
				$('#index-bar').empty();
				$('.systemTable').show();
			});
		});
	</script>
  </body>
</html>