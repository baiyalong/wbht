<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.dao.HtDAO"%>
<%@page import="com.tridiots.vo.UserVO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <title>税种</title>
    <link href="<%=path %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/taxType/taxType.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/jilian.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/common.css"/>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条开始 -->
		<header class="navbar navbar-inverse navColor navbar-fixed-top" role="banner">
		  <div class="container">
		    <div class="navbar-header">
		      <button id="navButton" class="navbar-toggle navbar-right" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="../../systemSelect.jsp" class="navbar-brand" style="color:white;padding-left:0px;">返回首页</a>
		    </div>
		    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation" style="cursor:pointer;">
		      <ul class="nav navbar-nav fisrtNav">
		        <li>
		          <a class="tdzzTax"><span>土地增值税</span></a>
		        </li>
		        <li>
		          <a class="qysdTax"><span>企业所得税</span></a>
		        </li>
		        <li>
		          <a class="yyTax"><span>营业税及附加</span></a>
		        </li>
		        <li>
		          <a class="zzTax"><span>增值税</span></a>
		        </li>
		        <li>
		          <a class="sevenTax"><span>个人所得税</span></a>
		        </li>
		        <li>
		          <a class="fcTax"><span>房产税</span></a>
		        </li>
		        <li>
		          <a class="sixTax"><span>契税</span></a>
		        </li>
		        <li>
		          <a class="eightTax"><span>土地使用税</span></a>
		        </li>
		        <li>
		          <a class="yhTax"><span>印花税</span></a>
		        </li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right navzhuxiao">
		          <%-- <%
		          	UserVO user =  (UserVO)session.getAttribute("userVo");
		           if(user!=null)
		          	{ 
		          		String name = user.getUsername();
		          %>
			          <li class="nameClass">
			            <a><%=name%></a>
			          </li>
		          <%
		          	} 
		          %> --%>
		          <li>
		             <a href="../../UserServlet?method=landOut" style="color:white" class="pull-right">[注销]</a>
		          </li>
		      </ul>
		    </nav>
		  </div>
		</header>
		<!-- 导航条结束 -->	
      
      	<div class="row">
			<%
     			 HtDAO htDao = new HtDAOImpl();
     			 List<Node> nodeList = htDao.listNode("单税种");
	
				 int nodeLen = nodeList.size();   
				 //int erjiLen = 0;   			 
     		%>
			
			<!-- 一二级菜单开始 -->
				<div class="yierjiCaidan col-md-8 col-lg-8 htjilian">
	      		  	<font class="yijidp">一级</font>
	      		  	<select class="yiji_cd form-control">
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
	      		  	<div class="erjijiediandiv"><font class="erjijiedian">二级</font></div>
				  		<%
	      		  			for(int i=0;i<nodeLen;i++)
	      		  			{
	      		  				Node node = nodeList.get(i);
	      		  				String[] erjiNode = node.getErjinode().split("，");
	      		  				int erLen = erjiNode.length;
	      		  				if(i==0)
	      		  				{
	      		  		 %>
					      		  	<select class="erji_cd_<%=i+1 %> erji_cd form-control"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
					  	<% 		
					  			}
					  			if(i>=1)
							  	{ %>
								  	<select class="erji_cd_<%=i+1 %> erji_cd form-control" style="display: none;"> 
					      		  		<% for(int j=0;j<erLen;j++){ %>
								  		<option value="<%=erjiNode[j] %>"><%=erjiNode[j] %></option> 
								  		<% }%>
								  	</select> 
							  	<%
							  	}
				  			} 
				  		%>
				  	
				  	<button class="btn btn-primary" id="jilianCdSearch">进入</button>
				</div>
				
				
			<!-- 一二级菜单结束 -->
			<!-- 一二级菜单开始 -->
			<%-- <%@ include file="../../pages/common/yierjiCaidan.jsp" %> --%>
			<!-- 一二级菜单结束 -->
			
			<div class="addAndSearch col-md-3 col-md-offset-1 col-lg-3 col-lg-offset-1">
	        	<!-- <a id="addTaxType" data-toggle="modal" href="#taxTypeModal" 
	        	class="btn btn-primary"><i class='glyphicon glyphicon-plus'></i>&nbsp;增加</a> -->
	        	<a id="addTaxType" href="addTaxType.jsp" 
	        	class="btn btn-primary"><i class='glyphicon glyphicon-plus'></i>&nbsp;增加</a>
	            <a id="sousuo" data-toggle="modal" href="#sousuoModal" 
	            class="btn btn-primary"><i class='glyphicon glyphicon-search'></i>&nbsp;搜索</a>
            </div>
        </div>
      	<!-- <div class="row">
                <div><button id="addTaxType" data-toggle="modal" data-target="#taxTypeModal" class="btn btn-primary  btn-lg col-xs-5 col-sm-5 col-md-5 col-lg-5">增加税种数据</button></div>
                <div><button id="sousuo" data-toggle="modal" data-target="#sousuoModal" class="btn btn-primary btn-lg col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2">搜索税种数据</button></div>
        </div> -->
        <div class="row" style="margin-top: 10px;">
            	<div class="allTaxType_table_body" style="width:100%;">
            			<!-- Ajax填充 -->
            	</div>
            	
            	<div class="text-center">
            	<ul id="index-bar" class="pagination">
					<!-- Ajax填充分页 -->
				</ul>
				</div>
      	</div>
      
      
		<!-- 版权说明开始 -->
		<footer style="text-align: center;margin-top: 20px;">
          <%@ include file="../../pages/common/copyright.jsp" %>
     	</footer>
     	<!-- 版权说明结束 -->
     	
     		<!-- 查看法规条文modal开始 -->
			<div class="modal fade" id="fgtwModal" tabindex="-1" role="dialog" aria-labelledby="htModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="htModalLabel">查看法规条文</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div id="viewFgtwModalBody">
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						        <button type="button" id="quxiao" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
					    </div>
				  </div>
			</div>
			<!-- 查看法规条文modal结束 -->
     	
     		<!-- 查看全文modal开始 -->
			<div class="modal fade" id="viewAnliModal" tabindex="-1" role="dialog" aria-labelledby="htModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="htModalLabel">查看全文</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div id="viewHtModalBody">
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						        <button type="button" id="quxiao" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
					    </div>
				  </div>
			</div>
			<!-- 查看全文modal结束 -->
			
     		<!-- 搜索法规modal开始 -->
			<div class="modal fade" id="sousuoModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="ruleModalLabel">搜索税种</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="rule">
						      		<dl class="dl-horizontal">
						      		  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcsousuo" value=""></dd>
									  
									  <dt>公司类型</dt>
									  <dd>
									  	<div class="btn-group gslx" data-toggle="buttons">
									  	  <label class="btn btn-primary"> 
											<input type="radio" name="options1" id="qb" autocomplete="off" value="外资、内资、上市"> 全部
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options1" id="wz" autocomplete="off" value="外资"> 外资
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options1" id="nz" autocomplete="off" value="内资"> 内资
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options1" id="ss" autocomplete="off" value="上市"> 上市
										  </label>
									   </div>
									 </dd>
									  
									  <dt>适用地区</dt>
									  <dd>
									  <% String[] dqarea = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydq">
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
									  
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group sz" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yy" autocomplete="off" value="营业税及其附加"> 营业税及其附加
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="zz" autocomplete="off" value="增值税"> 增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="fc" autocomplete="off" value="房产税"> 房产税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s6" autocomplete="off" value="契税"> 契税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s8" autocomplete="off" value="土地使用税"> 土地使用税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yh" autocomplete="off" value="印花税"> 印花税
										  </label>
										</div>
									  	
									  </dd>
									 
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoSZConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuo" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索税种modal结束 -->
			
			<!-- 增加税种modal开始 -->
			<div class="modal fade" id="taxTypeModal" tabindex="-1" role="dialog" aria-labelledby="szModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="szModalLabel">增加税种</h4>
						      </div>
						      
						      <div class="modal-body addSZ">
						      	<div class="sz">
						      		<dl class="dl-horizontal">
						      		  <dt>一级节点<dt>
						      		  <dd> 
						      		  	<select class="form-control yiji_add"> 
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
						      		  </dd>
						      		  <dt>二级节点</dt>
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
						      		  </dd>
									  <dt>标题</dt>
									  <dd><input type="text" class="form-control bt" value=""></dd>
									  <dt>筹划点</dt>
									  <dd><textarea class="form-control chd"></textarea></dd>
									  <dt>条件</dt>
									  <dd><textarea class="form-control tj"></textarea></dd>
									  <dt>案例</dt>
									  <dd><textarea class="form-control al"></textarea></dd>
									  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
									  <dt>误区</dt>
									  <dd><textarea class="form-control wq"></textarea></dd>
									  <dt>风险应对方案</dt>
									  <dd><textarea class="form-control fx"></textarea></dd>
									  <dt>法规</dt>
									  <dd><textarea class="form-control fg"></textarea></dd>
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
									  <% String[] dqarea2 = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydq_add" name="sydqname">
									  		<option value="全国">全国</option>
									  		<% for(int i=0;i<dqarea2.length;i++)
									  			{
									  		%>
									  		<option value="<%=dqarea2[i] %>"><%=dqarea2[i] %></option>
									  		<% 
									  			}
									  		 %>
									  	</select>
									  </dd>
									  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjc_add" value=""></dd>
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
									  <dd><input type="text" class="form-control bz_add" value=""></dd>
									</dl>
						      		
						      	</div>
						      </div>
						      
							      <div class="modal-footer">
							      	<button type="button" id="confirmAddSz" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
							        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加法规modal结束 -->
			
			<!-- 删除案例modal开始 -->
			<div id="confirmModal" class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="delModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="delModalLabel">确定删除</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="text-center delFont" style="font-family: 微软雅黑;font-size:20px;letter-spacing: 3px;color:red;">
						      		确定要删除选中数据吗？
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmDel" class="btn btn-default btn-primary btn-confirm" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- shanchu案例modal结束 -->
			
			<%
		       	UserVO userFaguiKu =  (UserVO)session.getAttribute("userVo");
		       	String acountnumber = "";
		       	String companyName = "";
		       	String usertype = "";
		        if(userFaguiKu!=null)
		        { 
		            acountnumber = userFaguiKu.getAcountnumber();
		            companyName = userFaguiKu.getCompanyName();
		            usertype = userFaguiKu.getUsertype();
		             
		        }
		      %>
     </div> <!-- /container -->
     <script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	 <script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	 <script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	 <script src="<%=path %>/js/taxtype.js"></script>
	 <script type="text/javascript">
		$(function(){
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			var servletpath = "/usr/share/tomcat/webapps/wbht/fileupload/";
			///////////////////权限问题开始/////////////////////
			if(usertype=="worker")
			{
				$('#addTaxType').hide();
			}
			///////////////////权限问题结束/////////////////////
			var table = "landtax"; 
			loadTaxType(0,3,true,null,null,null,null,table,zh,companyName,usertype,servletpath);
			
			
			
			$('#sousuoSZConfirm').click(function(){
				var gjc = $('.gjcsousuo').val();
				var gslx = $('input[name="options1"]:checked').val();/* 公司类型 */
				//var sydq = $('.sydq').val();
				var sydq = $('.sydq').val();
				var sydqn = new String(sydq);
				var sz = $('input[name="options"]:checked').val();/* 税种 */
				
				loadTaxType(0,3,true,sz, sydqn, gjc, gslx,table,zh,companyName,usertype,servletpath);
				
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.gslx>label').removeClass("active");
				 $('.sz>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.sydq').val("");
				 
			});
			
			$('#quxiaosousuo').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.gslx>label').removeClass("active");
				 $('.sz>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.sydq').val("");
			});
			
			var nodeLen = <%=nodeLen%>;
			var yiji = '<%=nodeList.get(0).getYijinode()%>';
			$('.yiji_add').change(function(){
				
				yiji = $('.yiji_add').val(); 
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
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddSz').click(function(){
				var erji = "<%=nodeList.get(0).getErjinode().split("，")[0]%>";
				for(var i=1;i<=nodeLen;i++)
				{   var erjiClass = "erji_add_"+i; 
					
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				
				var bt = $('.bt').val();
				var chd = $('.chd').val();
				var tj = $('.tj').val();
				var al = $('.al').val();
				var wq = $('.wq').val();
				var fx = $('.fx').val();
				var fg = $('.fg').val();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				var sydq = $('.sydq_add').val();
				var sydqname = new String(sydq);
				var gjc = $('.gjc_add').val();
				var sz = $('input[name="options_add"]:checked').val();/* 税种 */
				var bz = $('.bz_add').val();
				if(bt=="")
				{
					alert("标题必须输入，否则不能保存");
					return false;
				}
				else if(chd=="")
				{
					alert("筹划点必须输入，否则不能保存");
					return false;
				}
				else if(tj=="")
				{
					alert("条件必须输入，否则不能保存");
					return false;
				}
				else if(al=="")
				{
					alert("案例必须输入，否则不能保存");
					return false;
				}
				else if(fg=="")
				{
					alert("法规必须输入，否则不能保存");
					return false;
				}
				else if(gslx==null)
				{
					alert("公司类型必须选择，否则不能保存");
					return false;
				}
				else if(sydq==null)
				{
					alert("适用地区必须选择，否则不能保存");
					return false;
				}
				else if(gjc=="")
				{
					alert("关键词必须输入，否则不能保存");
					return false;
				}
				else if(sz==null)
				{
					alert("税种必须选择，否则不能保存");
					return false;
				}
				else
				{
					addFlag = true;
				}
				
				if(wq!="")
				{
					if(fx=="")
					{
						alert("存在误区，风险应对方案必须输入，否则不能保存");
						return false;
					}
				}
				else
				{
					if(fx!="")
					{
						alert("无误区，风险应对方案不可输入，否则不能保存");
						return false;
					}
				}
				addTaxType(yiji,erji,bt,chd,tj,al,wq,fx,fg,gslx,sydqname,gjc,sz,bz,zh,companyName,usertype);
			});
			/////////////////////////////////////////////////////
			//////////////导航栏开始//////////////
			$('.tdzzTax').click(function(){
				$('.tdzzTax>span').css('color','red');
				$('.fisrtNav li>a:not(.tdzzTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"土地增值税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.qysdTax').click(function(){
				$('.qysdTax>span').css('color','red');
				$('.fisrtNav li>a:not(.qysdTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"企业所得税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.yyTax').click(function(){
				$('.yyTax>span').css('color','red');
				$('.fisrtNav li>a:not(.yyTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"营业税及附加",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.zzTax').click(function(){
				$('.zzTax>span').css('color','red');
				$('.fisrtNav li>a:not(.zzTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"增值税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.fcTax').click(function(){
				$('.fcTax>span').css('color','red');
				$('.fisrtNav li>a:not(.fcTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"房产税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.sixTax').click(function(){
				$('.sixTax>span').css('color','red');
				$('.fisrtNav li>a:not(.sixTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"契税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.sevenTax').click(function(){
				$('.sevenTax>span').css('color','red');
				$('.fisrtNav li>a:not(.sevenTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"个人所得税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.eightTax').click(function(){
				$('.eightTax>span').css('color','red');
				$('.fisrtNav li>a:not(.eightTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"土地使用税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			$('.yhTax').click(function(){
				$('.yhTax>span').css('color','red');
				$('.fisrtNav li>a:not(.yhTax)>span').css('color','white');
				if($(document).width()<=767)//480即为480px
        		{
					$('#navButton').click();
				}
				loadTaxType(0,3,true,"印花税",null,null,null,table,zh,companyName,usertype,servletpath);
			});
			
			////////////////////////////////////////////////
			var nodeLen = <%=nodeLen%>;
			var yijicd = '<%=nodeList.get(0).getYijinode()%>';
			
			$('.yiji_cd').change(function(){
				
				yijicd = $('.yiji_cd').val(); 
				<%
				boolean flag1 = false;
				for(int m=0;m<nodeLen&&!flag1;m++) 
				{
				
					String yijinode = nodeList.get(m).getYijinode();
				%>
					var yijinode = "<%=yijinode%>";
					//alert(yijinode);
					if(yijicd=='<%=yijinode %>')
					{
						$(".htjilian>select:not(.erji_cd_"+<%=m+1%>+")").hide();
						$('.yiji_cd').show();
						$(".erji_cd_"+<%=m+1%>).show();
						flag1 = false;
					}
				<%
				}
				%>
			});
			$('#jilianCdSearch').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				var erji = "<%=nodeList.get(0).getErjinode().split("，")[0]%>";
				for(var i=1;i<=nodeLen;i++)
				{   var erjiClass = "erji_cd_"+i; 
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				loadTaxByJilian(0,3,true, yijicd, erji, table,zh,companyName,usertype,servletpath);
			});
			/////////////////////////////////////////////////
			//////////////导航栏结束/////////////
		});
	 </script>
  </body>
</html>