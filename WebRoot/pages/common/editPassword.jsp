<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML>
<html>
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/editpassword.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>

<title>密码修改</title>
</head>
 
<body>
<!-- 导航条界面开始 -->
<%@ include file="../../pages/common/navbar.jsp" %>
<!-- 导航条界面结束 -->

<div class="table1">
	<table  class="table1" >
	
		<tr>
			<td colspan="2" class="title"> <h2>修改密码：</h2></td>
		</tr>
		<tr>
			<td class="miaoshu">当前密码：</td>
			<td class="pwd"><input class="form-control beforePassword" type="text" name="beforePassword"></td>
		</tr>
		<tr>
			<td class="miaoshu">新密码：</td>
			<td class="newpwd1"><input class="form-control newPass" type="password"></td>
		</tr>
		<tr>
			<td class="miaoshu">确认密码：</td>
			<td class="newpwd2"><input class="form-control newPassAgain" type="password"></td>
		</tr>
		<tr>
			<td colspan="2"><input class="btn btn-lg btn-primary btn-block editPass" type="button" value="修改密码"/></td>
		</tr>
	</table>
</div>

<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
</footer>
<%
	int id = Integer.parseInt(request.getParameter("id")); 
	String beforePass = request.getParameter("password"); 
 %>

	<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path %>/js/md5.js"></script>
	<script src="<%=path %>/js/common.js"></script>
	<script type="text/javascript">
		$(function(){
			
			var id = <%=id %>;
			var beforePass = "<%=beforePass%>";
			var nowPass = "";
			
			var newPass = "";
			var newPassAgain = "";
			
			var isRightBeforePass = false;
			var isRightNewPassAgain = false;
			
			$('.beforePassword').blur(function(){
				nowPass = pwd($('.beforePassword').val());/* 获取当前输入的当前密码 */
				if(beforePass!=nowPass){
					alert("当前密码输入不正确！！！");
				}
				else{
					isRightBeforePass = true;
				}
			});
			
			$('.newPassAgain').blur(function(){
				
				newPass = $('.newPass').val();
				newPassAgain = $('.newPassAgain').val();
			
				if(newPass!=newPassAgain){
					alert("两次输入密码不一样！！！");
				}
				else{
					isRightNewPassAgain = true;
				}
			});
			
			$('.editPass').click(function(){
				if(isRightBeforePass&&isRightNewPassAgain){
					updatePassword(id,newPass);
				}
			});
			
		});
	</script>
</body>

</html>