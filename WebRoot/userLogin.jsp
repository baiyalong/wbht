<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
    
  <head>
  	<link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户登录</title>
    <link href="bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/userlogin.css"/>
  </head>
  
  <!-- <body class="backgro"> -->
  <body>
  
    <div class="container xiachen text-center">
       <div style="margin-left: -50px;"><br><img src="imgs/Logo.png"></div>
      <form class="form-signin" role="form" action="UserServlet" method="post">
        <h2 class="form-signin-heading">用户登录</h2>
        
        <!-- start -->
      <div class="form-group">
			<!-- <label class="fontStyleCommon fontStyle">真实姓名</label> -->
			
			<div class="control-group">
				<div class="controls">
					<div class="input-group">
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-user">
							</span>
						</span>
						<input type="text" name="acountnumber" class="form-control" placeholder="请输入您的账号" required autofocus>
					</div>
				</div>
			</div>
		</div>
		
		<div class="form-group">
			<!-- <label class="fontStyleCommon fontStyle">真实姓名</label> -->
			
			<div class="control-group">
				<div class="controls">
					<div class="input-group">
						<span class="input-group-addon">
							<span class="glyphicon glyphicon-lock">
							</span>
						</span>
						<input type="password" name="password" class="form-control" placeholder="请输入您的密码" required>
					</div>
				</div>
			</div>
		</div>
        <!-- end -->
        <!-- <label class="checkbox">
          <input type="checkbox" value="remember-me">记住我
        </label> -->
        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
      </form>

    </div> <!-- /container -->
    <footer style="text-align: center;margin-top: 20px;">
          <%@ include file="pages/common/copyright.jsp" %>
      </footer>
      
  </body>
</html>