<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% 
	String path1 = request.getContextPath(); 
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";%>
<!doctype html>
<html>
  <head><link rel="shortcut icon" href="<%=basePath%>imgs/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>案例库</title>
    <link href="<%=path1 %>/bootstrap-3.2.0/css/bootstrap.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/anliku/anliku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/faguiku/faguiku.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/taxType/taxType.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/ht/ht.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path1 %>/css/search/search.css"/>
  </head>
  
  <body>
  	<div class="container">
    	<!-- 导航条界面开始 -->
		<%@ include file="../../pages/common/searchNavbar.jsp" %>
		<!-- 导航条界面结束 -->
        <div class="row" style="margin-top: -10px;">
            	<div id="allAnli_table_body" class="row allFaGui_table_body allTaxType_table_body allJcs_table_body allHt_table_body" >
            			<!-- Ajax填充 -->
            			<h3 style="font-family: 微软雅黑" class="text-center">点击相应模块进行搜索</h3>
            		<table class="systemTable">
            			<tr>
            				<td><a  data-toggle="modal" href="#SShtModal" class="htbtn"><img src="<%=path1%>/imgs/systemSelect/ht.png"></a></td>
            				<td><a  data-toggle="modal" href="#SSjcsModal" class="jcsbtn"><img src="<%=path1%>/imgs/systemSelect/jc.png"></a></td>
            			</tr>
            			<tr>
            				<td><a  data-toggle="modal" href="#SSszModal" class="szbtn"><img src="<%=path1%>/imgs/systemSelect/sf.png"></a></td>
            				<td><a  data-toggle="modal" href="#SSanliModal" class="albtn"><img src="<%=path1%>/imgs/systemSelect/al.png"></a></td>
            			</tr>
            			
            			<tr>
            				<td><a  data-toggle="modal" href="#SSfaguiModal" class="fgbtn"><img src="<%=path1%>/imgs/systemSelect/fg.png"></a></td>
            				<td></td>
            			</tr>
            			<tr height="50px;">
            				<td></td>
            				<td></td>
            			</tr>
            			<tr>
            				<td colspan="2" style="height: 90px;"><a  data-toggle="modal" href="#SSgjcModal" class="btn ssbtn" style="width:90%;height:100%;background-color: #3A5897"><span class="glyphicon glyphicon-search" style="font-size: 25px;color:white"></span><br><font style="font-size: 20px;font-family: 微软雅黑;color:white">直接搜索</font></a></td>
            			</tr>
            			
            		</table>
            		
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
     	
     		<!-- 搜索关键词modal开始 -->
			<div class="modal fade" id="SSgjcModal" tabindex="-1" role="dialog" aria-labelledby="sousuoModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="sousuoModalLabel">搜索</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="anli">
						      		<dl>
									   <dt class="text-center">关键词</dt>
									   <dd><input type="text" class="form-control gjcsousuo"></dd>
									</dl>
									
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmSousuoGJC" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuoGJC" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索关键词modal结束 -->
     		
     		<!-- 搜索HTmodal开始 -->
			<div class="modal fade" id="SShtModal" tabindex="-1" role="dialog" aria-labelledby="htModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="htModalLabel">搜索合同控税数据</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="ht">
						      		<dl class="dl-horizontal">
						      		  <dt>关键词</dt>
									  <dd><input type="text" class="form-control htgjcsousuo" value=""></dd>
									  
									  <dt>公司类型</dt>
									  <dd>
									  	<div class="btn-group htgslx" data-toggle="buttons">
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
									  
									  <dt>合同类型</dt>
									  <dd><textarea class="form-control htlxsousuo"></textarea></dd>
									  <dt>要点</dt>
									  <dd><textarea class="form-control htyaodiansousuo"></textarea></dd>
									  <dt>案例</dt>
									  <dd><textarea class="form-control htalsousuo"></textarea></dd>
									  <!-- <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p> -->
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoHTConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuoHT" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索合同modal结束 -->
     	
     		<!-- 搜索JCSmodal开始 -->
			<div class="modal fade" id="SSjcsModal" tabindex="-1" role="dialog" aria-labelledby="jcsModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="jcsModalLabel">搜索合同控税数据</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="ht">
						      		<dl class="dl-horizontal">
						      		  <dt>关键词</dt>
									  <dd><input type="text" class="form-control jcsgjcsousuo" value=""></dd>
									  
									  <dt>公司类型</dt>
									  <dd>
									  	<div class="btn-group jcsgslx" data-toggle="buttons">
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
									  <dd><textarea class="form-control jcsbiaotisousuo"></textarea></dd>
									  <dt>要点</dt>
									  <dd><textarea class="form-control jcsyaodiansousuo"></textarea></dd>
									  <dt>案例</dt>
									  <dd><textarea class="form-control jcsalsousuo"></textarea></dd>
									  <!-- <p class="help-block text-center">一定要注意：案例标题之间以英文分号“;”隔开</p> -->
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoJcsConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuoJCS" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索JCSmodal结束 -->
     	
     		<!-- 搜索税种modal开始 -->
			<div class="modal fade" id="SSszModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
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
									  <dd><input type="text" class="form-control szgjcsousuo" value=""></dd>
									  
									  <dt>公司类型</dt>
									  <dd>
									  	<div class="btn-group szgslx" data-toggle="buttons">
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
									  	<select multiple="multiple" class="form-control szsydq">
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
						        <button type="button" id="quxiaosousuoSZ" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索税种modal结束 -->
			
			<!-- 搜索案例modal开始 -->
			<div class="modal fade" id="SSanliModal" tabindex="-1" role="dialog" aria-labelledby="sousuoModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="sousuoModalLabel">搜索案例</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="anli">
						      		<dl class="dl-horizontal">
									   <dt>关键词</dt>
									  <dd><input type="text" class="form-control algjcsousuo"></dd>
									  
									  <dt>税种</dt>
									  <dd>
									  	<select multiple="multiple" class="form-control al_sousuo alsz" name="alname">
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
									  
									</dl>
									
									<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      		
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="confirmSousuoAnli" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuoAL" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索案例modal结束 -->
			
			<!-- 搜索法规modal开始 -->
			<div class="modal fade" id="SSfaguiModal" tabindex="-1" role="dialog" aria-labelledby="ruleModalLabel" aria-hidden="true"  data-backdrop="static">
				  <div class="modal-dialog modal-lg">
					    <div class="modal-content">
						      <div class="modal-header">
							        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							        <h4 class="modal-title" id="ruleModalLabel">搜索法规</h4>
						      </div>
						      
						      <div class="modal-body">
						      	<div class="rule">
						      		<dl class="dl-horizontal">
									  <dt>法规文号</dt>
									  <dd><input type="text" class="form-control fgwhsousuo" value=""></dd>
									  <dt>税种</dt>
									  <dd>
									  	<div class="btn-group fgszsousuo" data-toggle="buttons">
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="tdzz" autocomplete="off" value="土地增值税"> 土地增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="qysd" autocomplete="off" value="企业所得税"> 企业所得税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="yy" autocomplete="off" value="营业税及所得"> 营业税及所得
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="zz" autocomplete="off" value="增值税"> 增值税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="fc" autocomplete="off" value="房产税"> 房产税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s6" autocomplete="off" value="契税"> 契税
										  </label>
										  <label class="btn btn-primary">
										    <input type="radio" name="options" id="s7" autocomplete="off" value="个人所得税"> 个人所得税
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
									  <dd><input type="text" class="form-control fggjcsousuo" value=""></dd>
									</dl>
						      		
						      		<p class="help-block text-center">可以选中其一，单独搜索，也可以多条件联合搜索，若全不选，则为全文搜索</p>
						      	</div>
						      </div>
						      
						      <div class="modal-footer">
						      	<button type="button" id="sousuoRuleConfirm" class="btn btn-default btn-primary" data-dismiss="modal">开始搜索</button>
						        <button type="button" id="quxiaosousuoFG" class="btn btn-default" data-dismiss="modal">取消搜索</button>
						      </div>
						    </div>
				  </div>
			</div>
			<!-- 搜索法规modal结束 -->
			
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
	<script src="<%=path1 %>/js/anli.js"></script>
	<script src="<%=path1 %>/js/faguiku.js"></script>
	<script src="<%=path1 %>/js/taxtype.js"></script>
	<script src="<%=path1 %>/js/jcs.js"></script>
	<script src="<%=path1 %>/js/ht.js"></script>
	<script type="text/javascript" src="<%=path1 %>/js/bootstrap-paginator.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			////////////导航条//////////////
			$('.ssNav').hide();
			//////////////////////////////
			var servletpath = "/usr/share/tomcat/webapps/wbht/fileupload/";
			var zh = '<%=acountnumber %>';
			var companyName = '<%=companyName %>';
			var usertype = '<%=usertype %>';
			
			$('#confirmSousuoAnli').click(function(){
				//var sz_sousuo = $('input:radio:checked').val();/* 税种 */
				var szn_sousuo = $('.al_sousuo').val();
				var sz_sousuo = new String(szn_sousuo);
				var gjc_sousuo = $('.algjcsousuo').val();/* 关键词 */ 
				/* alert(szn_sousuo);
				alert(gjc_sousuo); */
				searchAnli(0,3,true,gjc_sousuo, sz_sousuo,zh,companyName,usertype);
				$('.ssNav').show();
				/* 将单选按钮的样式去除掉，选中状态也去除掉 */				
				$('select').val("");//去掉下拉框的选中状态和选中样式
				 //$('.sz>option').removeClass("selected");
				 $('.algjcsousuo').val("");
			});
			
			$('#quxiaosousuoAL').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('select').val("");
				 //$('.sz>label').removeClass("active");
				 $('.algjcsousuo').val("");
			});
			
			////////////////////////////////////
			$('#sousuoRuleConfirm').click(function(){
				var sz_sousuo = $('input:radio:checked').val();/* 税种 */
				var gjc_sousuo = $('.fggjcsousuo').val();/* 关键词 */
				var fgwh_sousuo = $('.fgwhsousuo').val();/* 关键词 */
				/* alert(sz_sousuo);
				alert(gjc_sousuo);
				alert(fgwh_sousuo); */
				loadAllFagui(0,3,true,gjc_sousuo,sz_sousuo,fgwh_sousuo,zh,companyName,usertype);
				$('.ssNav').show();
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.fgszsousuo>label').removeClass("active");
				 $('.fggjcsousuo').val("");
				 $('.fgwhsousuo').val("");
				 
			});
			
			$('#quxiaosousuoFg').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.fgszsousuo>label').removeClass("active");
				 $('.fggjcsousuo').val("");
				 $('.fgwhsousuo').val("");
			});
			////////////////////////////////
			
			var table = "landtax"; 
			
			$('#sousuoSZConfirm').click(function(){
				var gjc = $('.szgjcsousuo').val();
				var gslx = $('input[name="options1"]:checked').val();/* 公司类型 */
				//var sydq = $('.sydq').val();
				var sydq = $('.szsydq').val();
				var sydqn = new String(sydq);
				var sz = $('input[name="options"]:checked').val();/* 税种 */
				/* alert(gjc);
				alert(gslx);
				alert(sydq);
				alert(sz); */
				loadTaxType(0,3,true,sz, sydqn, gjc, gslx,table,zh,companyName,usertype);
				$('.ssNav').show();
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.szgslx>label').removeClass("active");
				 $('.sz>label').removeClass("active");
				 $('.szgjcsousuo').val("");
				 $('.szsydq').val("");
				 
			});
			
			$('#quxiaosousuoSZ').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.szgslx>label').removeClass("active");
				 $('.sz>label').removeClass("active");
				 $('.szgjcsousuo').val("");
				 $('.szsydq').val("");
			});
			/////////////////////////////////
			
			$('#sousuoJcsConfirm').click(function(){
				var gjc = $('.jcsgjcsousuo').val();
				var gslx = $('input[name="options1"]:checked').val();/* 公司类型 */
				//var htlx = $('.htlxsousuo').val();
				var biaoti = $('.jcsbiaotisousuo').val();
				var yaodian = $('.jcsyaodiansousuo').val();
				var alsousuo = $('.jcsalsousuo').val();
				/* alert(gjc);
				alert(gslx);
				alert(biaoti);
				alert(yaodian);
				alert(alsousuo); */
				loadJcs(0,1,true, gjc, biaoti, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo);
				$('.ssNav').show();
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.jcsgslx>label').removeClass("active");
				 $('.jcsgjcjcssousuo').val("");
				 $('.jcsbiaotisousuo').val("");
				 $('.jcsyaodiansousuo').val("");
				 $('.jcsalsousuo').val("");
				 
			});
			
			$('#quxiaosousuoJCS').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.jcsgslx>label').removeClass("active");
				 $('.jcsgjcjcssousuo').val("");
				 $('.jcsbiaotisousuo').val("");
				 $('.jcsyaodiansousuo').val("");
				 $('.jcsalsousuo').val("");
			});
			/////////////////////////////////////
			
			$('#sousuoHTConfirm').click(function(){
				var gjc = $('.htgjcsousuo').val();
				var gslx = $('input[name="options1"]:checked').val();/* 公司类型 */
				var htlx = $('.htlxsousuo').val();
				var yaodian = $('.htyaodiansousuo').val();
				var alsousuo = $('.htalsousuo').val();
				/* alert(gjc);
				alert(gslx);
				alert(htlx);
				alert(yaodian);
				alert(alsousuo); */
				loadHt(0,1,true, gjc, htlx, yaodian, gslx,zh,companyName,usertype,servletpath,alsousuo);
				$('.ssNav').show();
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.htgslx>label').removeClass("active");
				 $('.htgjcsousuo').val("");
				 $('.htlxsousuo').val("");
				 $('.htyaodiansousuo').val("");
				 $('.htalsousuo').val("");
			});
			
			$('#quxiaosousuoHT').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('input').removeAttr("checked");
				 $('.htgslx>label').removeClass("active");
				 $('.htgjcsousuo').val("");
				 $('.htlxsousuo').val("");
				 $('.htyaodiansousuo').val("");
				 $('.htalsousuo').val("");
			});
			////////////////////////////////
			$('#confirmSousuoGJC').click(function(){
			var gjc = $('.gjcsousuo').val();
				window.location.href="<%=path1%>/pages/search/searchGJC.jsp?gjc="+gjc;
			});
			
			$('#quxiaosousuoGJC').click(function(){
				 /* 这里将单选按钮的选中状态和选中样式删掉 */
				 $('.gjcsousuo').val("");
			});
		});
	</script>
  </body>
</html>