<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.dao.HtDAO"%>
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
		<!-- 导航条结束 -->
		<!-- 导航条界面结束 -->
		<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->
      	
      	<%
   			 HtDAO htDao = new HtDAOImpl();
   			 List<Node> nodeList = htDao.listNode("合同控税");

			 int nodeLen = nodeList.size();   
			 //int erjiLen = 0;   			 
   		%>
      
      	<!-- 更新合同开始 -->
		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">更新数据</h3>
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
											  <dt>合同类型</dt>
											  <dd><textarea class="form-control htlx">${htDetail.htlx}</textarea></dd>
											  <dt>要点</dt>
							  				  <dd><textarea class="form-control yaodian">${htDetail.yaodian}</textarea></dd>
							  				  <dt>案例</dt>
							  				  <dd><textarea class="form-control al">${htDetail.al}</textarea></dd>
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
											  <dd><input type="text" class="form-control gjc_add" value="${htDetail.keyword}"></dd>
											  <dt>备注</dt>
											  <dd><input type="text" class="form-control bz_add" value="${htDetail.note}"></dd>
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
												  <dd><textarea class="form-control yy_chd1">${htDetail.yy_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control yy_tj1">${htDetail.yy_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control yy_chd2">${htDetail.yy_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control yy_tj2">${htDetail.yy_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control yy_chd3">${htDetail.yy_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control yy_tj3">${htDetail.yy_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control yy_wq">${htDetail.yy_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control yy_fx">${htDetail.yy_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control yy_al">${htDetail.yy_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control yy_fg">${htDetail.yy_fg}</textarea></dd>
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
												  <dd><textarea class="form-control qy_chd1">${htDetail.qy_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control qy_tj1">${htDetail.qy_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control qy_chd2">${htDetail.qy_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control qy_tj2">${htDetail.qy_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control qy_chd3">${htDetail.qy_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control qy_tj3">${htDetail.qy_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control qy_wq">${htDetail.qy_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control qy_fx">${htDetail.qy_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control qy_al">${htDetail.qy_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control qy_fg">${htDetail.qy_fg}</textarea></dd>
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
												  <dd><textarea class="form-control tdzz_chd1">${htDetail.tdzz_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control tdzz_tj1">${htDetail.tdzz_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control tdzz_chd2">${htDetail.tdzz_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control tdzz_tj2">${htDetail.tdzz_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control tdzz_chd3">${htDetail.tdzz_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control tdzz_tj3">${htDetail.tdzz_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control tdzz_wq">${htDetail.tdzz_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control tdzz_fx">${htDetail.tdzz_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control tdzz_al">${htDetail.tdzz_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control tdzz_fg">${htDetail.tdzz_fg}</textarea></dd>
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
												  <dd><textarea class="form-control zz_chd1">${htDetail.zz_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control zz_tj1">${htDetail.zz_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control zz_chd2">${htDetail.zz_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control zz_tj2">${htDetail.zz_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control zz_chd3">${htDetail.zz_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control zz_tj3">${htDetail.zz_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control zz_wq">${htDetail.zz_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control zz_fx">${htDetail.zz_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control zz_al">${htDetail.zz_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control zz_fg">${htDetail.zz_fg}</textarea></dd>
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
												  <dd><textarea class="form-control q_chd1">${htDetail.q_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control q_tj1">${htDetail.q_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control q_chd2">${htDetail.q_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control q_tj2">${htDetail.q_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control q_chd3">${htDetail.q_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control q_tj3">${htDetail.q_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control q_wq">${htDetail.q_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control q_fx">${htDetail.q_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control q_al">${htDetail.q_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control q_fg">${htDetail.q_fg}</textarea></dd>
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
												  <dd><textarea class="form-control grsd_chd1">${htDetail.grsd_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control grsd_tj1">${htDetail.grsd_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control grsd_chd2">${htDetail.grsd_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control grsd_tj2">${htDetail.grsd_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control grsd_chd3">${htDetail.grsd_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control grsd_tj3">${htDetail.grsd_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control grsd_wq">${htDetail.grsd_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control grsd_fx">${htDetail.grsd_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control grsd_al">${htDetail.grsd_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control grsd_fg">${htDetail.grsd_fg}</textarea></dd>
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
												  <dd><textarea class="form-control fc_chd1">${htDetail.fc_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control fc_tj1">${htDetail.fc_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control fc_chd2">${htDetail.fc_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control fc_tj2">${htDetail.fc_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control fc_chd3">${htDetail.fc_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control fc_tj3">${htDetail.fc_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control fc_wq">${htDetail.fc_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control fc_fx">${htDetail.fc_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control fc_al">${htDetail.fc_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control fc_fg">${htDetail.fc_fg}</textarea></dd>
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
												  <dd><textarea class="form-control tdsy_chd1">${htDetail.tdsy_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control tdsy_tj1">${htDetail.tdsy_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control tdsy_chd2">${htDetail.tdsy_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control tdsy_tj2">${htDetail.tdsy_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control tdsy_chd3">${htDetail.tdsy_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control tdsy_tj3">${htDetail.tdsy_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control tdsy_wq">${htDetail.tdsy_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control tdsy_fx">${htDetail.tdsy_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control tdsy_al">${htDetail.tdsy_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control tdsy_fg">${htDetail.tdsy_fg}</textarea></dd>
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
												  <dd><textarea class="form-control yh_chd1">${htDetail.yh_chd1}</textarea></dd>
												  <dt>条件1</dt>
												  <dd><textarea class="form-control yh_tj1">${htDetail.yh_tj1}</textarea></dd>
												  <dt>筹划点2</dt>
												  <dd><textarea class="form-control yh_chd2">${htDetail.yh_chd2}</textarea></dd>
												  <dt>条件2</dt>
												  <dd><textarea class="form-control yh_tj2">${htDetail.yh_tj2}</textarea></dd>
												  <dt>筹划点3</dt>
												  <dd><textarea class="form-control yh_chd3">${htDetail.yh_chd3}</textarea></dd>
												  <dt>条件3</dt>
												  <dd><textarea class="form-control yh_tj3">${htDetail.yh_tj3}</textarea></dd>
												  
												  <dt>误区</dt>
												  <dd><textarea class="form-control yh_wq">${htDetail.yh_wq}</textarea></dd>
												  <dt>风险应对方案</dt>
												  <dd><textarea class="form-control yh_fx">${htDetail.yh_fx}</textarea></dd>
												  <dt>案例</dt>
												  <dd><textarea class="form-control yh_al">${htDetail.yh_al}</textarea></dd>
												  <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p>
												  <dt>法规</dt>
												  <dd><textarea class="form-control yh_fg">${htDetail.yh_fg}</textarea></dd>
												  <p class="help-block text-center">一定要注意：法规文号之间以英文分号“;”隔开</p>
								      		 </dl>
								      		 <!-- 营业税结束 -->
								      </div>
								    </div>
								  </div>
								  
						  </div>
							  
				      	<!-- 折叠组件结束 -->	
				      
				      <div class="text-center">
				      	<button type="button" id="confirmEditHt" class="btn btn-default btn-primary btn-lg">确定</button>
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
          	
     </div> <!-- /container -->
     <script src="<%=path %>/bootstrap-3.2.0/js/jquery-1.11.1.js"></script>
	<script src="<%=path %>/bootstrap-3.2.0/js/bootstrap.js"></script>
	<script src="<%=path %>/js/ht.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			//按照传过来的值选中一级二级和公司类型,注意表达式语言可以用在jQuery中
			//alert('${htDetail.domainKey}');
			var yijiSource = '${htDetail.firstnode}'; 
			var erjiSource = '${htDetail.secondnode}';
			//////////////选中对应的一二级节点开始/////////////////////////
			$('.yiji_add').val(yijiSource);
			
			yiji = $('.yiji_add').val();
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
			//TODO选中二级节点
			
			var gslxSource = '${htDetail.gslx}';
			$("input[name='options1_add'][value="+gslxSource+"]").attr("checked",true);
			$("input[name='options1_add'][value="+gslxSource+"]").parent().addClass("active");
			////////////////////////////欠揍结束/////////////////
			
			var yiji = yijiSource;
			$('.yiji_add').click(function(){
				
				yiji = $('.yiji_add').val();
				//alert(yiji);
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
			$('#confirmEditHt').click(function(){
				var erji = "";
				for(var i=1;i<=10;i++)
				{   var erjiClass = "erji_add_"+i; 
					
					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}
				
				var htlx = $('.htlx').val();
				var yaodian = $('.yaodian').val();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				//var sydq = $('.sydq_add').val();
				//var sydqname = new String(sydq);
				var gjc = $('.gjc_add').val();
				var bz = $('.bz_add').val();
				var al = $('.al').val();
				
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
				
				//////////////
				var id = '${htDetail.domainKey}';
				//////////
				
				eDitHt(id,yiji,erji,htlx,yaodian,gslx,gjc,bz,al,
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
			
		});
	</script>
  </body>
</html>