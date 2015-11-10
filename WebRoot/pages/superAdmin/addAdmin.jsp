<%@page import="com.tridiots.dao.impl.UserDAOImpl"%>
<%@page import="com.tridiots.dao.UserDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="en">
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>增加管理员</title>
	<link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/superadmin/addAdmin.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
</head>
<body>

	<!-- 导航条界面开始 -->
	<%@ include file="../../pages/common/navbar.jsp" %>
	<!-- 导航条界面结束 -->

<div class="table1">
	<table class="table1">
		<tr>
			<td colspan="2" class="title"><h2>创建管理员账户</h2></td>
		</tr>
		<tr>
			<td class="miaoshu">公司名称</td>
			
			<td><input type="text" class="form-control companyName" value="鹿邑房地产公司" name="companyName"></td>
		</tr>
		<tr>
			<td class="miaoshu">公司类型</td>
			<td>
				<select class="form-control companyType" name="companyType">
					<option value="内资">内资</option>
					<option value="外资">外资</option>
				</select>
			</td> 
		</tr>
		<tr>
			<td class="miaoshu">账号名称</td>
			<td><input type="text" class="form-control adminAcount" required="required" name="adminAcount"></td>
		</tr>
		<tr>
			<td class="miaoshu">用户名</td>
			<td><input type="text" class="form-control adminName" required="required" name="adminName"></td>
		</tr>
		<tr>
			<td class="miaoshu">密码</td>
			<td><input class="form-control adminPassword" type="password" value="123456" name="password"></td>
		</tr>
		<tr>
			<td class="miaoshu">开户数量</td>
			<td><input type="text" class="form-control workerNumber" required="required" name="workerNumber"></td>
		</tr>
		
		<tr>
			<td colspan="2"><button class="btn btn-lg btn-primary btn-block createAdminButton">创建</button></td>
		</tr>
		
	</table>
</div>


<footer style="text-align: center;margin-top: 20px;">
    <%@ include file="../../pages/common/copyright.jsp" %>
</footer>
<%
   	String zh = user.getAcountnumber();
%>
<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
<script src="<%=path %>/js/superAdmin.js"></script>
	
<script type="text/javascript">
	$(function(){
		$('.createAdminButton').click(function(){
			var companyName = $('.companyName').val();
			var companyType = $('.companyType').val();
			var adminAcount = $('.adminAcount').val();
			var adminName = $('.adminName').val();
			var adminPassword = $('.adminPassword').val();
			var workerNumber = $('.workerNumber').val();
			var createby = '<%=zh%>';
			
			var allowInsertCompany = false;
			var allowInsertAdminAccount = false;
			var allowInsert = false;
			
			if(companyName=="")
			{
				alert("公司名称必填！！！");
			}	
			else{
				//allowInsertCompany = isRepeateCompanyName(companyName, allowInsertCompany);
				allowInsertCompany = true;
			}
			
			if(adminAcount=="")
			{
				alert("账号名称必填！！！");
			}
			else{
				allowInsertAdminAccount = isRepeateAdminAcount(adminAcount, allowInsertAdminAccount);
			}
			
			if(adminName=="")
			{
				alert("管理员姓名必填！！！");
			}
			else{
				if(adminPassword=="")
				{
					alert("管理员密码必填！！！");
				}
				else{
					if(workerNumber=="")
					{
						alert("管理员开户数量必填！！！");
					}
					else{
						allowInsert = true;
					}
				}
			}
			
			if(allowInsertCompany&&allowInsertAdminAccount&&allowInsert)
			{
				addAdmin(companyName,companyType,adminAcount,adminPassword,workerNumber,adminName,createby);
			}
				
		});
	});
</script>
</body>
</html>