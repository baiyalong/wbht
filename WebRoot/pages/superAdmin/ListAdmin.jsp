<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% 
	String path = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>查看全部员工</title>
	<link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
    <style type="text/css">
		.tablecolor{ color:#00F;}
	</style>
</head>
<body>

	<!-- 导航条界面开始 -->
	<%@ include file="../../pages/common/navbar.jsp" %>
	<!-- 导航条界面结束 -->
	<div class="container">
	<div class="table-responsive" id="alladmin">
                <table class="table table-bordered table-hover table-striped" id="table table-bordered table-hover table-striped">
                	<thead>
	                    <tr class="tablecolor">
	                        <th>序号</th>
	                        <th>账号</th>
	                        <th>姓名</th>
	                        <th>类型</th>
	                        <th>公司</th>
	                        <th>开户数量</th>
	                        <th>创建者</th>
	                        <th>删除</th>
	                    </tr>
	                </thead>
	                <tbody id="alladmin_table_body">
							<!-- Ajax填充 -->
				    </tbody>
            	</table>
            	
            	<div class="text-center">
	            	<ul id="index-bar" class="pagination">
						<!-- Ajax填充分页 -->
					</ul>
				</div>
      </div>
</div>
<footer style="text-align: center;margin-top: 20px;">
    <%@ include file="../../pages/common/copyright.jsp" %>
</footer>
<%
   	String usertype = user.getUsertype();
   	String zh = user.getAcountnumber();
%>
<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
<script src="<%=path %>/js/superAdmin.js"></script>
<script src="<%=path %>/js/admin.js"></script>
<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	
<script type="text/javascript">
	$(function(){
		var path = '<%=path%>';
		var usertype2 = '<%=usertype%>';
		var zh = '<%=zh%>';
		if(usertype2=="superadmin")
			loadAdmin(0,20,true,usertype2,path);
		else
			loadWorker(0,20,true,usertype2,path,zh);
	});
</script>
</body>
</html>