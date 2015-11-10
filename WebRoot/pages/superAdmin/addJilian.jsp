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
	<title>录入级联数据</title>
	<link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/superadmin/addAdmin.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
</head>
<body>

	<!-- 导航条界面开始 -->
	<%@ include file="../../pages/common/navbar.jsp" %>
	<!-- 导航条界面结束 -->
	<!-- 更新sz开始 -->
		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">录入节点数据</h3>
		      	<div>
	      		<dl class="dl-horizontal">
				  <dt>一级节点</dt>
				  <dd><input type="text" class="form-control yijiData" autofocus style="width:80%;"></dd>
				  <dt>二级节点</dt>
				  <dd><input type="text" class="form-control erjiData" style="width:80%;"></dd>
				  <p class="help-block text-center" style="font-size: 15px;">一定要注意：二级节点数据之间以<font style="color:red;font-weight: bolder;">中文逗号</font>隔开</p>
				  <dt>所属类型</dt><!-- area -->
				  <dd>
				  	<select multiple class="form-control jilianType" style="width:80%;">
						<option value="合同控税">合同控税</option>
						<option value="决策树">决策树</option>
						<option value="单税种">单税种</option>
					</select>
				  </dd>
				</dl>
	      		
	      	</div>
						      
	        <div class="text-center">
	      		<button type="button" id="createJilianButton" class="btn btn-default btn-primary btn-lg" style="width:20%;">确定</button>
	        	<a type="button" id="quxiaoEdit" class="btn btn-default btn-lg" href="javascript:history.go(-1)" style="width:20%;margin-left:5%;">取消</a>
	        	<a type="button" id="viewJilianButton" class="btn btn-success btn-lg" style="width:20%;margin-left:5%;">查看所有节点</a>
	        </div>
		</div>

<footer style="text-align: center;margin-top: 20px;">
    <%@ include file="../../pages/common/copyright.jsp" %>
</footer>

<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
<script src="<%=path %>/js/superAdmin.js"></script>
	
<script type="text/javascript">
	$(function(){
		var path = '<%=path%>';
		$('#createJilianButton').click(function(){
			var yijiData = $('.yijiData').val();
			var erjiData = $('.erjiData').val();
			var jilianType = $('.jilianType').val();
			var type = new String(jilianType);
			
			var allowInsertJilian = false;
			
			if(yijiData=="")
			{
				alert("一级数据必填！！！");
			}	
			else
			{
				allowInsertJilian = isRepeateJilian(yijiData, allowInsertJilian);
			}
			if(erjiData=="")
			{
				alert("二级数据必填！！！");
			}
			if(jilianType==null){
				alert("类型必选");
			}
			
			if(allowInsertJilian)
			{
				addJilianData(yijiData,erjiData,type);
			}
		});
		
		$('#viewJilianButton').click(function(){
			window.location.href = path+"/pages/superAdmin/allJilianNode.jsp";
		});
		//$('[data-toggle=popover]').popover();
	});
</script>
</body>
</html>