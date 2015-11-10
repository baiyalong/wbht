<%@page import="com.tridiots.domain.AnliKu"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path1 = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
 %>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案例库</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<!-- 导航条开始 -->
		<%-- <header class="navbar navbar-inverse navbar-fixed-top" role="banner">
		  <div class="container">
		    <div class="navbar-header">
		      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="<%=path1 %>/systemSelect.jsp" class="navbar-brand">返回首页</a>
		    </div>
		    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
		      <ul class="nav navbar-nav navbar-right" style="cursor:pointer;">
		          <%
		          	UserVO user =  (UserVO)session.getAttribute("userVo");
		           if(user!=null)
		          	{ 
		          		String name = user.getUsername();
		          %>
			          <li>
			            <a><%=name%></a>
			          </li>
		          <%
		          	} 
		          %>
		          <li>
		             <a href="<%=path1 %>/UserServlet?method=landOut">[注销]</a>
		          </li>
		          
		      </ul>
		    </nav>
		  </div>
		</header> --%>
		<!-- 导航条结束 -->
		<!-- 导航条界面结束 -->
		<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      	
      
      	<!-- 更新sz开始 -->
		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">更新数据</h3>
		      	<div class="anli">
	      		<dl class="dl-horizontal">
				  <dt>标题</dt>
				  <dd><input type="text" class="form-control bt" value="${tax.casetitle}"></dd>
				  <dt>案例</dt>
				  <dd><textarea type="text" class="form-control al">${tax.casecontent}</textarea></dd>
				   <dt>关键词</dt>
				  <dd><input type="text" class="form-control gjc" value="${tax.keyword}"></dd>
				  
				  <dt>税种</dt><!-- taxtype -->
				  <dd>
				  	<select multiple="multiple" class="form-control al_add sz" name="alname">
				  		<option value="土地增值税">土地增值税</option>
				  		<option value="企业所得税">企业所得税</option>
				  		<option value="营业税及其附加">营业税及其附加</option>
				  		<option value="增值税">增值税</option>
				  		<option value="个人所得税">个人所得税</option>
				  		<option value="房产税">房产税</option>
				  		<option value="契税">契税</option>
				  		<option value="土地使用税">土地使用税</option>
				  		<option value="印花税">印花税</option>
				  	</select>
				  </dd>
				  
				  <dt>适用地区</dt><!-- area -->
				  <dd>
				  <% String[] dqarea = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
				  	<select multiple="multiple" class="form-control sydq_add" name="sydqname">
				  		<option value="全国">全国</option>
				  		<% for(int i=0;i<dqarea.length;i++)
				  			{
				  		%>
				  		<option value="<%=dqarea[i] %>"><%=dqarea[i] %></option>
				  		<% 
				  			}
				  		 %>
				  	</select>
				  </dd>
				 
				  <dt>备注</dt>
				  <dd><input type="text" class="form-control bz" value="${tax.note}"></dd>
				</dl>
	      		
	      	</div>
						      
	        <div class="text-center">
	      		<button type="button" id="confirmEditAlk" class="btn btn-default btn-primary btn-lg">确定</button>
	        	<a type="button" id="quxiaoEdit" class="btn btn-default btn-lg" href="javascript:history.go(-1)">取消</a>
	        </div>
		</div>
      
		<!-- 版权说明开始 -->
		<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
     	</footer>
     	<!-- 版权说明结束 -->
     	
     	
			
			
			<!-- 更新合同modal结束 -->
			<%-- <%
	          	UserVO userAnli =  (UserVO)session.getAttribute("userVo");
	          	String acountnumber = "";
		        if(userAnli!=null)
		        { 
		            acountnumber = userAnli.getAcountnumber();
		        }
		        
          	%> --%>
          	<%
          		AnliKu tax =  (AnliKu)request.getAttribute("tax");
          		String[] sydqX = null;
          		int len = 0;
          		if(tax!=null)
          		{
          			sydqX = tax.getArea().split(",");
          		}
          		len = sydqX.length;
          		
          		String[] szX = null;
          		int lenSz = 0;
          		if(tax!=null)
          		{
          			szX = tax.getTaxtype().split(",");
          		}
          		lenSz = szX.length;
          		System.out.print(lenSz+"---->-->->"+tax.getTaxtype().split(",")[0]);
          	 %>
     </div> <!-- /container -->
     <script src="<%=path1 %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path1 %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path1 %>/js/anli.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			var path1 = "<%=path1 %>";
			//按照传过来的值选中一级二级和公司类型,注意表达式语言可以用在jQuery中
			/* 税种、适用地区 */
			var sydqSource = new Array();
			<%for(int i = 0;i<len;i++){%>
				sydqSource[<%=i%>]="<%=sydqX[i]%>";
				$(".sydq_add option[value="+sydqSource[<%=i%>]+"]").attr("selected",true);
			<%}%>			
			
			var szSource = new Array();
			<%for(int i = 0;i<lenSz;i++){%>
				szSource[<%=i%>]="<%=szX[i]%>";
				$(".sz option[value="+szSource[<%=i%>]+"]").attr("selected",true);
			<%}%>
			///////////////////////// --%>
			////////////////////////////欠揍结束/////////////////
			$('#confirmEditAlk').click(function(){
				var bt = $('.bt').val();
				var al = $('.al').val();
				var gjc = $('.gjc').val();
				
				var szn = $('.sz').val();
				var sz = new String(szn);
				
				var sydq = $('.sydq_add').val();
				var sydqname = new String(sydq);
				
				var bz = $('.bz').val();
				
				//////////////
				var id = '${tax.id}';
				//////////
				
				eDitAlk(id,bt,al,gjc,sz,sydqname,bz,path1);
			});
			/////////////////////////////////////////////////////
			
		});
	</script>
  </body>
</html>