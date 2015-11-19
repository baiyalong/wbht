<%@page import="com.tridiots.domain.Node"%>
<%@page import="com.tridiots.dao.impl.HtDAOImpl"%>
<%@page import="com.tridiots.dao.HtDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
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
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/jilian.css"/>
  </head>

  <body>

  	<div class="container">
    	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/navbar.jsp" %>
		<!-- 导航条界面结束 -->

      		<%
     			 HtDAO htDao = new HtDAOImpl();
     			 List<Node> nodeList = htDao.listNode("合同控税");

				 int nodeLen = nodeList.size();
     		%>
			<!-- 增加案例modal开始 -->
			<div class="modal fade" id="anliModal" tabindex="-1" role="dialog" aria-labelledby="anliModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="anliModalLabel">增加案例</h4>
						      </div>

						      <div class="modal-body">
						      	<div class="anli">
						      		<dl class="dl-horizontal">
									  <dt>标题</dt>
									  <dd><input type="text" class="form-control btDetail" value="" required></dd>
									  <dt>案例</dt>
									  <dd><textarea type="text" class="form-control alDetail" value="" required></textarea></dd>
									   <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcDetail" value=""></dd>

									  <dt>税种</dt>
									  <dd>
									  	<select multiple="multiple" class="form-control al_add szDetail" name="alname">
									  		<option value="增值税">增值税</option>
									  		<option value="企业所得税">企业所得税</option>
									  		<option value="营业税及其附加">营业税及其附加</option>
											<option value="土地增值税">土地增值税</option>
									  		<option value="个人所得税">个人所得税</option>
									  		<option value="房产税">房产税</option>
									  		<option value="契税">契税</option>
									  		<option value="土地使用税">土地使用税</option>
									  		<option value="印花税">印花税</option>
									  	</select>
									  </dd>

									  <dt>适用地区</dt>
									  <dd>
									  <% String[] dqarea = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydq_addDetail" name="sydqname">
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
									  <dd><input type="text" class="form-control bzDetail" value=""></dd>
									</dl>

						      	</div>
						      </div>

						      <div class="modal-footer">
						      	<button type="button" id="confirmAddAnli" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加案例modal结束 -->

			 <!-- 增加法规modal开始 -->
			<div class="modal fade" id="ruleModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="ruleModalLabel">增加法规</h4>
						      </div>

						      <div class="modal-body">
						      	<div class="rule">
						      		<dl class="dl-horizontal">
									  <dt>法规文号</dt>
									  <dd><input type="text" class="form-control fgwhDetail" value="" name="fgwh"></dd>
									  <dt>法规条文</dt>
									  <dd><textarea type="text" class="form-control fgtwDetail" value="" name="fgtw"></textarea></dd>
									  <dt>法规全文</dt>
									  <dd>
										  <div id="uploadify">
										  	 <button id="uploadify">上传文件hlll</button>

										  	 <div id="fileQueue">
										  	 </div>
									       </div>


									       <!--  <input type="file" name="uploadify" id="uploadify" />
									        <p>
									            <a href="javascript:$('#uploadify').uploadifyUpload()">上传</a>|
									            <a href="javascript:$('#uploadify').uploadifyClearQueue()">取消上传</a>
									        </p> -->
									  </dd>
									  <dt>适用地区</dt>
									  <dd>
									  <% String[] dqarea2 = {"北京","上海","天津","重庆","黑龙江","吉林","辽宁","大连","山东","青岛","河北","内蒙古","新疆","青海","宁夏","甘肃","陕西","山西","河南","湖北","湖南","四川","贵州","云南","西藏","江西","安徽","江苏","浙江","宁波","福建","厦门","广东","深圳","广西","海南"}; %>
									  	<select multiple="multiple" class="form-control sydqFGDetail" name="sydq">
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
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group szFGDetail" data-toggle="buttons">
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
									  <dt>关键词</dt>
									  <dd><input type="text" class="form-control gjcFGDetail" value="" name="gjc"></dd>
									  <dt>备注</dt>
									  <dd><input type="text" class="form-control bzFGDetail" value="" name="bz"></dd>
									</dl>

						      	</div>
						      </div>

						      <div class="modal-footer">
						      	<button type="button" id="confirmAddRule" class="btn btn-default btn-primary" data-dismiss="modal">确定</button>
						        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 增加法规modal结束 -->

     		<!-- 增加合同modal开始 -->
     		<div style="margin-top:-15px;">
			<h3 class="text-center" style="color:blue;font-family: 微软雅黑">增加数据</h3>
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
										      		  <dt>一级节点</dt>
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
										      		  </dl></div>
													  <div class="panel-body"><dl class="dl-horizontal"><dt>标题</dt>
													  <dd><textarea class="form-control htlx"></textarea></dd>
													  <dt>要点</dt>
									  				  <dd><textarea class="form-control yaodian"></textarea></dd>
									  				  <dt>案例</dt>
													  <dd>
													  	<button id="addAnli" data-toggle="modal" data-target="#anliModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
													  </dd>
													  <dd><div class="addAnlizt"></div></dd>
													  <dt>公司类型</dt>
													  <dd>
													  	<div class="btn-group gslx_add" data-toggle="buttons">
													  	  <label class="btn btn-primary">
														    <input type="radio" name="options1_add" id="qb" autocomplete="off" value="外资、内资、上市"> 全部
														  </label>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addyyal"></div></dd>
														  <!-- <dd><textarea class="form-control yy_al"></textarea></dd> -->
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addyyfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addqyal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addqyfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addtdzzal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addtdzzfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addzzal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addzzfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addqal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addqfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addgrsdal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addgrsdfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addfcal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addfcfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addtdsyal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addtdsyfg"></div></dd>
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
														  <dd>
														  <button id="addAnliyy" data-toggle="modal" data-target="#anliModal" class="btn btn-primary addAnli"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加案例</button>
														  </dd>
														  <dd><div class="addyhal"></div></dd>
														  <dt>法规</dt>
														  <dd>
														  <button id="addfaguiyy" data-toggle="modal" data-target="#ruleModal" class="btn btn-primary"><span class='glyphicon glyphicon-plus'></span>&nbsp;&nbsp;增加法规</button>
														  </dd>
														  <dd><div class="addyhfg"></div></dd>
										      		 </dl>
										      		 <!-- 营业税结束 -->
										      </div>
										    </div>
										  </div>

								  </div>

						      	<!-- 折叠组件结束 -->

							      <div class="text-center">
							      	<button type="button" id="confirmAddHt" class="btn btn-default btn-primary btn-lg">确定</button>
							        <a type="button" id="quxiaoEdit" class="btn btn-default btn-lg" href="javascript:history.go(-1)">取消</a>
							      </div>
						    </div>
			<!-- 增加合同modal结束 -->

			<!-- 版权说明开始 -->
			<footer style="text-align: center;margin-top: 20px;">
	          <%@ include file="../../pages/common/copyright.jsp" %>
	     	</footer>
	     	<!-- 版权说明结束 -->

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
	<script src="<%=path %>/js/ht.js"></script>
	<script src="<%=path %>/js/anli.js"></script>
	<script src="<%=path %>/js/faguiku.js"></script>
	<script type="text/javascript" src="<%=path %>/jqueryuploadify3.2/jquery.uploadify.min.js"></script>
	<script type="text/javascript" src="<%=path %>/js/bootstrap-paginator.min.js"></script>

	<script type="text/javascript">
		$(function(){
			//////////////////////////////
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';



			/////////////////////////增加法规开始///////////////////////////////
			var fgqwFileName = "";
			var extName = "";//后缀名
			var fgwh1 = "";
			$('.fgwhDetail').blur(function(){
				fgwh1 = $('.fgwhDetail').val();// 法规文号,用于上传文件的文件名 //
			});

			/* 文件上传 */
			$("#uploadify").uploadify({
                 //开启调试
		        'debug' : false,
		        //是否自动上传
		        'auto':true,
		        //超时时间
		        'successTimeout':99999,
		        //附带值
		        'formData':{
		            'userid':'用户id',
		            'username':'用户名',
		            'rnd':'加密密文'
		        },
		        //flash
		        'swf': "../../jqueryuploadify3.2/uploadify.swf",
		        //不执行默认的onSelect事件
		        'overrideEvents' : ['onDialogClose'],
		        //文件选择后的容器ID
		        'queueID':'uploadfileQueue',
		        //服务器端脚本使用的文件对象的名称 $_FILES个['upload']
		        'fileObjName':'upload',
		        //上传处理程序
		        'uploader':'../../UploadFileServlet',
		        //浏览按钮的背景图片路径
		        'buttonImage':'../../imgs/upload.png',
		        //浏览按钮的宽度
		        'width':'120',
		        //浏览按钮的高度
		        'height':'120',
		        //expressInstall.swf文件的路径。
		        'expressInstall':'../../jqueryuploadify3.2/expressInstall.swf',
		        //在浏览窗口底部的文件类型下拉菜单中显示的文本
		        'fileTypeDesc':'支持的格式：',
		        //允许上传的文件后缀
		        'fileTypeExts':'*.jpg;*.jpge;*.gif;*.png;*.doc;*.txt;*.docx;*.pdf',
		        //上传文件的大小限制
		        'fileSizeLimit':'100MB',
		        //上传数量
		        'queueSizeLimit' : 25,
		        //每次更新上载的文件的进展
		        'onUploadProgress' : function(file, bytesUploaded, bytesTotal, totalBytesUploaded, totalBytesTotal) {
		             //有时候上传进度什么想自己个性化控制，可以利用这个方法
		             //使用方法见官方说明
		        },
		        //选择上传文件后调用
		        'onSelect' : function(file) {
		        	fgqwFileName = file.name;
		        	//fgwh1 = $('.fgwh').val();// 法规文号 //
		        	//alert(fgqwFileName);
		        	if (fgqwFileName.lastIndexOf(".") >= 0) {
						extName = fgqwFileName.substring(fgqwFileName.lastIndexOf("."));
					}
		        	$("#fileQueue").append("<p>"+file.name+"</P>");
		            $('#uploadify').uploadify('upload');      //添加这行代码才可以访问servlet上传文件
		        },
                'onUploadStart': function (file) {
                    $("#uploadify").uploadify("settings", "formData", fgwh1);
                    //在onUploadStart事件中，也就是上传之前，把参数写好传递到后台。
                } ,
		        //返回一个错误，选择文件的时候触发
		        'onSelectError':function(file, errorCode, errorMsg){
		            switch(errorCode) {
		                case -100:
		                    alert("上传的文件数量已经超出系统限制的"+$('#uploadify').uploadify('settings','queueSizeLimit')+"个文件！");
		                    break;
		                case -110:
		                    alert("文件 ["+file.name+"] 大小超出系统限制的"+$('#uploadify').uploadify('settings','fileSizeLimit')+"大小！");
		                    break;
		                case -120:
		                    alert("文件 ["+file.name+"] 大小异常！");
		                    break;
		                case -130:
		                    alert("文件 ["+file.name+"] 类型不正确！");
		                    break;
		            }
		        },
		        //检测FLASH失败调用
		        'onFallback':function(){
		            //alert("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
		        },
		        //上传到服务器，服务器返回相应信息到data里
		        'onUploadSuccess':function(file, data, response){
		         	$('#' + file.id).find('.data').html(' - 完成');
                	if(data==1){
                	alert("上传成功");
                	}else{
                	alert("上传失败");
                	}
                	//alert(data);


		        }
		    });

		    var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddRule').click(function(){
				var bt = "";/* 标题*/

				if($('#collapseTwo').hasClass('in'))
				{
					$('.rule input:first').addClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btyyfgDetail').val()+extName;/* 标题*/
					$('.addyyfg').append(bt+";");
				}
				if($('#collapseThree').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').addClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btqyfgDetail').val()+extName;/* 标题*/
					$('.addqyfg').append(bt+";");
				}
				if($('#collapse4').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').addClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.bttdzzfgDetail').val()+extName;/* 标题*/
					$('.addtdzzfg').append(bt+";");
					//alert(bt+"-->bt");
					alert($('.addtdzzfg').text());
				}
				if($('#collapse5').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').addClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btzzfgDetail').val()+extName;/* 标题*/
					$('.addzzfg').append(bt+";");
				}
				if($('#collapse6').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').addClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btqfgDetail').val()+extName;/* 标题*/
					$('.addqfg').append(bt+";");
				}
				if($('#collapse7').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').addClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btgrsdfgDetail').val()+extName;/* 标题*/
					$('.addgrsdfg').append(bt+";");
				}
				if($('#collapse8').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').addClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.btfcfgDetail').val()+extName;/* 标题*/
					$('.addfcfg').append(bt+";");
				}
				if($('#collapse9').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').addClass('bttdsyfgDetail');
					$('.rule input:first').removeClass('btyhfgDetail');

					bt = $('.bttdsyfgDetail').val()+extName;/* 标题*/
					$('.addtdsyfg').append(bt+";");
				}
				if($('#collapse10').hasClass('in'))
				{
					$('.rule input:first').removeClass('btyyfgDetail');
					$('.rule input:first').removeClass('btqyfgDetail');
					$('.rule input:first').removeClass('bttdzzfgDetail');
					$('.rule input:first').removeClass('btzzfgDetail');
					$('.rule input:first').removeClass('btqfgDetail');
					$('.rule input:first').removeClass('btgrsdfgDetail');
					$('.rule input:first').removeClass('btfcfgDetail');
					$('.rule input:first').removeClass('bttdsyfgDetail');
					$('.rule input:first').addClass('btyhfgDetail');

					bt = $('.btyhfgDetail').val()+extName;/* 标题*/
					$('.addyhfg').append(bt+";");
				}
				var fgwh = $('.fgwhDetail').val();// 法规文号 //
				var fgtw = $('.fgtwDetail').val();// 法规条文 //
				var sydqn = $('.sydqFGDetail').val();// 适用地区 //
				var sydq = new String(sydqn);
				var sz = $('input:radio:checked').val();// 税种 //
				var gjc = $('.gjcFGDetail').val();// 关键词 //
				var bz = $('.bzFGDetail').val();// 备注 //
				var fgqwFileNameTime = fgwh+extName;
				//alert(fgqwFileNameTime+"-->fgqwFileNameTime");
				if(fgwh=="")
				{
					alert("法规文号必须输入，否则不能保存");
					return false;//阻止模态框关闭
				}
				// else if(fgtw=="")
				// {
				// 	alert("法规条文必须输入，否则不能保存");
				// 	return false;
				// }
				// else if(fgqwFileNameTime=="")
				// {
				// 	alert("文件必须上传，否则不能保存");
				// 	return false;
				// }
				// else if(sydqn==null)
				// {
				// 	alert("适用地区必须选择，否则不能保存");
				// 	return false;
				// }
				// else if(sz==null)
				// {
				// 	alert("税种必须选择，否则不能保存");
				// 	return false;
				// }
				// else if(gjc=="")
				// {
				// 	alert("关键词必须输入，否则不能保存");
				// 	return false;
				// }
				else
				{
					addFlag = true;
				}

				if(addFlag)
				{
					addFagui(fgwh,fgtw,sydq,sz,gjc,bz,zh,fgqwFileNameTime,companyName,usertype);
				}
			});



			/////////////////////////增加法规结束///////////////////////////////////////

			/////////////////////////增加案例开始/////////////////////
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddAnli').click(function(){
				var bt = "";/* 标题*/
				if($('#collapseOne').hasClass('in'))
				{
					$('.anli input:first').addClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btDetail').val();
					$('.addAnlizt').append(bt+";");
				}
				if($('#collapseTwo').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').addClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btyyDetail').val();/* 标题*/
					$('.addyyal').append(bt+";");
				}
				if($('#collapseThree').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').addClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btqyDetail').val();/* 标题*/
					$('.addqyal').append(bt+";");
				}
				if($('#collapse4').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').addClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.bttdzzDetail').val();/* 标题*/
					$('.addtdzzal').append(bt+";");
				}
				if($('#collapse5').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').addClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btzzDetail').val();/* 标题*/
					$('.addzzal').append(bt+";");
				}
				if($('#collapse6').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').addClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btqDetail').val();/* 标题*/
					$('.addqal').append(bt+";");
				}
				if($('#collapse7').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').addClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btgrsdDetail').val();/* 标题*/
					$('.addgrsdal').append(bt+";");
				}
				if($('#collapse8').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').addClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.btfcDetail').val();/* 标题*/
					$('.addfcal').append(bt+";");
				}
				if($('#collapse9').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').addClass('bttdsyDetail');
					$('.anli input:first').removeClass('btyhDetail');

					bt = $('.bttdsyDetail').val();/* 标题*/
					$('.addtdsyal').append(bt+";");
				}
				if($('#collapse10').hasClass('in'))
				{
					$('.anli input:first').removeClass('btDetail');
					$('.anli input:first').removeClass('btyyDetail');
					$('.anli input:first').removeClass('btqyDetail');
					$('.anli input:first').removeClass('bttdzzDetail');
					$('.anli input:first').removeClass('btzzDetail');
					$('.anli input:first').removeClass('btqDetail');
					$('.anli input:first').removeClass('btgrsdDetail');
					$('.anli input:first').removeClass('btfcDetail');
					$('.anli input:first').removeClass('bttdsyDetail');
					$('.anli input:first').addClass('btyhDetail');

					bt = $('.btyhDetail').val();/* 标题*/
					$('.addyhal').append(bt+";");
				}

				//$('.addAnlizt').append(bt+";");
				var al = $('.alDetail').val();/* 案例 */
				//var sydq = $('.sydq').val();/* 适用地区 */
				var sydqn = $('.sydq_addDetail').val();
				var sydq = new String(sydqn);

				//var sz = $('input:radio:checked').val();/* 税种 */
				var szn = $('.szDetail').val();
				var sz = new String(szn);

				var gjc = $('.gjcDetail').val();/* 关键词 */
				var bz = $('.bzDetail').val();/* 备注 */

				if(bt=="")
				{
					alert("标题必须输入，否则不能保存");
					return false;
				}
