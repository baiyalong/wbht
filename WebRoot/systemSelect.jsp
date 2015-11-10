<%@page import="com.tridiots.vo.UserVO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML>
<html>
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
<link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>系统选择</title>
    <link href="bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/userlogin.css"/>
    <link rel="stylesheet" type="text/css" href="css/system.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
  </head>
	
<body class="text-center" style="text-align: center;">

	<!-- 导航条开始 -->
<header class="navbar navbar-inverse navbar-fixed-top" role="banner">
  <div class="container sycd">
    <!-- <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div> -->
      <!-- <ul class="nav navbar-nav">
        <li>
          <a></a>
        </li>
        <li>
          <a></a>
        </li>
      </ul> -->
      <ul class="nav navbar-nav navbar-right navSys" style="cursor:pointer;">
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
          <li class="pull-right">
             <a href="UserServlet?method=landOut" style="color:white">[注销]</a>
          </li>
          
      </ul>
  </div>
</header>
<!-- 导航条结束 -->
	
	<%
		UserVO userVo =  (UserVO)session.getAttribute("userVo");
		
		int id = 0;
		String username = ""; 
		String password = "";
		String usertype = "";
		String companyName = "";
		String companyType = "";
		int limitnumber = 0;
		int nowNum = 0;
		
		if(userVo!=null)
		{
			id = userVo.getId();
			username = userVo.getUsername();
			password = userVo.getPassword();
			usertype = userVo.getUsertype();
			companyName = userVo.getCompanyName();
			companyType = userVo.getCompanyType();
			limitnumber = userVo.getLimitnumber();
			nowNum = userVo.getNowNum();
		}
		
	%> 
	
	<!-- table布局开始 -->
		<table class="systemTable">
			<tr>
				<td>
					<a href="<%=path%>/pages/ht/ht.jsp">
						<img src="<%=path%>/imgs/systemSelect/ht.png">
					</a>
				</td>
				<td>
					<a href="<%=path%>/pages/jcs/jcs.jsp">
						<img src="<%=path%>/imgs/systemSelect/jc.png">
					</a>
				</td>
				
			</tr>
			
			<tr>
				<td>
					<a href="<%=path%>/pages/taxType/taxType.jsp">
						<img src="<%=path%>/imgs/systemSelect/sf.png">
					</a>
				</td>
				<td>
					<a href="<%=path%>/pages/alk/alk.jsp">
						<img src="<%=path%>/imgs/systemSelect/al.png">
					</a>
				</td>
			</tr>
			
			<tr>
				<td>
					<a href="<%=path%>/pages/faguiku/faguiku.jsp">
						<img src="<%=path%>/imgs/systemSelect/fg.png">
					</a>
				</td>
				<td>
					<a href="<%=path%>/pages/calculater/calculater.jsp">
						<img src="<%=path%>/imgs/systemSelect/js.png">
					</a>
				</td>
			</tr>
			
			<tr>
				<td>
					<a href="<%=path%>/pages/search/choose.jsp">
						<img src="<%=path%>/imgs/systemSelect/ss.png">
					</a>
				</td>
				<td>
					<a  data-toggle="modal" href="#myModal">
						<img src="<%=path%>/imgs/systemSelect/sz.png">
					</a> 
				</td>
			</tr>
		</table>
		<!-- table布局结束 -->
	
			<!-- 设置modal开始 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="myModalLabel">设置</h4>
						      </div>
						      
						      <div class="modal-body" id="szgzbtn">
						        	<button class="btn btn-lg btn-warning editPass" style="height:80px;">修改密码</button>
						        	<button class="btn btn-lg btn-primary addUser" style="height:80px;">员工开户</button>
						        	<button class="btn btn-lg btn-info addJilian" style="height:80px;">节点录入</button>
						        	<!-- <button class="btn btn-lg btn-info gladmin" style="height:80px;">管理员管理</button> -->
						        	<button class="btn btn-lg btn-info gladmin" style="height:80px;">员工管理</button>
						      </div>
						      
						      <div class="modal-footer">
						        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 设置modal结束 -->
			
			<!-- 
			<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="myModalLabel">搜索</h4>
						      </div>
						      
						      <div class="modal-body">
						        	<button class="btn btn-lg btn-info sz" style="height:80px;">税种</button>
						        	<button class="btn btn-lg btn-info jcs" style="margin-left:50px;height:80px;">决策树</button>
						        	<button class="btn btn-lg btn-info ht" style="margin-left:50px;height:80px;">合同</button>
						        	
						      </div>
						      
						      <div class="modal-footer">
						        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
				  </div>
			</div>
			-->
			
			
			<footer style="text-align: center;margin-top: 20px;">
			    <%@ include file="../../pages/common/copyright.jsp" %>
			</footer>
	
 
	
	<script src="bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="bootstrap-3.2.0/js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function(){
			var id = <%=id %>;
			var username = "<%=username%>";
			var password = "<%=password%>";
			var usertype= "<%=usertype%>";
			var companyName= "<%=companyName%>";
			var companyType= "<%=companyType%>";
			var limitnumber= <%=limitnumber%>;
			var nowNum= <%=nowNum%>;
			
			if(usertype=="worker")
			{
				$('.addUser').hide();
				$('.addJilian').hide();
				$('.gladmin').hide();
			}
			
			if(usertype=="superadmin")
			{
				$('.addUser').click(function(){
					window.location.href="<%=path%>/pages/superAdmin/addAdmin.jsp";
				});
				$('.addJilian').click(function(){
					window.location.href="<%=path%>/pages/superAdmin/addJilian.jsp";
				});
				$('.gladmin').click(function(){
					window.location.href="<%=path%>/pages/superAdmin/ListAdmin.jsp";
				});
			}
			
			if(usertype=="admin")
			{
				if(limitnumber<=nowNum)
				{
					$('.addUser').attr("disabled",true);
					$('.addUser').text("开户数量已满");
				}
				$('.addJilian').hide();
				//$('.gladmin').hide();
				$('.addUser').click(function(){
					window.location.href="<%=path%>/pages/admin/addWorker.jsp?companyName=<%=companyName%>&companyType=<%=companyType%>";
				});
				$('.gladmin').click(function(){
					window.location.href="<%=path%>/pages/superAdmin/ListAdmin.jsp";
				});
			}
			
			$('.editPass').click(function(){
				window.location.href="<%=path%>/pages/common/editPassword.jsp?password=<%=password%>&id=<%=id%>";
			});
			
			
			
			
		});
	</script>
</body>
</html>
