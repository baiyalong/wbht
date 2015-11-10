<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html>
<html lang="en">
<head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>查看全部节点</title>
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
	<div class="row" id="alljilian">
                <table class="table table-bordered table-hover table-striped" id="table table-bordered table-hover table-striped">
                	<thead>
	                    <tr class="tablecolor">
	                        <th>序号</th>
	                        <th>一级节点</th>
	                        <th>二级节点</th>
	                        <th>所属类型</th>
	                        <th>操作</th>
	                    </tr>
	                </thead>
	                <tbody id="alljilian_table_body">
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

<script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
<script src="<%=path %>/js/superAdmin.js"></script>
<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	
<script type="text/javascript">
	$(function(){
		var path = '<%=path%>';
		loadAllJilianNode(0,20,true,path);
	});
</script>
</body>
</html>