// 				else if(al=="")
// 				{
// 					alert("案例必须输入，否则不能保存");
// 					return false;
// 				}
// 				else if(gjc=="")
// 				{
// 					alert("关键词必须输入，否则不能保存");
// 					return false;
// 				}
// 				else if(szn==null)
// 				{
// 					alert("税种必须选择，否则不能保存");
// 					return false;
// 				}
// 				else if(sydqn==null)
// 				{
// 					alert("适用地区必须选择，否则不能保存");
// 					return false;
// 				}
				else
				{
					addFlag = true;
				}

				if(addFlag)
				{
					addAnli(bt,al,sydq,sz,gjc,bz,zh,companyName,usertype);
				}

				/* 将单选按钮的样式去除掉，选中状态也去除掉 */
				//$('select').val("");
				 //$('.sz>option').removeClass("active");
			});
			/////////////////////////增加案例结束///////////////////////////////
			var nodeLen = <%=nodeLen%>;
			var yiji = '<%=nodeList.get(0).getYijinode()%>';
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
			var addFlag = false;//用于看是否可以进行增加操作
			$('#confirmAddHt').click(function(){
				var erji = "<%=nodeList.get(0).getErjinode().split("，")[0]%>";
				for(var i=1;i<=nodeLen;i++)
				{   var erjiClass = "erji_add_"+i;

					if($('.'+erjiClass).css('display')=="block")
					{
						erji = $('.'+erjiClass).val();
						break;
					}
				}

				var htlx = $('.htlx').val();
				var yaodian = $('.yaodian').val();
				var al = $('.addAnlizt').text();
				var gslx = $('input[name="options1_add"]:checked').val();/* 公司类型 */
				//var sydq = $('.sydq_add').val();
				//var sydqname = new String(sydq);
				var gjc = $('.gjc_add').val();
				var bz = $('.bz_add').val();
				if(htlx=="")
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
				var yy_al = $('.addyyal').text();
				var yy_wq = $('.yy_wq').val();
				var yy_fx = $('.yy_fx').val();
				var yy_fg = $('.addyyfg').text();
				////////////2企业所得税//////////////
				var qy_chd1 = $('.qy_chd1').val();
				var qy_tj1 = $('.qy_tj1').val();
				var qy_chd2 = $('.qy_chd2').val();
				var qy_tj2 = $('.qy_tj2').val();
				var qy_chd3 = $('.qy_chd3').val();
				var qy_tj3 = $('.qy_tj3').val();
				var qy_al = $('.addqyal').text();
				var qy_wq = $('.qy_wq').val();
				var qy_fx = $('.qy_fx').val();
				var qy_fg = $('.addqyfg').text();
				/////////////3土地增值税////////////
				var tdzz_chd1 = $('.tdzz_chd1').val();
				var tdzz_tj1 = $('.tdzz_tj1').val();
				var tdzz_chd2 = $('.tdzz_chd2').val();
				var tdzz_tj2 = $('.tdzz_tj2').val();
				var tdzz_chd3 = $('.tdzz_chd3').val();
				var tdzz_tj3 = $('.tdzz_tj3').val();
				var tdzz_al = $('.addtdzzal').text();
				var tdzz_wq = $('.tdzz_wq').val();
				var tdzz_fx = $('.tdzz_fx').val();
				var tdzz_fg = $('.addtdzzfg').text();
				///////////4增值税/////////////////////
				var zz_chd1 = $('.zz_chd1').val();
				var zz_tj1 = $('.zz_tj1').val();
				var zz_chd2 = $('.zz_chd2').val();
				var zz_tj2 = $('.zz_tj2').val();
				var zz_chd3 = $('.zz_chd3').val();
				var zz_tj3 = $('.zz_tj3').val();
				var zz_al = $('.addzzal').text();
				var zz_wq = $('.zz_wq').val();
				var zz_fx = $('.zz_fx').val();
				var zz_fg = $('.addzzfg').text();
				/////////////5契税/////////////////
				var q_chd1 = $('.q_chd1').val();
				var q_tj1 = $('.q_tj1').val();
				var q_chd2 = $('.q_chd2').val();
				var q_tj2 = $('.q_tj2').val();
				var q_chd3 = $('.q_chd3').val();
				var q_tj3 = $('.q_tj3').val();
				var q_al = $('.addqal').text();
				var q_wq = $('.q_wq').val();
				var q_fx = $('.q_fx').val();
				var q_fg = $('.addqfg').text();
				///////////6个人所得税/////////////////
				var grsd_chd1 = $('.grsd_chd1').val();
				var grsd_tj1 = $('.grsd_tj1').val();
				var grsd_chd2 = $('.grsd_chd2').val();
				var grsd_tj2 = $('.grsd_tj2').val();
				var grsd_chd3 = $('.grsd_chd3').val();
				var grsd_tj3 = $('.grsd_tj3').val();
				var grsd_al = $('.addgrsdal').text();
				var grsd_wq = $('.grsd_wq').val();
				var grsd_fx = $('.grsd_fx').val();
				var grsd_fg = $('.addgrsdfg').text();
				///////////7房产税/////////////////
				var fc_chd1 = $('.fc_chd1').val();
				var fc_tj1 = $('.fc_tj1').val();
				var fc_chd2 = $('.fc_chd2').val();
				var fc_tj2 = $('.fc_tj2').val();
				var fc_chd3 = $('.fc_chd3').val();
				var fc_tj3 = $('.fc_tj3').val();
				var fc_al = $('.addfcal').text();
				var fc_wq = $('.fc_wq').val();
				var fc_fx = $('.fc_fx').val();
				var fc_fg = $('.addfcfg').text();
				///////////8土地使用税//////////////
				var tdsy_chd1 = $('.tdsy_chd1').val();
				var tdsy_tj1 = $('.tdsy_tj1').val();
				var tdsy_chd2 = $('.tdsy_chd2').val();
				var tdsy_tj2 = $('.tdsy_tj2').val();
				var tdsy_chd3 = $('.tdsy_chd3').val();
				var tdsy_tj3 = $('.tdsy_tj3').val();
				var tdsy_al = $('.addtdsyal').text();
				var tdsy_wq = $('.tdsy_wq').val();
				var tdsy_fx = $('.tdsy_fx').val();
				var tdsy_fg = $('.addtdsyfg').text();
				///////////9印花税///////////////
				var yh_chd1 = $('.yh_chd1').val();
				var yh_tj1 = $('.yh_tj1').val();
				var yh_chd2 = $('.yh_chd2').val();
				var yh_tj2 = $('.yh_tj2').val();
				var yh_chd3 = $('.yh_chd3').val();
				var yh_tj3 = $('.yh_tj3').val();
				var yh_al = $('.addyhal').text();
				var yh_wq = $('.yh_wq').val();
				var yh_fx = $('.yh_fx').val();
				var yh_fg = $('.addyhfg').text();


				addHt(yiji,erji,htlx,yaodian,gslx,gjc,bz,al,zh,companyName,usertype,
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
