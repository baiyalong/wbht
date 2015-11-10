<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.HtDAO"%>
<%@page import="com.tridiots.domain.TaxType"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.tridiots.vo.UserVO"%>
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
    <title>合同控税</title>
    <link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
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
		      <a href="<%=path %>/systemSelect.jsp" class="navbar-brand">返回首页</a>
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
		             <a href="<%=path %>/UserServlet?method=landOut">[注销]</a>
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
      	
      	<%
   			 HtDAO htDao = new HtDAOImpl();
   			 List<Node> nodeList = htDao.listNode("单税种");

			 int nodeLen = nodeList.size();   
			 //int erjiLen = 0;   			 
   		%>
      
      	<!-- 更新sz开始 -->
		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">更新数据</h3>
						      	<div class="sz">
						      		<dl class="dl-horizontal">
						      		  <dt>一级节点<dt>
						      		  <dd>
						      		  	<select class="form-control yiji_addsz">
									  		<%
						      		  			for(int i=0;i<nodeLen;i++)
						      		  			{
						      		  				Node node = nodeList.get(i);
						      		  		 %>
									  				<option value="<%=node.getYijinode() %>"><%=node.getYijinode() %></option> 
									  		<%
									  			} 
									  		%> 
									  	</select>
						      		  <dd>
						      		  <dt>二级节点<dt>
						      		  <dd id="erji_add">
						      		  		<%
						      		  			for(int i=0;i<nodeLen;i++)
						      		  			{
						      		  				Node node = nodeList.get(i);
						      		  				String[] erjiNode = node.getErjinode().split("，");
						      		  				int erLen = erjiNode.length;
						      		  				if(i==0)
						      		  				{
						      		  		 %>
										      		  	<select class="form-control erji_add_<%=i+1 %>"> 
										      		  		<% for(int j=0;j<erLen;j++){ %>
													  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
													  		<% }%>
													  	</select> 
										  	<% 		
										  			}
										  			if(i>=1)
												  	{ %>
													  	<select class="form-control erji_add_<%=i+1 %>" style="display: none;"> 
										      		  		<% for(int j=0;j<erLen;j++){ %>
													  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
													  		<% }%>
													  	</select> 
												  	<%
												  	}
									  			} 
									  		%>
						      		  <dd>
									  <dt>标题</dt>
									  <dd><input type="text" class="form-control bt" value="${tax.title}"></dd>
									  <dt>筹划点</dt>
									  <dd><textarea class="form-control chd">${tax.planpoint}</textarea></dd>
									  <dt>条件</dt>
									  <dd><textarea class="form-control tj">${tax.condition}</textarea></dd>
									  <dt>案例</dt>
									  <dd><textarea class="form-control al">${tax.casetitle}</textarea></dd>
									  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
									  <dt>误区</dt>
									  <dd><textarea class="form-control wq">${tax.misunderstanding}</textarea></dd>
									  <dt>风险应对方案</dt>
									  <dd><textarea class="form-control fx">${tax.scheme}</textarea></dd>
									  <dt>法规</dt>
									  <dd><textarea class="form-control fg">${tax.ruletw}</textarea></dd>
									  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
									  <dt>公司类型</dt>
									  <dd>
									  	<div class="btn-group gslx_add" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options1_add" id="wz" autocomplete="off" value="外资"> 外资
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options1_add" id="nz" autocomplete="off" value="内资"> 内资
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options1_add" id="ss" autocomplete="off" value="上市"> 上市
										  </label>
									   </div>
									 </dd>									  
									  <dt>适用地区</dt>
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
									  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjc_add" value="${tax.keyword}"></dd>
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group sz" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="yy" autocomplete="off" value="营业税及所得"> 营业税及所得
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="zz" autocomplete="off" value="增值税"> 增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="fc" autocomplete="off" value="房产税"> 房产税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="s6" autocomplete="off" value="契税"> 契税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="s8" autocomplete="off" value="土地使用税"> 土地使用税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options_add" id="yh" autocomplete="off" value="印花税"> 印花税
										  </label>
										</div>
									  	
									  </dd>
									  
									  <dt>备注</dt>
									  <dd><input type="text" class="form-control bz_add" value="${tax.note}"></dd>
									</dl>
						      		
						      	</div>
						      
	        <div class="text-center">
	      		<button type="button" id="confirmEditTax" class="btn btn-default btn-primary btn-lg">确定</button>
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
          		TaxType tax =  (TaxType)request.getAttribute("tax");
          		String[] sydqX = null;
          		int len = 0;
          		if(tax!=null)
          		{
          			sydqX = tax.getArea().split(",");
          		}
          		len = sydqX.length;
          	 %>
     </div> <!-- /container -->
     <script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path %>/js/taxtype.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			//按照传过来的值选中一级二级和公司类型,注意表达式语言可以用在jQuery中
			var sydqSource = new Array();
			<%for(int i = 0;i<len;i++){%>
				sydqSource[<%=i%>]="<%=sydqX[i]%>";
				$(".sydq_add option[value="+sydqSource[<%=i%>]+"]").attr("selected",true);
			<%}%>
			
			
			/////////////////////////
			
			/* $(".sydq_add option[value='北京']").attr("selected",true);
			$(".sydq_add option[value='北京']").css("color","red") */
			
			
			var yijiSource = '${tax.firstnode}'; 
			var erjiSource = '${tax.secondnode}';
			$('.yiji_addsz').val(yijiSource);
			yiji = $('.yiji_addsz').val();
				//alert(yiji);
				<%
				boolean flag1 = false;
				for(int m=0;m<nodeLen&&!flag1;m++) 
				{
				
					String yijinode = nodeList.get(m).getYijinode();
				%>
					var yijinode = "<%=yijinode%>";
					//alert(yijinode);
					if(yiji=='<%=yijinode %>')
					{
						$("#erji_add>select:not(.erji_add_"+<%=m+1%>+")").hide();
						//$('.yiji_add').show();
						$(".erji_add_"+<%=m+1%>).show();
						$(".erji_add_"+<%=m+1%>).val(erjiSource);
						fla1g = false;
					}
				<%
				}
				%>
			/////////////////////////选中对应的一二级节点结束//////////////////////////
			
			var gslxSource = '${tax.companytype}';
			$("input[name='options1_add'][value="+gslxSource+"]").attr("checked",true);
			$("input[name='options1_add'][value="+gslxSource+"]").parent().addClass("active");
			
			
			var szSource = '${tax.taxtype}';
			$("input[name='options_add'][value="+szSource+"]").attr("checked",true);
			$("input[name='options_add'][value="+szSource+"]").parent().addClass("active");
			////////////////////////////欠揍结束/////////////////
			
			var yiji = yijiSource;
			$('.yiji_addsz').click(function(){
				
				yiji = $('.yiji_addsz').val(); 
				<%
				boolean flag = false;
				for(int m=0;m<nodeLen&&!flag;m++) 
				{
				
					String yijinode = nodeList.get(m).getYijinode();
				%>
					var yijinode = "<%=yijinode%>";
					//alert(yijinode);
					if(yiji=='<%=yijinode %>')
					{
						$("#erji_add>select:not(.erji_add_"+<%=m+1%>+")").hide();
						//$('.yiji_add').show();
						$(".erji_add_"+<%=m+1%>).show();
						flag = false;
					}
				<%
				}
				%>
			});
			
			////////////////////////////////////////////////////
			$('#confirmEditTax').click(function(){
				var erji = "";
				for(var i=1;i<=10;i++)
				{   var erjiClass = "erji_add_"+i; 
					
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				
				var bt = $('.bt').val();
				var chd = $('.chd').val();
				//var sydq = $('.sydq_add').val();
				//var sydqname = new String(sydq);
				var tj = $('.tj').val();
				var al = $('.al').val();
				var wq = $('.wq').val();
				var fx = $('.fx').val();
				var fg = $('.fg').val();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				
				var sydq = $('.sydq_add').val();
				var sydqname = new String(sydq);
				
				var gjc = $('.gjc_add').val();
				
				var sz = $('input[name="options_add"]:checked').val();/* 公司类型 */
				var bz = $('.bz_add').val();
				//////////////
				var id = '${tax.id}';
				//////////
				
				eDitTax(id,yiji,erji,bt,chd,tj,al,wq,fx,fg,gslx,sydqname,gjc,sz,bz);
			});
			/////////////////////////////////////////////////////
			
		});
	</script>
  </body>
</html>