<%@page import="com.tridiots.dao.impl.UserDAOImpl"%>
<%@page import="com.tridiots.dao.UserDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="en">
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>增加员工</title>
	<link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/admin/addWorker.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
</head>
<body>

	<!-- 导航条界面开始 -->
	<%@ include file="../../pages/common/navbar.jsp" %>
	<!-- 导航条界面结束 -->

<div class="table1">
	<table class="table1">
		<tr>
			<td colspan="2" class="title"><h2>开员工账户</h2></td>
		</tr>
		<tr>
			<td class="miaoshu">公司名称</td>
			
			<td><input type="text" class="form-control companyName" value="查询管理员的公司名称" disabled="disabled" name="companyName"></td>
		</tr>
		<tr>
			<td class="miaoshu">公司类型</td>
			<td><input type="text" class="form-control companyType" value="查询管理员的公司类型" disabled="disabled" name="companyType"></td>
		</tr>
		<tr>
			<td class="miaoshu">员工账号名称</td>
			<td><input type="text" class="form-control workerAcount" required="required" name="workerAcount"></td>
		</tr>
		<tr>
			<td class="miaoshu">员工姓名</td>
			<td><input type="text" class="form-control workerName" required="required" name="workerName"></td>
		</tr>
		<tr>
			<td class="miaoshu">员工职位</td>
			<td><input type="text" class="form-control position" name="position"></td>
		</tr>
		<tr>
			<td class="miaoshu">密码</td>
			<td><input class="form-control workerPassword" type="password" value="123456" name="password"></td>
		</tr>
		
		
		<tr>
			<td colspan="2"><button class="btn btn-lg btn-primary btn-block createWorkerButton">创建员工</button></td>
		</tr>
		
	</table>

</div>

<footer style="text-align: center;margin-top: 20px;">
    <%@ include file="../../pages/common/copyright.jsp" %>
</footer>
<%
   	String name = user.getUsername();
   	String zh = user.getAcountnumber();
	String companyName = new String(request.getParameter("companyName").getBytes("ISO-8859-1"),"utf-8");
	String companyType = new String(request.getParameter("companyType").getBytes("ISO-8859-1"),"utf-8"); 
%>
<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
<script src="<%=path %>/js/admin.js"></script>
	
<script type="text/javascript">
	$(function(){
		var zh = '<%=zh%>';
		var name = '<%=name%>';
		$('.companyName').val('<%=companyName%>');
		$('.companyType').val('<%=companyType%>');
			
		$('.createWorkerButton').click(function(){
			var allowInsertWorkerAcount = false;
			var allowInsertWorkerAcountBynum = false;
			var allowInsertWorkerName = false;
			
			allowInsertWorkerAcountBynum=findNum(zh,allowInsertWorkerAcount);
			
			var companyName1 = $('.companyName').val();
			var companyType1 = $('.companyType').val();
			var workerAcount = $('.workerAcount').val();
			var workerName = $('.workerName').val();
			var position = $('.position').val();
			var workerPassword = $('.workerPassword').val();
			var createby = zh;
			if(workerAcount=="")
			{
				alert("员工账号必填");
			}
			else{
				allowInsertWorkerAcount = isRepeateWorkerAcount(workerAcount,allowInsertWorkerAcount);
			}	
			
			if(workerName=="")
			{
				alert("员工姓名必填");
			}
			else{
				allowInsertWorkerName = true;
			}	
			
			if(allowInsertWorkerAcount&&allowInsertWorkerName&&allowInsertWorkerAcountBynum)
			{
				addWorker(companyName1,companyType1,workerAcount,workerName,workerPassword,position,zh);
			}
				
		});
	});
</script>
</body>
</html>