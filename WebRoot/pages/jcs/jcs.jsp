<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.HtDAO"%>
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
    <title>决策树</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/jilian.css"/>
  </head>
  
  <body>
  	
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      
      	<div class="row">
			<%
     			 HtDAO htDao = new HtDAOImpl();
     			 List<Node> nodeList = htDao.listNode("决策树");
	
				 int nodeLen = nodeList.size();   
				 //int erjiLen = 0;   			 
     		%>
			
			<!-- 一二级菜单开始 -->
				<%
	     			/*  HtDAO htDaocd = new HtDAOImpl();
	     			 List<Node> nodeListcd = htDaocd.listNode("合同");
		
					 int nodeLencd = nodeListcd.size();  */  
					 //int erjiLen = 0;   			 
	     		%>	
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
	        	<a id="addJcs" href="addJcs.jsp" 
	        	class="btn btn-primary"><i class='glyphicon glyphicon-plus'></i>&nbsp;增加</a>
	            <a id="sousuo" data-toggle="modal" href="#sousuoModal" 
	            class="btn btn-primary"><i class='glyphicon glyphicon-search'></i>&nbsp;搜索</a>
            </div>
        </div>
      	<!-- <div class="row">
                <div><button id="addJcs" data-toggle="modal" data-target="#jcsModal" class="btn btn-primary  btn-lg col-xs-5 col-sm-5 col-md-5 col-lg-5"><span class='glyphicon glyphicon-pencil'></span>&nbsp;&nbsp;增加决策树数据</button></div>
                <div><button id="sousuo" data-toggle="modal" data-target="#sousuoModal" class="btn btn-primary btn-lg col-xs-5 col-xs-offset-2 col-sm-5 col-sm-offset-2 col-md-5 col-md-offset-2 col-lg-5 col-lg-offset-2"><span class='glyphicon glyphicon-search'></span>&nbsp;&nbsp;搜索决策树数据</button></div>
        </div> -->
        <div class="row" style="margin-top: 10px;">
            	<div class="allJcs_table_body" >
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
     	
     	<!-- 对比表格modal开始 -->
			<div class="modal fade" id="duibiModal" tabindex="-1" role="dialog" aria-labelledby="htModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="htModalLabel">对比</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div id="duibiModalBody">
						      		<div style="width: 100%;">
							      		<!-- <span style="width: 20%;float:left;font-family: '微软雅黑';font-size:18px;padding-right: 0px;margin-right: 0px;">标&nbsp;&nbsp;&nbsp;题</span> -->
							      		<div><input type="text" class="form-control" placeholder="输入标题"></div>
										<!-- <div style="width: 80%;padding-left: 0px;margin-left: 0px;" class="pull-right"><input type="text" class="form-control"></div> -->
							      	</div>
						      		<br>
						      		<table class="table table-bordered table-striped table-hover">
						      		<% for(int i=0;i<11;i++){%>
						      			<tr>
						      			<%for(int j=0;j<7;j++){ %>
						      				<td><%=(i+1)%>--<%=(j+1)%></td>
						      			<%} %>
						      			</tr>
						      		<%} %>
						      		</table>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						        <button type="button" id="quxiao" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
					    </div>
				  </div>
			</div>
			<!-- 对比表格modal结束 -->
     	
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
			<div class="modal fade" id="sousuoModal" tabindex="-1" role="dialog" aria-labelledby="jcsModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="jcsModalLabel">搜索决策树数据</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="ht">
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
									  <dt>标题</dt>
									  <dd><textarea class="form-control biaotisousuo"></textarea></dd>
									  <dt>要点</dt>
									  <dd><textarea class="form-control yaodiansousuo"></textarea></dd>
									  <dt>案例</dt>
									  <dd><textarea class="form-control alsousuo"></textarea></dd>
									  <!-- <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p> -->
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoJcsConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuo" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索合同modal结束 -->
     	
     	
     	
     		<!-- 增加决策树modal开始 -->
			<div class="modal fade" id="jcsModal" tabindex="-1" role="dialog" aria-labelledby="jcsModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="jcsModalLabel">增加决策树数据</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<!-- 折叠组件开始 -->
									  
								  <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										          	主体
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel">
										      <div class="panel-body">
										      	<!-- 主体开始 -->
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
													  <dd><textarea class="form-control biaoti"></textarea></dd>
													  <dt>要点</dt>
									  				  <dd><textarea class="form-control yaodian"></textarea></dd>
									  				  <dt>案例</dt>
													  <dd><textarea class="form-control al"></textarea></dd>
													  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
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
													  <!-- <dt>适用地区</dt>
													  <dd>
													  	<select multiple="multiple" class="form-control sydq_add" name="sydqname">
													  		<option value="全国">全国</option>
													  		<option value="北京">北京</option>
													  		<option value="上海">上海</option>
													  		<option value="杭州">杭州</option>
													  		<option value="江苏">江苏</option>
													  		<option value="重庆">重庆</option>
													  		<option value="内蒙">内蒙</option>
													  		<option value="黑龙江">黑龙江</option>
													  	</select>
													  </dd> -->
													  <dt>关键词</dt>
													  <dd><input type="text" class="form-control gjc_add" value=""></dd>
													  <dt>备注</dt>
													  <dd><input type="text" class="form-control bz_add" value=""></dd>
												</dl>
						      		
										      	<!-- 主体结束 -->
										      </div>
										    </div>
										  </div>
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										          	营业税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      	<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control yy_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control yy_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control yy_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control yy_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control yy_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control yy_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control yy_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control yy_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control yy_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control yy_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										           	企业所得税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control qy_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control qy_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control qy_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control qy_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control qy_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control qy_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control qy_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control qy_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control qy_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control qy_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  <!-- ////////////// -->
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4" aria-expanded="false" aria-controls="collapse4">
										           	土地增值税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse4" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control tdzz_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control tdzz_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control tdzz_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control tdzz_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control tdzz_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control tdzz_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control tdzz_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control tdzz_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control tdzz_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control tdzz_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  <!-- //////////// -->
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5" aria-expanded="false" aria-controls="collapse5">
										           	增值税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse5" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control zz_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control zz_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control zz_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control zz_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control zz_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control zz_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control zz_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control zz_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control zz_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control zz_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6" aria-expanded="false" aria-controls="collapse6">
										           	契税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse6" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control q_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control q_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control q_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control q_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control q_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control q_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control q_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control q_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control q_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control q_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7" aria-expanded="false" aria-controls="collapse7">
										           	个人所得税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse7" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control grsd_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control grsd_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control grsd_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control grsd_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control grsd_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control grsd_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control grsd_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control grsd_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control grsd_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control grsd_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse8" aria-expanded="false" aria-controls="collapse8">
										           	房产税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse8" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control fc_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control fc_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control fc_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control fc_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control fc_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control fc_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control fc_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control fc_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control fc_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control fc_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse9" aria-expanded="false" aria-controls="collapse9">
										           	土地使用税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse9" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control tdsy_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control tdsy_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control tdsy_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control tdsy_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control tdsy_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control tdsy_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control tdsy_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control tdsy_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control tdsy_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control tdsy_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  
										  <div class="panel panel-default">
										    <div class="panel-heading">
										      <h4 class="panel-title">
										        <a data-toggle="collapse" data-parent="#accordion" href="#collapse10" aria-expanded="false" aria-controls="collapse10">
										           	印花税
										        </a>
										        <span class="glyphicon glyphicon-chevron-down pull-right"></span>
										      </h4>
										    </div>
										    <div id="collapse10" class="panel-collapse collapse" role="tabpanel">
										      <div class="panel-body">
										      		<!-- 营业税开始 -->
										      		<dl class="dl-horizontal">
										      		      <dt>筹划点1</dt>
														  <dd><textarea class="form-control yh_chd1"></textarea></dd>
														  <dt>条件1</dt>
														  <dd><textarea class="form-control yh_tj1"></textarea></dd>
														  <dt>筹划点2</dt>
														  <dd><textarea class="form-control yh_chd2"></textarea></dd>
														  <dt>条件2</dt>
														  <dd><textarea class="form-control yh_tj2"></textarea></dd>
														  <dt>筹划点3</dt>
														  <dd><textarea class="form-control yh_chd3"></textarea></dd>
														  <dt>条件3</dt>
														  <dd><textarea class="form-control yh_tj3"></textarea></dd>
														  
														  <dt>误区</dt>
														  <dd><textarea class="form-control yh_wq"></textarea></dd>
														  <dt>风险应对方案</dt>
														  <dd><textarea class="form-control yh_fx"></textarea></dd>
														  <dt>案例</dt>
														  <dd><textarea class="form-control yh_al"></textarea></dd>
														  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
														  <dt>法规</dt>
														  <dd><textarea class="form-control yh_fg"></textarea></dd>
														  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>
										  
								  </div>
									  
						      	<!-- 折叠组件结束 -->	
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmAddJcs" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
						        <button type="button" id="quxiao" class="btn btn-default" data-dismiss="modal">取消</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加合同modal结束 -->
          	
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
     <script src="<%=path1 %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path1 %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path1 %>/js/jcs.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			////////////导航条//////////////
			$('.jcsNav').hide();
			//////////////////////////////
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			var servletpath = "/usr/share/tomcat/webapps/wbht/fileupload/";
			///////////////////权限问题开始/////////////////////
			if(usertype=="worker")
			{
				$('#addJcs').hide();
			}
			///////////////////权限问题结束/////////////////////
			loadJcs(0,1,true,null,null,null,null,zh,companyName,usertype,servletpath);
			
			var nodeLen = <%=nodeLen%>;
			var yiji = '<%=nodeList.get(0).getYijinode()%>';
			var yiji = "1";
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
			////////////////////触发对比模态表格开始//////////////////////
						/* $(".erji_cd option[value=对比]").change(function(){
							alert("123");
							$('#duibiModal').modal('show');
						}); */
						$(".erji_cd").change(function(){
							if($(this).val()=='对比')
								$('#duibiModal').modal('show');
						});
						////////////////////触发对比模态表格结束//////////////////////
			////////////////////////////////////////////////////
			$('#confirmAddJcs').click(function(){
				var erji = "<%=nodeList.get(0).getErjinode().split("，")[0]%>";
				for(var i=1;i<=nodeLen;i++)
				{   var erjiClass = "erji_add_"+i; 
					
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				
				//var htlx = $('.htlx').val();
				var biaoti = $('.biaoti').val();
				var yaodian = $('.yaodian').val();
				var al = $('.al').val();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				//var sydq = $('.sydq_add').val();
				//var sydqname = new String(sydq);
				var gjc = $('.gjc_add').val();
				var bz = $('.bz_add').val();
				
				if(biaoti=="")
				{
					alert("标题必须输入，否则不能保存");
					return false;
				}
				else if(yaodian=="")
				{
					alert("要点必须输入，否则不能保存");
					return false;
				}
// 				else if(al=="")
// 				{
// 					alert("案例必须输入，否则不能保存");
// 					return false;
// 				}
// 				else if(gslx==null)
// 				{
// 					alert("公司类型必须选择，否则不能保存");
// 					return false;
// 				}
// 				else if(gjc=="")
// 				{
// 					alert("关键词必须输入，否则不能保存");
// 					return false;
// 				}
				else
				{
					addFlag = true;
				}
				//alert(htlx+"-->"+sydqname);
				///////////////1营业税////////////
				var yy_chd1 = $('.yy_chd1').val();
				var yy_tj1 = $('.yy_tj1').val();
				var yy_chd2 = $('.yy_chd2').val();
				var yy_tj2 = $('.yy_tj2').val();
				var yy_chd3 = $('.yy_chd3').val();
				var yy_tj3 = $('.yy_tj3').val();
				var yy_al = $('.yy_al').val();
				var yy_wq = $('.yy_wq').val();
				var yy_fx = $('.yy_fx').val();
				var yy_fg = $('.yy_fg').val();
				////////////2企业所得税//////////////
				var qy_chd1 = $('.qy_chd1').val();
				var qy_tj1 = $('.qy_tj1').val();
				var qy_chd2 = $('.qy_chd2').val();
				var qy_tj2 = $('.qy_tj2').val();
				var qy_chd3 = $('.qy_chd3').val();
				var qy_tj3 = $('.qy_tj3').val();
				var qy_al = $('.qy_al').val();
				var qy_wq = $('.qy_wq').val();
				var qy_fx = $('.qy_fx').val();
				var qy_fg = $('.qy_fg').val();
				/////////////3土地增值税////////////
				var tdzz_chd1 = $('.tdzz_chd1').val();
				var tdzz_tj1 = $('.tdzz_tj1').val();
				var tdzz_chd2 = $('.tdzz_chd2').val();
				var tdzz_tj2 = $('.tdzz_tj2').val();
				var tdzz_chd3 = $('.tdzz_chd3').val();
				var tdzz_tj3 = $('.tdzz_tj3').val();
				var tdzz_al = $('.tdzz_al').val();
				var tdzz_wq = $('.tdzz_wq').val();
				var tdzz_fx = $('.tdzz_fx').val();
				var tdzz_fg = $('.tdzz_fg').val();
				///////////4增值税/////////////////////
				var zz_chd1 = $('.zz_chd1').val();
				var zz_tj1 = $('.zz_tj1').val();
				var zz_chd2 = $('.zz_chd2').val();
				var zz_tj2 = $('.zz_tj2').val();
				var zz_chd3 = $('.zz_chd3').val();
				var zz_tj3 = $('.zz_tj3').val();
				var zz_al = $('.zz_al').val();
				var zz_wq = $('.zz_wq').val();
				var zz_fx = $('.zz_fx').val();
				var zz_fg = $('.zz_fg').val();
				/////////////5契税/////////////////
				var q_chd1 = $('.q_chd1').val();
				var q_tj1 = $('.q_tj1').val();
				var q_chd2 = $('.q_chd2').val();
				var q_tj2 = $('.q_tj2').val();
				var q_chd3 = $('.q_chd3').val();
				var q_tj3 = $('.q_tj3').val();
				var q_al = $('.q_al').val();
				var q_wq = $('.q_wq').val();
				var q_fx = $('.q_fx').val();
				var q_fg = $('.q_fg').val();
				///////////6个人所得税/////////////////
				var grsd_chd1 = $('.grsd_chd1').val();
				var grsd_tj1 = $('.grsd_tj1').val();
				var grsd_chd2 = $('.grsd_chd2').val();
				var grsd_tj2 = $('.grsd_tj2').val();
				var grsd_chd3 = $('.grsd_chd3').val();
				var grsd_tj3 = $('.grsd_tj3').val();
				var grsd_al = $('.grsd_al').val();
				var grsd_wq = $('.grsd_wq').val();
				var grsd_fx = $('.grsd_fx').val();
				var grsd_fg = $('.grsd_fg').val();
				///////////7房产税/////////////////
				var fc_chd1 = $('.fc_chd1').val();
				var fc_tj1 = $('.fc_tj1').val();
				var fc_chd2 = $('.fc_chd2').val();
				var fc_tj2 = $('.fc_tj2').val();
				var fc_chd3 = $('.fc_chd3').val();
				var fc_tj3 = $('.fc_tj3').val();
				var fc_al = $('.fc_al').val();
				var fc_wq = $('.fc_wq').val();
				var fc_fx = $('.fc_fx').val();
				var fc_fg = $('.fc_fg').val();
				///////////8土地使用税//////////////
				var tdsy_chd1 = $('.tdsy_chd1').val();
				var tdsy_tj1 = $('.tdsy_tj1').val();
				var tdsy_chd2 = $('.tdsy_chd2').val();
				var tdsy_tj2 = $('.tdsy_tj2').val();
				var tdsy_chd3 = $('.tdsy_chd3').val();
				var tdsy_tj3 = $('.tdsy_tj3').val();
				var tdsy_al = $('.tdsy_al').val();
				var tdsy_wq = $('.tdsy_wq').val();
				var tdsy_fx = $('.tdsy_fx').val();
				var tdsy_fg = $('.tdsy_fg').val();
				///////////9印花税///////////////
				var yh_chd1 = $('.yh_chd1').val();
				var yh_tj1 = $('.yh_tj1').val();
				var yh_chd2 = $('.yh_chd2').val();
				var yh_tj2 = $('.yh_tj2').val();
				var yh_chd3 = $('.yh_chd3').val();
				var yh_tj3 = $('.yh_tj3').val();
				var yh_al = $('.yh_al').val();
				var yh_wq = $('.yh_wq').val();
				var yh_fx = $('.yh_fx').val();
				var yh_fg = $('.yh_fg').val();
				
				
				addJcs(yiji,erji,biaoti,yaodian,gslx,gjc,bz,al,zh,companyName,usertype,
					  yy_chd1,yy_tj1,yy_chd2,yy_tj2,yy_chd3,yy_tj3,yy_al,yy_wq,yy_fx,yy_fg,
					  qy_chd1,qy_tj1,qy_chd2,qy_tj2,qy_chd3,qy_tj3,qy_al,qy_wq,qy_fx,qy_fg,
					  tdzz_chd1,tdzz_tj1,tdzz_chd2,tdzz_tj2,tdzz_chd3,tdzz_tj3,tdzz_al,tdzz_wq,tdzz_fx,tdzz_fg,
					  zz_chd1,zz_tj1,zz_chd2,zz_tj2,zz_chd3,zz_tj3,zz_al,zz_wq,zz_fx,zz_fg,
					  q_chd1,q_tj1,q_chd2,q_tj2,q_chd3,q_tj3,q_al,q_wq,q_fx,q_fg,
					  grsd_chd1,grsd_tj1,grsd_chd2,grsd_tj2,grsd_chd3,grsd_tj3,grsd_al,grsd_wq,grsd_fx,grsd_fg,
					  fc_chd1,fc_tj1,fc_chd2,fc_tj2,fc_chd3,fc_tj3,fc_al,fc_wq,fc_fx,fc_fg,
					  tdsy_chd1,tdsy_tj1,tdsy_chd2,tdsy_tj2,tdsy_chd3,tdsy_tj3,tdsy_al,tdsy_wq,tdsy_fx,tdsy_fg,
					  yh_chd1,yh_tj1,yh_chd2,yh_tj2,yh_chd3,yh_tj3,yh_al,yh_wq,yh_fx,yh_fg);
			});
			/////////////////////////////////////////////////////
			
			
			$('#sousuoJcsConfirm').click(function(){
				var gjc = $('.gjcsousuo').val();
				var gslx = $('input[name="options1"]:checked').val();/* 公司类型 */
				//var htlx = $('.htlxsousuo').val();
				var biaoti = $('.biaotisousuo').val();
				var yaodian = $('.yaodiansousuo').val();
				var alsousuo = $('.alsousuo').val();
				
				loadJcs(0,1,true, gjc, biaoti, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo);
				
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.gslx>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.biaotisousuo').val("");
				 $('.yaodiansousuo').val("");
				 $('.alsousuo').val("");
				 
			});
			
			$('#quxiaosousuo').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.gslx>label').removeClass("active");
				 $('.gjcsousuo').val("");
				 $('.biaotisousuo').val("");
				 $('.yaodiansousuo').val("");
				 $('.alsousuo').val("");
			});
			
			
			/////////////////////////////////////////////////
			
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
				loadJcsByJilian(0,1,true, yijicd, erji,zh,companyName,usertype,servletpath);
			});
			/////////////////////////////////////////////////
		});
	</script>
  </body>
</html>